/*Creación de Tablas*/
	/*Módulo de Personas*/
		/*Tabla Telefono*/
      CREATE TABLE tbl_Direccion(
        idDireccion INTEGER NOT NULL,
        departamento VARCHAR(45) NOT NULL,
        municipio VARCHAR(45) NOT NULL,
        colonia VARCHAR(45) NOT NULL,
        sector VARCHAR(45) NOT NULL,
        numeroCasa VARCHAR(45) NOT NULL,
        CONSTRAINT Pk_Direccion_idDireccion PRIMARY KEY (idDireccion)
      );

    /*Tabla Genero*/
      CREATE TABLE tbl_Genero(
        idGenero INTEGER NOT NULL,
        descripcion VARCHAR(45) NOT NULL,
        CONSTRAINT Pk_Genero_idGenero PRIMARY KEY (idGenero)
      );

      /*Tabla Persona*/
        CREATE TABLE tbl_Persona(
          idPersona INTEGER NOT NULL,
          identidad VARCHAR(45) NOT NULL UNIQUE,
          primerNombre VARCHAR(45) NOT NULL,
          segundoNombre VARCHAR(45) NULL,
          primerApellido VARCHAR(45) NOT NULL,
          segundoApellido VARCHAR(45) NULL,
          idDireccion INTEGER NOT NULL,
          idGenero INTEGER NOT NULL,
          CONSTRAINT Pk_Persona_idPersona PRIMARY KEY (idPersona),
          CONSTRAINT Fk_Genero_idGenero FOREIGN KEY (idGenero) REFERENCES tbl_Genero (idGenero)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION,
          CONSTRAINT Fk_Direccion_idDireccion FOREIGN KEY (idDireccion) REFERENCES tbl_Direccion (idDireccion)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION
        );

      /*Tabla Telefono*/
        CREATE TABLE tbl_Telefono(
          idTelefono INTEGER NOT NULL,
          telefono VARCHAR(45) NOT NULL UNIQUE,
          idPersona INTEGER NOT NULL,
          CONSTRAINT Pk_Telefono_idTelefono PRIMARY KEY (idTelefono),
          CONSTRAINT Fk_Persona_idPersona FOREIGN KEY (idPersona) REFERENCES tbl_Persona (idPersona)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION
        );

      /*Tabla CorreoElectronico*/
        CREATE TABLE tbl_CorreoElectronico(
          idCorreoElectronico INTEGER NOT NULL,
          correoElectronico VARCHAR(45) NOT NULL UNIQUE,
          idPersona INTEGER NOT NULL,
          CONSTRAINT Pk_CorreoElectronico_idCorreoElectronico PRIMARY KEY (idCorreoElectronico),
          CONSTRAINT Fk_Persona_idPersona FOREIGN KEY (idPersona) REFERENCES tbl_Persona (idPersona)
          ON DELETE NO ACTION
          ON UPDATE NO ACTION
        );

      /*Tabla Cargo*/
        CREATE TABLE tbl_Cargo(
          idCargo INTEGER NOT NULL,
          descripcion VARCHAR(45) NOT NULL,
          CONSTRAINT Pk_Cargo_idCargo PRIMARY KEY (idCargo)
        );

        /*Tabla Usuario*/
          CREATE TABLE tbl_Usuario(
            idUsuario INTEGER NOT NULL,
            nombreUsuario VARCHAR(45) NOT NULL UNIQUE,
            userPassword VARCHAR(45) NOT NULL,
            imagenRuta VARCHAR(100) NOT NULL,
            CONSTRAINT Pk_Usuario_idUsuario PRIMARY KEY (idUsuario)
          );

        /*Tabla Cliente*/
          CREATE TABLE tbl_Cliente(
            idCliente INTEGER NOT NULL,
            rtn VARCHAR(45) NOT NULL UNIQUE,
            idPersona INTEGER NOT NULL,
            idUsuario INTEGER NOT NULL,
            CONSTRAINT Pk_Cliente_idCliente PRIMARY KEY (idCliente),
            CONSTRAINT Fk_Persona_idPersona FOREIGN KEY (idPersona) REFERENCES tbl_Persona (idPersona)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Usuario_idUsuario FOREIGN KEY (idUsuario) REFERENCES tbl_Usuario (idUsuario)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Empleado*/
          CREATE TABLE tbl_Empleado(
            idEmpleado INTEGER NOT NULL,
            fechaContratacion DATE NOT NULL,
            idPersona INTEGER NOT NULL,
            idCargo INTEGER NOT NULL,
            idUsuario INTEGER NOT NULL,
            idEmpleadoSuperior INTEGER NOT NULL,
            fechaPromocion DATE NOT NULL,
            CONSTRAINT Pk_Empleado_idEmpleado PRIMARY KEY (idEmpleado),
            CONSTRAINT Fk_Persona_idPersona FOREIGN KEY (idPersona) REFERENCES tbl_Persona (idPersona)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Cargo_idCargo FOREIGN KEY (idCargo) REFERENCES tbl_Cargo (idCargo)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Usuario_idUsuario FOREIGN KEY (idUsuario) REFERENCES tbl_Usuario (idUsuario)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Empleado_idEmpleadoSuperior FOREIGN KEY (idEmpleadoSuperior) REFERENCES tbl_Empleado (idEmpleado)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

      /*Módulo de Vehículos*/
        /*Tabla Marca*/
          CREATE TABLE tbl_Marca(
            idMarca INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            logoRuta VARCHAR(100) NOT NULL,
            CONSTRAINT Pk_Marca_idMarca PRIMARY KEY (idMarca)
          );

        /*Tabla Modelo*/
          CREATE TABLE tbl_Modelo(
            idModelo INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            idMarca INTEGER NOT NULL,
            CONSTRAINT Pk_Modelo_idModelo PRIMARY KEY (idModelo),
            CONSTRAINT Fk_Marca_idMarca FOREIGN KEY (idMarca) REFERENCES tbl_Marca (idMarca)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Version*/
          CREATE TABLE tbl_Version(
            idVersion INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            idModelo INTEGER NOT NULL,
            CONSTRAINT Pk_Version_idVersion PRIMARY KEY (idVersion),
            CONSTRAINT Fk_Modelo_idModelo FOREIGN KEY (idModelo) REFERENCES tbl_Modelo (idModelo)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Transmision*/
          CREATE TABLE tbl_Transmision(
            idTransmision INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            CONSTRAINT Pk_Transmision_idTransmision PRIMARY KEY (idTransmision)
          );

        /*Tabla TipoGasolina*/
          CREATE TABLE tbl_TipoGasolina(
            idTipoGasolina INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            CONSTRAINT Pk_TipoGasolina_idTipoGasolina PRIMARY KEY (idTipoGasolina)
          );

        /*Tabla Estado*/
          CREATE TABLE tbl_Estado(
            idEstado INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            CONSTRAINT Pk_Estado_idEstado PRIMARY KEY (idEstado)
          );

        /*Tabla Cilindraje*/
          CREATE TABLE tbl_Cilindraje(
            idCilindraje INTEGER NOT NULL,
            descripcion INTEGER NOT NULL,
            CONSTRAINT Pk_Cilindraje_idCilindraje PRIMARY KEY (idCilindraje)
          );

        /*Tabla Seguro*/
          CREATE TABLE tbl_Seguro(
            idSeguro INTEGER NOT NULL,
            estado VARCHAR(1) NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            montoAsegurado DECIMAL(10,2) NULL,
            fechaInicio DATE NULL,
            fechaFin DATE NULL,
            CONSTRAINT Pk_Seguro_idSeguro PRIMARY KEY (idSeguro)
          );

        /*Tabla Sucursal*/
          CREATE TABLE tbl_Sucursal(
            idSucursal INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            idDireccion INTEGER NOT NULL,
            CONSTRAINT Pk_Sucursal_idSucursal PRIMARY KEY (idSucursal),
            CONSTRAINT Fk_Direccion_idDireccion FOREIGN KEY (idDireccion) REFERENCES tbl_Direccion (idDireccion)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Garage*/
          CREATE TABLE tbl_Garage(
            idGarage INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            idSucursal INTEGER NOT NULL,
            CONSTRAINT Pk_Garage_idGarage PRIMARY KEY (idGarage),
            CONSTRAINT Fk_Sucursal_idSucursal FOREIGN KEY (idSucursal) REFERENCES tbl_Sucursal (idSucursal)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Vehiculo*/
          CREATE TABLE tbl_Vehiculo(
            idVehiculo INTEGER NOT NULL,
            color VARCHAR(45) NOT NULL,
            placa VARCHAR(8) NOT NULL,
            anio DATE NOT NULL,
            generacion VARCHAR(45) NULL,
            serie_vin VARCHAR(45) NOT NULL UNIQUE,
            tipoMotor DECIMAL(10,2) NOT NULL,
            idMarca INTEGER NOT NULL,
            idTransmision INTEGER NOT NULL,
            idTipoGasolina INTEGER NOT NULL,
            idGarage INTEGER NOT NULL,
            idCilindraje INTEGER NOT NULL,
            idModelo INTEGER NOT NULL,
            idVersion INTEGER NOT NULL,
            CONSTRAINT Pk_Vehiculo_idVehiculo PRIMARY KEY (idVehiculo),
            CONSTRAINT Fk_Marca_idMarca FOREIGN KEY (idMarca) REFERENCES tbl_Marca (idMarca)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Transmision_idTransmision FOREIGN KEY (idTransmision) REFERENCES tbl_Transmision (idTransmision)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_TipoGasolina_idTipoGasolina FOREIGN KEY (idTipoGasolina) REFERENCES tbl_TipoGasolina (idTipoGasolina)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Garage_idGarage FOREIGN KEY (idGarage) REFERENCES tbl_Garage (idGarage)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Cilindraje_idCilindraje FOREIGN KEY (idCilindraje) REFERENCES tbl_Cilindraje (idCilindraje)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Modelo_idModelo FOREIGN KEY (idModelo) REFERENCES tbl_Modelo (idModelo)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Version_idVersion FOREIGN KEY (idVersion) REFERENCES tbl_Version (idVersion)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla VehiculoCliente*/
          CREATE TABLE tbl_VehiculoCliente(
            idVehiculoCliente INTEGER NOT NULL,
            fechaRegistro DATE NOT NULL,
            idVehiculo INTEGER NOT NULL,
            idClientePertenece INTEGER NOT NULL,
            CONSTRAINT Pk_VehiculoCliente_idVehiculoCliente PRIMARY KEY (idVehiculoCliente),
            CONSTRAINT Fk_Vehiculo_idVehiculo FOREIGN KEY (idVehiculo) REFERENCES tbl_Vehiculo (idVehiculo)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Cliente_idCliente FOREIGN KEY (idClientePertenece) REFERENCES tbl_Cliente (idCliente)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
            );

        /*Tabla VehiculoEmpresa*/
          CREATE TABLE tbl_VehiculoEmpresa(
            idVehiculoEmpresa INTEGER NOT NULL,
            fechaAdquisicion DATE NOT NULL,
            idVehiculo INTEGER NOT NULL,
            idSeguro INTEGER NOT NULL,
            idEstado INTEGER NOT NULL,
            precioVenta DECIMAL(10,2) NULL,
            precioRentaHora DECIMAL(10,2) NULL,
            seVende BOOLEAN NULL,
            seRenta BOOLEAN NULL,
            estadoMatricula VARCHAR(1),
            montoMatricula DECIMAL(10,2),
            CONSTRAINT Pk_VehiculoEmpresa_idVehiculoEmpresa PRIMARY KEY (idVehiculoEmpresa),
            CONSTRAINT Fk_Vehiculo_idVehiculo FOREIGN KEY (idVehiculo) REFERENCES tbl_Vehiculo (idVehiculo)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Seguro_idSeguro FOREIGN KEY (idSeguro) REFERENCES tbl_Seguro (idSeguro)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Estado_idEstado FOREIGN KEY (idEstado) REFERENCES tbl_Estado (idEstado)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
            );

        /*Tabla Foto*/
          CREATE TABLE tbl_Foto(
            idFoto INTEGER NOT NULL,
            rutaFoto VARCHAR(100) NOT NULL,
            idVehiculo INTEGER NOT NULL,
            CONSTRAINT Pk_Foto_idFoto PRIMARY KEY (idFoto),
            CONSTRAINT Fk_Vehiculo_idVehiculo FOREIGN KEY (idVehiculo) REFERENCES tbl_Vehiculo (idVehiculo)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

      /*Módulo de Mantenimiento*/
        /*Tabla MarcaRepuesto*/
          CREATE TABLE tbl_MarcaRepuesto(
            idMarcaRepuesto INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            CONSTRAINT Pk_MarcaRepuesto_idMarcaRepuesto PRIMARY KEY (idMarcaRepuesto)
          );

        /*Tabla CategoriaRePuesto*/
          CREATE TABLE tbl_CategoriaRepuesto(
            idCategoriaRepuesto INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            CONSTRAINT Pk_CategoriaRepuesto_idCategoriaRepuesto PRIMARY KEY (idCategoriaRepuesto)
          );

        /*Tabla Proveedor*/
          CREATE TABLE tbl_Proveedor(
            idProveedor INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            rtn VARCHAR(45) NOT NULL UNIQUE,
            CONSTRAINT Pk_Proveedor_idProveedor PRIMARY KEY (idProveedor)
          );

        /*Tabla CorreoElectronicoProveedor*/
          CREATE TABLE tbl_CorreoElectronicoProveedor(
            idCorreoElectronico INTEGER NOT NULL,
            correoElectronico VARCHAR(45) NOT NULL UNIQUE,
            idProveedor INTEGER NOT NULL,
            CONSTRAINT Pk_CorreoElectronicoProveedor_idCorreoElectronico PRIMARY KEY (idCorreoElectronico),
            CONSTRAINT Fk_Proveedor_idProveedor FOREIGN KEY (idProveedor) REFERENCES tbl_Proveedor (idProveedor)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla TelefonoProveedor*/
          CREATE TABLE tbl_TelefonoProveedor(
            idTelefono INTEGER NOT NULL,
            telefono VARCHAR(45) NOT NULL UNIQUE,
            idProveedor INTEGER NOT NULL,
            CONSTRAINT Pk_TelefonoProveedor_idTelefono PRIMARY KEY (idTelefono),
            CONSTRAINT Fk_Proveedor_idProveedor FOREIGN KEY (idProveedor) REFERENCES tbl_Proveedor (idProveedor)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla SolicitudMantenimiento*/
          CREATE TABLE tbl_SolicitudMantenimiento(
            idSolicitudMantenimiento INTEGER NOT NULL,
            fechaSolicitud DATE NOT NULL,
            estado VARCHAR(1) NOT NULL,
            observacion VARCHAR(300) NOT NULL,
            idEmpleado INTEGER NOT NULL,
            idVehiculoCliente INTEGER NOT NULL,
            CONSTRAINT Pk_SolicitudMantenimiento_idSolicitudMantenimiento PRIMARY KEY (idSolicitudMantenimiento),
            CONSTRAINT Fk_Empleado_idEmpleado FOREIGN KEY (idEmpleado) REFERENCES tbl_Empleado (idEmpleado)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_VehiculoCliente_idVehiculoCliente FOREIGN KEY (idVehiculoCliente)
            REFERENCES tbl_VehiculoCliente (idVehiculoCliente)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla TipoMantenimiento*/
          CREATE TABLE tbl_TipoMantenimiento(
            idTipoMantenimiento INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            costo DECIMAL(10,2) NOT NULL,
            CONSTRAINT Pk_TipoMantenimiento_idTipoMantenimiento PRIMARY KEY (idTipoMantenimiento)
          );

        /*Tabla Repuesto*/
          CREATE TABLE tbl_Repuesto(
            idRepuesto INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            existencia INTEGER NOT NULL,
            precio DECIMAL(10,2) NOT NULL,
            idCategoriaRepuesto INTEGER NOT NULL,
            idMarcaRepuesto INTEGER NOT NULL,
            CONSTRAINT Pk_Repuesto_idRepuesto PRIMARY KEY (idRepuesto),
            CONSTRAINT Fk_CategoriaRepuesto_idCategoriaRepuesto FOREIGN KEY (idCategoriaRepuesto)
            REFERENCES tbl_CategoriaRepuesto (idCategoriaRepuesto)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_MarcaRepuesto_idMarcaRepuesto FOREIGN KEY (idMarcaRepuesto)
            REFERENCES tbl_MarcaRepuesto (idMarcaRepuesto)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Taller*/
          CREATE TABLE tbl_Taller(
            idTaller INTEGER NOT NULL,
            estado VARCHAR(1) NOT NULL,
            idSucursal INTEGER NOT NULL,
            CONSTRAINT Pk_Taller_idTaller PRIMARY KEY (idTaller),
            CONSTRAINT Fk_Sucursal_idSucursal FOREIGN KEY (idSucursal) REFERENCES tbl_Sucursal (idSucursal)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Mantenimiento*/
          CREATE TABLE tbl_Mantenimiento(
            idMantenimiento INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            fechaIngreso DATE NOT NULL,
            fechaSalida DATE NULL,
            estado VARCHAR(1) NOT NULL,
            idSolicitudMantenimiento INTEGER NOT NULL,
            idEmpleado INTEGER NOT NULL,
            idTipoMantenimiento INTEGER NOT NULL,
            idRepuesto INTEGER NOT NULL,
            idTaller INTEGER NOT NULL,
            CONSTRAINT Pk_Mantenimiento_idMantenimiento PRIMARY KEY (idMantenimiento),
            CONSTRAINT Fk_SolicitudMantenimiento_idSolicitudMantenimiento FOREIGN KEY (idSolicitudMantenimiento)
            REFERENCES tbl_SolicitudMantenimiento (idSolicitudMantenimiento)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Empleado_idEmpleado FOREIGN KEY (idEmpleado) REFERENCES tbl_Empleado (idEmpleado)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_TipoMantenimiento_idTipoMantenimiento FOREIGN KEY (idTipoMantenimiento)
            REFERENCES tbl_TipoMantenimiento (idTipoMantenimiento)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Repuesto_idRepuesto FOREIGN KEY (idRepuesto) REFERENCES tbl_Repuesto(idRepuesto)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Taller_idTaller FOREIGN KEY (idTaller) REFERENCES tbl_Taller(idTaller)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*CompraRepuesto*/
          CREATE TABLE tbl_CompraRepuesto(
            idProveedor INTEGER NOT NULL,
            idRepuesto INTEGER NOT NULL,
            cantidad INTEGER NOT NULL,
            fecha DATE NOT NULL,
            idEmpleado INTEGER NOT NULL,
            CONSTRAINT Fk_Emleado_idEmpleado FOREIGN KEY (idEmpleado)
            REFERENCES tbl_Empleado (idEmpleado)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Proveedor_idProveedor FOREIGN KEY (idProveedor) REFERENCES tbl_Proveedor (idProveedor)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Repuesto_idRepuesto FOREIGN KEY (idRepuesto) REFERENCES tbl_Repuesto (idRepuesto)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

      /*Módulo de Facturación*/
        /*Tabla Descuento*/
          CREATE TABLE tbl_Descuento(
            idDescuento INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            valor DECIMAL(10,2) NOT NULL,
            estado VARCHAR(1) NOT NULL,
            CONSTRAINT Pk_Descuento_idDescuento PRIMARY KEY (idDescuento)
          );

        /*Tabla Impuesto*/
          CREATE TABLE tbl_Impuesto(
            idImpuesto INTEGER NOT NULL,
            porcentaje DECIMAL(10,2) NOT NULL,
            CONSTRAINT Pk_Impuesto_idImpuesto PRIMARY KEY (idImpuesto)
          );

        /*FormaPago*/
          CREATE TABLE tbl_FormaPago(
            idFormaPago INTEGER NOT NULL,
            descripcion VARCHAR(45) NOT NULL,
            CONSTRAINT Pk_FormaPago_idFormaPago PRIMARY KEY (idFormaPago)
          );

        /*Tabla Factura*/
          CREATE TABLE tbl_Factura(
            idFactura INTEGER NOT NULL,
            fecha DATE NOT NULL,
            observaciones VARCHAR(300) NULL,
            idImpuesto INTEGER NOT NULL,
            idCliente INTEGER NOT NULL,
            idEmpleado INTEGER NOT NULL,
            CONSTRAINT Pk_Factura_idFactura PRIMARY KEY (idFactura),
            CONSTRAINT Fk_Impuesto_idImpuesto FOREIGN KEY (idImpuesto) REFERENCES tbl_Impuesto (idImpuesto)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Empleado_idEmpleado FOREIGN KEY (idEmpleado) REFERENCES tbl_Empleado (idEmpleado)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Cliente_idCliente FOREIGN KEY (idCliente) REFERENCES tbl_Cliente (idCliente)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla FormaPagoPorFactura*/
          CREATE TABLE tbl_FormaPagoPorFactura(
            idFactura INTEGER NOT NULL,
            idFormaPago INTEGER NOT NULL,
            monto DECIMAL(10,2) NOT NULL,
            CONSTRAINT Fk_Factura_idFactura FOREIGN KEY (idFactura) REFERENCES tbl_Factura (idFactura)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_FormaPago_idFormaPago FOREIGN KEY (idFormaPago) REFERENCES tbl_FormaPago (idFormaPago)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla DescuentoPorFactura*/
          CREATE TABLE tbl_DescuentoPorFactura(
            idFactura INTEGER NOT NULL,
            idDescuento INTEGER NOT NULL,
            CONSTRAINT Pk_DescuentoPorFactura_idDescuentoPorFactura PRIMARY KEY (idFactura, idDescuento),
            CONSTRAINT Fk_Factura_idFactura FOREIGN KEY (idFactura) REFERENCES tbl_Factura (idFactura)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Descuento_idDescuento FOREIGN KEY (idDescuento) REFERENCES tbl_Descuento (idDescuento)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Itinerario*/
          CREATE TABLE tbl_Itinerario(
            idItinerario INTEGER NOT NULL,
            fechaReserva DATE NOT NULL,
            fechaEntrega DATE NOT NULL,
            horaEntrega TIME NOT NULL,
            fechaDevolucion DATE NOT NULL,
            horaDevolucion TIME NOT NULL,
            CONSTRAINT Pk_idItinerario PRIMARY KEY (idItinerario)
          );

        /*Tabla Renta*/
          CREATE TABLE tbl_Renta(
            idFactura INTEGER NOT NULL,
            idVehiculoEmpresa INTEGER NOT NULL,
            anticipo DECIMAL(10,2) NOT NULL,
            mora DECIMAL(10,2) NOT NULL,
            totalHoras INTEGER NOT NULL,
            idItinerario INTEGER NOT NULL,
            CONSTRAINT Fk_Factura_idFactura FOREIGN KEY (idFactura) REFERENCES tbl_Factura (idFactura)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_VehiculoEmpresa_idVehiculoEmpresa FOREIGN KEY (idVehiculoEmpresa)
            REFERENCES tbl_VehiculoEmpresa (idVehiculoEmpresa)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Itinerario_idItinerario FOREIGN KEY (idItinerario) REFERENCES tbl_Itinerario (idItinerario)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
            );

        /*Tabla Venta*/
          CREATE TABLE tbl_Venta(
            idFactura INTEGER NOT NULL,
            idVehiculoEmpresa INTEGER NOT NULL,
            CONSTRAINT Fk_Factura_idFactura FOREIGN KEY (idFactura) REFERENCES tbl_Factura (idFactura)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_VehiculoEmpresa_idVehiculoEmpresa FOREIGN KEY (idVehiculoEmpresa)
            REFERENCES tbl_VehiculoEmpresa (idVehiculoEmpresa)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );

        /*Tabla Factura por mantenimiento*/
          CREATE TABLE tbl_FacturaPorMantenimiento(
            idMantenimiento INTEGER NOT NULL,
            idFactura INTEGER NOT NULL,
            CONSTRAINT Fk_Mantenimiento_idMantenimiento FOREIGN KEY (idMantenimiento) REFERENCES tbl_Mantenimiento (idMantenimiento)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
            CONSTRAINT Fk_Factura_idFactura FOREIGN KEY (idFactura) REFERENCES tbl_Factura (idFactura)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
          );