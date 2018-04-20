/*Procedimiento Agegar vehículo empresa*/
	CREATE OR REPLACE FUNCTION Funcion_Agregar_Vehiculo_Empresa(
		IN pc_color				VARCHAR(45),
		IN pc_placa				VARCHAR(8),
		IN pc_anio				DATE,
		IN pc_generacion		VARCHAR(45),
		IN pc_serie_vin			VARCHAR(45),
		IN pn_tipoMotor 		DECIMAL(10,2),
		IN pn_idMarca 			INTEGER,
		IN pn_idTransmision		INTEGER,
		IN pn_idTipoGasolina	INTEGER,
		IN pn_idGarage			INTEGER,
		IN pn_idCilindraje		INTEGER,
		IN pn_idModelo			INTEGER,
		IN pn_idVersion			INTEGER,

		IN pd_fechaAdquisicion	DATE,
		IN pn_idSeguro			INTEGER,
		IN pn_idEstado			INTEGER,
		IN pn_precioVenta		DECIMAL(10,2),
		IN pn_precioRenta		DECIMAL(10,2),
		IN pb_seVende			BOOLEAN,
		IN pb_seRenta			BOOLEAN,
		IN pc_estadoMatricula	VARCHAR(1),
		IN pn_montoMatricula	DECIMAL(10,2),

		OUT pbOcurreErrorEmpresa 		BOOLEAN,
		OUT pcMensajeEmpresa			VARCHAR(2000)
	)
	RETURNS RECORD AS
	$BODY$
		DECLARE
			temMensaje 			VARCHAR(1000);
			contador   			INTEGER DEFAULT 0;
			auxiliarVehiculo   	INTEGER DEFAULT 0;
			auxiliarVehiculo2   	INTEGER DEFAULT 0;
			vb_OcurreErrorVehiculo	BOOLEAN;
			vc_MensajeVehiculo		VARCHAR(2000);
		BEGIN
			pbOcurreErrorEmpresa:=TRUE;
			temMensaje := '';

			--Comprobando que la pd_fechaAdquisicion no sea null:
			IF pd_fechaAdquisicion IS NULL THEN
				RAISE NOTICE 'la FECHA DE ADQUISICION no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'fecha adquisicion, ');
			END IF;

			--Comprobando que la pn_idSeguro no sea null:
			IF pn_idSeguro IS NULL THEN
				RAISE NOTICE 'id seguro no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'idSeguro, ');
			END IF;

			--Comprobando que la pn_idEstado no sea null:
			IF pn_idEstado IS NULL THEN
				RAISE NOTICE 'id estado no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'idEstado, ');
			END IF;

			--Comprobando que la pn_precioVenta no sea null:
			IF pn_precioVenta IS NULL THEN
				RAISE NOTICE 'precioVenta no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'precioVenta, ');
			END IF;

			--Comprobando que la pn_precioRenta no sea null:
			IF pn_precioRenta IS NULL THEN
				RAISE NOTICE 'precioRenta no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'precioRenta, ');
			END IF;

			--Comprobando que la pb_seVende no sea null:
			IF pb_seVende IS NULL THEN
				RAISE NOTICE 'seVende no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'seVende, ');
			END IF;

			--Comprobando que la pb_seRenta no sea null:
			IF pb_seRenta IS NULL THEN
				RAISE NOTICE 'seRenta no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'seRenta, ');
			END IF;

			--Comprobando que la pc_estadoMatricula no sea null:
			IF pc_estadoMatricula IS NULL THEN
				RAISE NOTICE 'estadoMatricula no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'estadoMatricula, ');
			END IF;

			--Comprobando que la pn_montoMatricula no sea null:
			IF pn_montoMatricula IS NULL THEN
				RAISE NOTICE 'montoMatricula no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'montoMatricula, ');
			END IF;

			IF temMensaje<>'' THEN
				pcMensajeEmpresa := CONCAT('Campos requeridos para poder realizar la matrícula:',temMensaje);
				RETURN;
			END IF;

			SELECT pbOcurreError,pcMensaje INTO vb_OcurreErrorVehiculo, vc_MensajeVehiculo
			FROM Funcion_Agregar_Vehiculo(pc_color,pc_placa,pc_anio,pc_generacion,pc_serie_vin,
			pn_tipoMotor,pn_idMarca,pn_idTransmision,pn_idTipoGasolina,pn_idGarage,pn_idCilindraje,pn_idModelo,pn_idVersion);
			
			-- Verificando que el proceso Agregar Vehiculo haya sido exitoso
			IF vb_OcurreErrorVehiculo = TRUE THEN
				pcMensajeEmpresa := vc_mensajeVehiculo;
				RETURN;
			END IF;

			-- Insertando:
			SELECT MAX(idVehiculoEmpresa) INTO auxiliarVehiculo FROM tbl_VehiculoEmpresa; -- Obteniendo el idVehiculo
			SELECT idVehiculo INTO auxiliarVehiculo2 FROM tbl_Vehiculo WHERE placa = pc_placa;
			INSERT INTO tbl_VehiculoEmpresa(idVehiculoEmpresa, fechaAdquisicion, idVehiculo, idSeguro, idEstado, 
			precioVenta, precioRentaHora, seVende, seRenta, estadoMatricula, montoMatricula)
			VALUES(auxiliarVehiculo+1, pd_fechaAdquisicion, auxiliarVehiculo2,pn_idSeguro, pn_idEstado, 
			pn_precioVenta, pn_precioRenta, pb_seVende, pb_seRenta, pc_estadoMatricula, pn_montoMatricula);

			pcMensajeEmpresa := 'Vehiculo Empresa insertado con éxito';
			pbOcurreErrorEmpresa := FALSE;
			--COMMIT;
			RETURN;
		END;
	$BODY$
	LANGUAGE plpgsql VOLATILE
	COST 100;

/*
Probando la función:
	SELECT Funcion_Agregar_Vehiculo_Empresa('verde', 'a1fsf','2017-02-02','tercera generacion', 
	'a1g1s4gs2g45s2g2s',1800,1,1,1,1,1,1,1, '2017-02-02',1,1,600000,0,TRUE,FALSE,'P', 20000)S
*/