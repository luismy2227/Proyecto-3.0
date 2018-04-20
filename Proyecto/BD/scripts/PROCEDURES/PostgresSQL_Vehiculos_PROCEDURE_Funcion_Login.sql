/*Procedimiento Login*/
	CREATE OR REPLACE FUNCTION Funcion_Login(
		IN pc_usuario VARCHAR(45),
		IN pc_userPassword VARCHAR(45),
		OUT pcMensaje VARCHAR(2000),
		OUT pbOcurreError BOOLEAN
	)
	RETURNS RECORD AS
	$BODY$
		DECLARE
			temMensaje VARCHAR(1000);
			vn_existeUsuario INTEGER DEFAULT 0;
			vn_existePassword INTEGER DEFAULT 0;

		BEGIN
			pbOcurreError:=TRUE;
			temMensaje := '';
			--Comprobando que el nombre de usuario no sea null:
			IF pc_usuario = '' OR pc_usuario IS NULL THEN
				RAISE NOTICE 'El nombre de usuario no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'usuario, ');
			END IF;

			--Comprobando que la contraseña no sea null:
			IF pc_userPassword = '' OR pc_userPassword IS NULL THEN
				RAISE NOTICE 'La contraseña no puede ser un campo vacío';
				temMensaje := CONCAT(temMensaje,'contraseña, ');
			END IF;

			IF temMensaje<>'' THEN
				pcMensaje := CONCAT('Campos requeridos para poder realizar la matrícula:',temMensaje);
				RETURN;
			END IF;

			SELECT COUNT(*) INTO vn_existeUsuario FROM tbl_Usuario
			WHERE nombreUsuario = pc_usuario;

			IF vn_existeUsuario = 0 THEN
				pcMensaje := CONCAT('No existe el usuario ',pc_usuario);
				RETURN;
			END IF;

			IF vn_existeUsuario = 1 THEN
				SELECT COUNT(*) INTO vn_existePassword FROM tbl_Usuario
				WHERE nombreUsuario = pc_usuario AND userPassword = pc_userPassword;

				IF vn_existePassword <> 1 THEN
					pcMensaje := 'Password incorrecta';
					RETURN;
				END IF;
			END IF;

			IF vn_existeUsuario = 1 AND vn_existePassword = 1 THEN
				pcMensaje := 'Usuario y contraseña correctos';
				pbOcurreError:=FALSE;
				RETURN;
			END IF;
		END;
	$BODY$
	LANGUAGE plpgsql VOLATILE
	COST 100;