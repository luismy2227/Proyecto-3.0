/*Procedimiento Agegar vehículo*/
	CREATE OR REPLACE FUNCTION Funcion_Agregar_Vehiculo(
		IN pc_color				VARCHAR(45),
		IN pc_placa				VARCHAR(6),
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
			temMensaje VARCHAR(1000);
		BEGIN
			pbOcurreError:=TRUE;
			temMensaje := '';
			--Comprobando que el nombre de usuario no sea null:
			IF pc_usuario = '' OR pc_usuario IS NULL THEN
				RAISE NOTICE 'El nombre de usuario no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'usuario, ');
			END IF;
		END;
	$BODY$
	LANGUAGE plpgsql VOLATILE
	COST 100;