/*Procedimiento Agragar Persona*/
	CREATE OR REPLACE FUNCTION Funcion_Agregar_Persona(
		IN pc_identidad VARCHAR(45),
		IN pc_primerNombre VARCHAR(45),
		IN pc_segundoNombre VARCHAR(45), 
		IN pc_primerApellido VARCHAR(45), 
		IN pc_segundoApellido VARCHAR(45),
		IN pc_telefono VARCHAR(45),
		IN pc_correoElectronico VARCHAR(45),
		IN pc_departamento VARCHAR(45),
		IN pc_municipio VARCHAR(45),
		IN pc_colonia VARCHAR(45),
		IN pc_sector VARCHAR(45),
		IN pc_numeroCasa VARCHAR(45),
		IN pn_genero INTEGER,
		OUT pcMensaje VARCHAR(45),
		OUT pbOcurreError BOOLEAN
	)
	RETURNS RECORD AS
	$BODY$
		DECLARE
			contador INTEGER DEFAULT 0;
			auxiliarDireccion INTEGER DEFAULT 0;
			auxiliarPersona INTEGER DEFAULT 0;
			auxiliarTelefono INTEGER DEFAULT 0;
			auxiliarCorreo INTEGER DEFAULT 0;
			temMensaje VARCHAR(2000);

		BEGIN
			pbOcurreError:=TRUE;
			temMensaje := '';
			--Comprobando que la identidad no sea null:
			IF pc_identidad = '' OR pc_identidad IS NULL THEN
				RAISE NOTICE 'La identidad no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'identidad, ');
			END IF;
						
			--Comprobando que el primer nombre no sea null:
			IF pc_primerNombre = '' OR pc_primerNombre IS NULL THEN
				RAISE NOTICE 'El primer nombre no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'primer nombre, ');
			END IF;
			
			--Comprobando que el primer apellido no sea null:
			IF pc_primerApellido = '' OR pc_primerApellido IS NULL THEN
				RAISE NOTICE 'El primer apellido no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'primer apellido, ');
			END IF;
			
			--Comprobando que el telefono no sea null:
			IF pc_telefono = '' OR pc_telefono IS NULL THEN
				RAISE NOTICE 'El telefono no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'telefono, ');
			END IF;
			
			--Comprobando que el departamento  no sea null:
			IF pc_departamento = '' OR pc_departamento IS NULL THEN
				RAISE NOTICE 'El departamento no  puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'departamento, ');
			END IF;
			
			--Comprobando que el municipio  no sea null:
			IF  pc_municipio = '' OR pc_municipio IS NULL THEN
				RAISE NOTICE 'El municipio no  puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'municipio, ');
			END IF;
			
			--Comprobando que la colonia  no sea null:
			IF pc_colonia = '' OR pc_colonia IS NULL THEN
				RAISE NOTICE 'La colonia  no  puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'colonia, ');
			END IF;
			
			--Comprobando que el sector  no sea null:
			IF pc_sector = '' OR pc_sector IS NULL THEN
				RAISE NOTICE 'El sector no  puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'sector, ');
			END IF;
			
			--Comprobando que el numerocasa  no sea null:
			IF pc_numeroCasa = '' OR pc_numeroCasa IS NULL THEN
				RAISE NOTICE 'El numero casa no  puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'numero casa, ');
			END IF;

			IF temMensaje<>'' THEN
				pcMensaje := CONCAT('Campos requeridos para poder realizar la matrícula:',temMensaje);
				RETURN;
			END IF;
			
			--Comprobando que el genero no sea null ni incorrecto:
			IF (pn_genero = NULL OR pn_genero NOT IN (1,2)) THEN
				RAISE NOTICE 'El genero es incorrecto';
				pcMensaje := 'El genero es incorrecto';
				RETURN;
			END IF;

			--Comprobando que la identidad no se duplique
			SELECT COUNT(*) INTO contador FROM tbl_Persona WHERE  tbl_Persona.identidad = pc_identidad;
	 		IF contador > 0 THEN
				RAISE NOTICE 'Valor unico en la tabla Persona ya existe ( % )', pc_identidad;
				pcMensaje := 'El numero de telefono "'|| pc_identidad ||'" ya esta siendo utilizado';
				RETURN;
			END IF;

			--Comprobando que el telefono no se duplique
			SELECT COUNT(*) INTO contador FROM tbl_Telefono WHERE  tbl_Telefono.telefono = pc_telefono;
	 		IF contador > 0 THEN
				RAISE NOTICE 'Valor unico en la tabla Telefono ya existe ( % )', pc_telefono;
				pcMensaje := 'El numero de telefono "'|| pc_telefono ||'" ya esta siendo utilizado';
				RETURN;
			END IF;
				
				--Comprobando que el correo electronico  no se duplique
			SELECT COUNT(*) INTO contador FROM tbl_CorreoElectronico  WHERE  tbl_CorreoElectronico.correoElectronico = pc_correoElectronico;
	 		IF contador > 0 THEN
				RAISE NOTICE 'Valor unico en la tabla Correo Electronico ya existe ( % )', pc_correoElectronico;
				pcMensaje := 'El correo Electronico "'|| pc_correoElectronico ||'" ya esta siendo utilizado';
				RETURN;
			END IF;
			
			--Insertando la direccion:
			SELECT COUNT(*) INTO auxiliarDireccion FROM tbl_Direccion; --Obtener el idDireccion
			INSERT INTO tbl_Direccion(idDireccion, departamento, municipio, colonia, sector, numeroCasa)
			VALUES(auxiliarDireccion+1, pc_departamento, pc_municipio, pc_colonia, pc_sector, pc_numeroCasa);
			
			--Insertando persona:
			SELECT COUNT(*) INTO auxiliarPersona FROM tbl_Persona; --Obtener el idPersona 
			INSERT INTO tbl_Persona(idPersona, identidad, primerNombre, segundoNombre, primerApellido, segundoApellido, idDireccion, idGenero)
			VALUES(auxiliarPersona+1,pc_identidad,pc_primerNombre,pc_segundoNombre,pc_primerApellido,pc_segundoApellido, auxiliarDireccion+1, pn_genero);
			
			--Insertando telefono:
			SELECT COUNT(*) INTO auxiliarTelefono FROM tbl_Telefono; --Obtener el idTelefono
			INSERT INTO tbl_Telefono(idTelefono, telefono, idPersona)
			VALUES(auxiliarTelefono+1, pc_telefono, auxiliarPersona+1);
			
			--Insertando correo:
			SELECT COUNT(*) INTO auxiliarCorreo FROM tbl_CorreoElectronico; --Obtener el idCorreo
			INSERT INTO tbl_CorreoElectronico(idCorreoElectronico, correoElectronico, idPersona)
			VALUES(auxiliarCorreo+1, pc_correoElectronico, auxiliarPersona+1);
			
			pcMensaje := 'Persona insertada con éxito';
			pbOcurreError := FALSE;
			COMMIT;
			RETURN;
		END;
	$BODY$
	LANGUAGE plpgsql VOLATILE
	COST 100;

/*Prueba de la función:
	SELECT Funcion_Agregar_Persona('0801199707679', 'Marcos', 'Miguel', 'Andino', 'Andrade', 
	'96068545', 'luismy2227@gmail.com', 'Francisco Morazán', 'DC', 'Centro América', 'Sector 2', 'Casa 4',2);
*/