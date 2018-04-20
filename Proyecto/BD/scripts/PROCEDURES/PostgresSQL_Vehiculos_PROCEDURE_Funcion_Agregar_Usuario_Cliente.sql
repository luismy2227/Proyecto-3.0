/*Procedimiento Agragar Persona*/
	CREATE OR REPLACE FUNCTION Funcion_Agregar_Usuario_Cliente(
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

		IN pc_nombreUsuario VARCHAR(45),
		IN pc_userPassword VARCHAR(45),
		IN pc_imagenRuta VARCHAR(45),

		IN pc_rtn VARCHAR(45),

		OUT pcMensajeCliente VARCHAR(45),
		OUT pbOcurreErrorCliente BOOLEAN
	)
	RETURNS RECORD AS
	$BODY$
		DECLARE
			contador INTEGER DEFAULT 0;
			temMensaje VARCHAR(2000);
			auxiliarUsuario INTEGER DEFAULT 0;
			auxiliarCliente INTEGER DEFAULT 0;
			auxiliarPersona INTEGER DEFAULT 0;
			vb_ocurreErrorPersona BOOLEAN;
			vc_mensajePersona VARCHAR(2000);
			vb_ocurreErrorUsuario BOOLEAN;
			vc_mensajeUsuario VARCHAR(2000);
		BEGIN
			pbOcurreErrorCliente:=TRUE;
			temMensaje := '';

			--Comprobando que el rtn  no sea null:
			IF pc_rtn = '' OR pc_rtn IS NULL THEN
				RAISE NOTICE 'El rtn no  puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje, 'rtn, ');
			END IF;

			IF temMensaje<>'' THEN
				pcMensajeCliente := CONCAT('Campos requeridos para poder realizar la matrícula:',temMensaje);
				RETURN;
			END IF;

			--Comprobando que el rtn no se duplique
			SELECT COUNT(*) INTO contador FROM tbl_Cliente WHERE  tbl_Cliente.rtn = pc_rtn;
	 		IF contador > 0 THEN
				RAISE NOTICE 'Valor unico en la tabla Cliente ya existe ( % )', pc_rtn;
				pcMensajeCliente := 'El rtn "'|| pc_rtn ||'" ya existe';
				RETURN;
			END IF;

			-- Utilizando el procedimiento Funcion_Agregar_Persona:
			SELECT pbOcurreError INTO vb_ocurreErrorPersona 
			FROM Funcion_Agregar_Persona(pc_identidad, pc_primerNombre, pc_segundoNombre, pc_primerApellido, pc_segundoApellido, 
			pc_telefono, pc_correoElectronico, pc_departamento, pc_municipio, pc_colonia, pc_sector, pc_numeroCasa,pn_genero);

			-- Verificando que el proceso Agregar Persona haya sido exitoso
			IF vb_ocurreErrorPersona = TRUE THEN
				pcMensajeCliente := vc_mensajePersona;
				RETURN;
			END IF;
			
			SELECT pbOcurreError INTO vb_ocurreErrorUsuario 
			FROM Funcion_Agregar_Usuario(pc_nombreUsuario, pc_userPassword,pc_imagenRuta);

			-- Verificando que el proceso Agregar Usuario haya sido exitoso
			IF vb_ocurreErrorUsuario = TRUE THEN
				pcMensajeCliente := vc_mensajeUsuario;
				RETURN;
			END IF;

			-- Insertando cliente
			SELECT COUNT(*) INTO auxiliarCliente FROM tbl_Cliente; -- Obtener el id de cliente
			SELECT idPersona INTO auxiliarPersona FROM tbl_Persona WHERE tbl_Persona.identidad = pc_identidad; -- Obtener el id de Persona
			INSERT INTO tbl_Cliente (idCliente, rtn, idPersona, idUsuario)
			VALUES (auxiliarCliente+1, pc_rtn, auxiliarPersona, auxiliarUsuario+1);

			pcMensajeCliente := 'Usuario cliente insertado con éxito';
			pbOcurreErrorCliente := FALSE;
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