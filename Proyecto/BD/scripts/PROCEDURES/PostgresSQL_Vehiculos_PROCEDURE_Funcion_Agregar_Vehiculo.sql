/*Procedimiento Agegar vehículo*/
	CREATE OR REPLACE FUNCTION Funcion_Agregar_Vehiculo(
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

		OUT pbOcurreError 		BOOLEAN,
		OUT pcMensaje			VARCHAR(2000)
	)
	RETURNS RECORD AS
	$BODY$
		DECLARE
			temMensaje 			VARCHAR(1000);
			contador   			INTEGER DEFAULT 0;
			auxiliarVehiculo   	INTEGER DEFAULT 0;
		BEGIN
			pbOcurreError:=TRUE;
			temMensaje := '';

			--Comprobando que el color no sea null:
			IF pc_color = '' OR pc_color IS NULL THEN
				RAISE NOTICE 'El color no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'color, ');
			END IF;

			--Comprobando que la placa no sea null:
			IF pc_placa = '' OR pc_placa IS NULL THEN
				RAISE NOTICE 'La placa no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'placa, ');
			END IF;

			--Comprobando que EL AÑO no sea null:
			IF pc_anio IS NULL THEN
				RAISE NOTICE 'El año no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'año, ');
			END IF;

			--Comprobando que la serie no sea null:
			IF pc_serie_vin = '' OR pc_serie_vin IS NULL THEN
				RAISE NOTICE 'La serie no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'serie, ');
			END IF;

			--Comprobando que el tipo de motor no sea null:
			IF pn_tipoMotor IS NULL THEN
				RAISE NOTICE 'El tamaño del motor no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'tipoMotor, ');
			END IF;

			--Comprobando que la marca no sea null:
			IF pn_idMarca IS NULL THEN
				RAISE NOTICE 'El marca no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'marca, ');
			END IF;

			--Comprobando que la transmision no sea null:
			IF pn_idTransmision IS NULL THEN
				RAISE NOTICE 'La transmision no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'transmision, ');
			END IF;

			--Comprobando que la gasolina no sea null:
			IF pn_idTipoGasolina IS NULL THEN
				RAISE NOTICE 'La gasolina no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'gasolina, ');
			END IF;

			--Comprobando que el garage no sea null:
			IF pn_idGarage IS NULL THEN
				RAISE NOTICE 'El garage no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'garage, ');
			END IF;

			--Comprobando que el cilindraje no sea null:
			IF pn_idCilindraje IS NULL THEN
				RAISE NOTICE 'El cilindraje no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'cilindraje, ');
			END IF;

			--Comprobando que el modelo no sea null:
			IF pn_idModelo IS NULL THEN
				RAISE NOTICE 'El modelo no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'modelo, ');
			END IF;

			--Comprobando que la version no sea null:
			IF pn_idVersion IS NULL THEN
				RAISE NOTICE 'la version no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'version, ');
			END IF;

			IF temMensaje<>'' THEN
				pcMensaje := CONCAT('Campos requeridos para poder realizar la matrícula:',temMensaje);
				RETURN;
			END IF;

			--Comprobando que la placa no se duplique
			SELECT COUNT(*) INTO contador FROM tbl_Vehiculo WHERE  tbl_Vehiculo.placa = pc_placa;
	 		IF contador > 0 THEN
				RAISE NOTICE 'Valor unico en la tabla Vehiculo ya existe ( % )', pc_placa;
				pcMensaje := 'La placa "'|| pc_placa ||'" ya existe';
				RETURN;
			END IF;

			-- Comprobando que la serie no se duplique
			SELECT COUNT(*) INTO contador FROM tbl_Vehiculo WHERE  tbl_Vehiculo.serie_vin = pc_serie_vin;
	 		IF contador > 0 THEN
				RAISE NOTICE 'Valor unico en la tabla Vehiculo ya existe ( % )', pc_serie_vin;
				pcMensaje := 'La serie "'|| pc_serie_vin ||'" ya existe';
				RETURN;
			END IF;
			
			-- Insertando:
			SELECT MAX(idVehiculo) INTO auxiliarVehiculo FROM tbl_Vehiculo; -- Obteniendo el idVehiculo
			INSERT INTO tbl_Vehiculo(idVehiculo, color, placa, anio,generacion, serie_vin, tipoMotor, idMarca, 
			idTransmision, idTipoGasolina, idGarage, idCilindraje, idModelo, idVersion)
			VALUES(auxiliarVehiculo+1, pc_color, pc_placa, pc_anio,pc_generacion, pc_serie_vin, pn_tipoMotor, pn_idMarca, 
			pn_idTransmision, pn_idTipoGasolina, pn_idGarage, pn_idCilindraje, pn_idModelo, pn_idVersion);

			pcMensaje := 'Vehiculo insertado con éxito';
			pbOcurreError := FALSE;
			--COMMIT;
			RETURN;
		END;
	$BODY$
	LANGUAGE plpgsql VOLATILE
	COST 100;

/*
Probando la función:
	SELECT Funcion_Agregar_Vehiculo('verde', 's5f7s5','2017-02-02','tercera generacion', 'a5as7sf4a54g5sg7s5g',1800,1,1,1,1,1,1,1);
*/