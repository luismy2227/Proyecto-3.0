/*Procedimiento Agegar vehículo cliente*/
	CREATE OR REPLACE FUNCTION Funcion_Agregar_Vehiculo_Cliente(
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

		IN pd_fechaRegistro		DATE,
		IN pn_clientePertence	INTEGER,

		OUT pbOcurreErrorCliente 		BOOLEAN,
		OUT pcMensajeCliente			VARCHAR(2000)
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
			pbOcurreErrorCliente:=TRUE;
			temMensaje := '';

			--Comprobando que la pd_fechaRegistro no sea null:
			IF pd_fechaRegistro IS NULL THEN
				RAISE NOTICE 'la FECHA DE REGISTRO no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'fecha registro, ');
			END IF;

			--Comprobando que la pn_clientePertence no sea null:
			IF pn_clientePertence IS NULL THEN
				RAISE NOTICE 'id cliente no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'idCliente, ');
			END IF;

			IF temMensaje<>'' THEN
				pcMensajeCliente := CONCAT('Campos requeridos para poder realizar la matrícula:',temMensaje);
				RETURN;
			END IF;

			SELECT pbOcurreError,pcMensaje INTO vb_OcurreErrorVehiculo, vc_MensajeVehiculo
			FROM Funcion_Agregar_Vehiculo(pc_color,pc_placa,pc_anio,pc_generacion,pc_serie_vin,
			pn_tipoMotor,pn_idMarca,pn_idTransmision,pn_idTipoGasolina,pn_idGarage,pn_idCilindraje,pn_idModelo,pn_idVersion);
			
			-- Verificando que el proceso Agregar Vehiculo haya sido exitoso
			IF vb_OcurreErrorVehiculo = TRUE THEN
				pcMensajeCliente := vc_mensajeVehiculo;
				RETURN;
			END IF;

			-- Insertando:
			SELECT MAX(idVehiculoCliente) INTO auxiliarVehiculo FROM tbl_VehiculoCliente; -- Obteniendo el idVehiculo
			SELECT idVehiculo INTO auxiliarVehiculo2 FROM tbl_Vehiculo WHERE placa = pc_placa;
			INSERT INTO tbl_VehiculoCliente(idVehiculoCliente, fechaRegistro, idVehiculo, idClientePertenece)
			VALUES(auxiliarVehiculo+1, pd_fechaRegistro, auxiliarVehiculo2,pn_clientePertence);

			pcMensajeCliente := 'Vehiculo Cliente insertado con éxito';
			pbOcurreErrorCliente := FALSE;
			--COMMIT;
			RETURN;
		END;
	$BODY$
	LANGUAGE plpgsql VOLATILE
	COST 100;

/*
Probando la función:
	SELECT Funcion_Agregar_Vehiculo_Cliente('verde', '131315','2017-02-02','tercera generacion', 
								'a5as7sf4a54g5s7s5g',1800,1,1,1,1,1,1,1, '2017-02-02',1);
*/