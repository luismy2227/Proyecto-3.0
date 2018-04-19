/*Creando vistas*/
  /*Relacionadas a la facturación*/
    /*Vista de Subtotal de venta*/
      /*Descripción:*/
        /* Esta vista almacena la sumatoria de precioVenta 
        de todos los vehículos que se registren en una misma factura*/

      /*Script:*/
        CREATE VIEW vv_Subtotal_Venta (idFactura, Subtotal) AS (
          SELECT tbl_Venta.idFactura, SUM(tbl_VehiculoEmpresa.precioVenta) Subtotal FROM tbl_Venta
          INNER JOIN tbl_VehiculoEmpresa ON tbl_VehiculoEmpresa.idVehiculoEmpresa = tbl_Venta.idVehiculoEmpresa
          INNER JOIN tbl_Factura ON tbl_Factura.idFactura = tbl_Venta.idFactura
          GROUP BY tbl_Venta.idFactura, tbl_VehiculoEmpresa.precioVenta
          ORDER BY tbl_Venta.idFactura
        );

    /*Vista de Subtotal de renta*/
      /*Descripción:*/
        /*Esta vista almacena la sumatoria de precioRentaHora
        de todos los vehículos que se registren en una misma factura*/

      /*Script:*/
        CREATE VIEW vv_Subtotal_Renta (idFactura, Subtotal) AS (
          SELECT tbl_Renta.idFactura idFactura,  (SUM(tbl_Renta.totalHoras * tbl_VehiculoEmpresa.precioRentaHora) + tbl_Renta.mora - tbl_Renta.anticipo) Subtotal FROM tbl_Renta
          INNER JOIN tbl_VehiculoEmpresa ON tbl_VehiculoEmpresa.idVehiculoEmpresa = tbl_Renta.idVehiculoEmpresa
          INNER JOIN tbl_Factura ON tbl_Factura.idFactura = tbl_Renta.idFactura
          GROUP BY tbl_Renta.idFactura, tbl_Renta.totalHoras, tbl_VehiculoEmpresa.precioRentaHora, tbl_Renta.mora, tbl_Renta.anticipo
          ORDER BY tbl_Renta.idFactura
          );

    /*Vista de Subtotal de mantenimiento*/
      /*Descripción:*/
        /*Esta vista almacena la sumatoria de costo de mantenimiento
        de todos los vehículos que se registren en una misma factura*/

      /*Script:*/
        CREATE VIEW vv_Subtotal_Mantenimiento (idFactura, Subtotal) AS(
          SELECT tbl_FacturaPorMantenimiento.idFactura idFactura, SUM(tbl_TipoMantenimiento.costo) Subtotal FROM tbl_Factura
          INNER JOIN tbl_FacturaPorMantenimiento ON tbl_FacturaPorMantenimiento.idFactura = tbl_Factura.idFactura
          INNER JOIN tbl_Mantenimiento ON tbl_Mantenimiento.idMantenimiento = tbl_FacturaPorMantenimiento.idMantenimiento
          INNER JOIN tbl_TipoMantenimiento ON tbl_TipoMantenimiento.idTipoMantenimiento = tbl_Mantenimiento.idTipoMantenimiento
          GROUP BY tbl_FacturaPorMantenimiento.idFactura
          ORDER BY tbl_FacturaPorMantenimiento.idFactura
        );

    /*Vsita de Subtotal*/
      /*Descripción: */
        /*Esta vista suma los subtotales*/

      /*Script:*/
        CREATE VIEW vv_Subtotal (idFactura, Venta, Renta, Mantenimiento, Subtotal) AS(
          SELECT tbl_Factura.idFactura idFactura, vv_Subtotal_Venta.Subtotal Venta, vv_Subtotal_Renta.Subtotal Renta, vv_Subtotal_Mantenimiento.Subtotal Mantenimiento, 
          vv_Subtotal_Venta.Subtotal + vv_Subtotal_Renta.Subtotal + vv_Subtotal_Mantenimiento.Subtotal Subtotal FROM tbl_Factura
          INNER JOIN vv_Subtotal_Venta ON vv_Subtotal_Venta.idFactura = tbl_Factura.idFactura
          INNER JOIN vv_Subtotal_Renta ON vv_Subtotal_Renta.idFactura = tbl_Factura.idFactura
          INNER JOIN vv_Subtotal_Mantenimiento ON vv_Subtotal_Mantenimiento.idFactura = tbl_Factura.idFactura
        );

    /*Vista de Total de descuentos*/
      /*Descripción:*/
        /*Esta vista suma los descuentos disponibles que se le aplican a una factura*/

      /*Script:*/
        CREATE VIEW vv_Total_Descuento (idFactura, TotalDescuento) AS(
          SELECT tbl_DescuentoPorFactura.idFactura idFactura, SUM(tbl_Descuento.Valor) TotalDescuento FROM tbl_DescuentoPorFactura
          INNER JOIN tbl_Descuento ON tbl_Descuento.idDescuento = tbl_DescuentoPorFactura.idDescuento
          INNER JOIN tbl_Factura ON tbl_Factura.idFactura = tbl_DescuentoPorFactura.idFactura
          WHERE tbl_Descuento.estado = 'A'
          GROUP BY tbl_DescuentoPorFactura.idFactura
          ORDER BY tbl_DescuentoPorFactura.idFactura
        );

    /*Vista de Total de la Factura*/
      /*Descripción:*/
        /*Cálculo del subtotal + impuesto - descuento*/

      /*Script:*/
        CREATE VIEW vv_Total(idFactura, Total) AS (
          SELECT tbl_Factura.idFactura, CAST((vv_Subtotal.Subtotal + (vv_Subtotal.Subtotal * (tbl_Impuesto.porcentaje/100)) - 
          (vv_Subtotal.Subtotal * (vv_Total_Descuento.TotalDescuento/100))) AS DECIMAL(10,2)) Total FROM tbl_Factura
          INNER JOIN vv_Subtotal ON vv_Subtotal.idFactura = tbl_Factura.idFactura
          INNER JOIN tbl_Impuesto ON tbl_Impuesto.idImpuesto = tbl_Factura.idImpuesto
          INNER JOIN vv_Total_Descuento ON vv_Total_Descuento.idFactura = tbl_Factura.idFactura
          GROUP BY tbl_Factura.idFactura, vv_Subtotal.Subtotal, tbl_Impuesto.porcentaje, vv_Total_Descuento.TotalDescuento
          ORDER BY tbl_Factura.idFactura
        );

    /*Vista de Total de formas de pago por factura*/
      /*Descripción:*/
        /*Suma los montos de cada tipo de forma de pago por factura*/

      /*Script*/
        CREATE VIEW vv_TotalFormaPago_Factura (idFactura, FormaPago, Monto) AS (
          SELECT tbl_Factura.idFactura idFactura, tbl_FormaPago.descripcion FormaPago, SUM(tbl_FormaPagoPorFactura.monto) Monto FROM tbl_Factura
          INNER JOIN tbl_FormaPagoPorFactura ON tbl_FormaPagoPorFactura.idFactura = tbl_Factura.idFactura
          INNER JOIN tbl_FormaPago ON tbl_FormaPago.idFormaPago = tbl_FormaPagoPorFactura.idFormaPago
          GROUP BY tbl_Factura.idFactura, tbl_FormaPago.descripcion
          ORDER BY tbl_Factura.idFactura
        );

    /*Vista de mantenimientos por vehículo*/
      /*Descripción:*/
        /*Muestra el detalle de mantenimientos por vehículo*/

      /*Script:*/
        CREATE VIEW vv_Mantenimiento_Vehiculo (vehiculoCliente, idSolicitudMantenimiento, fechaSolicitud, observacion, idMantenimiento, fechaIngreso, fehcaSalida, idEmpleado, descripcion) AS(
          SELECT tbl_SolicitudMantenimiento.idVehiculoCliente, tbl_SolicitudMantenimiento.idSolicitudMantenimiento, tbl_SolicitudMantenimiento.fechaSolicitud,
          tbl_SolicitudMantenimiento.observacion, tbl_Mantenimiento.idMantenimiento,tbl_Mantenimiento.fechaIngreso, tbl_Mantenimiento.fechaSalida, 
          tbl_Mantenimiento.idEmpleado, tbl_TipoMantenimiento.descripcion FROM tbl_SolicitudMantenimiento
          INNER JOIN tbl_Mantenimiento ON tbl_Mantenimiento.idSolicitudMantenimiento = tbl_SolicitudMantenimiento.idSolicitudMantenimiento
          INNER JOIN tbl_TipoMantenimiento ON tbl_TipoMantenimiento.idTipoMantenimiento = tbl_Mantenimiento.idTipoMantenimiento
          WHERE tbl_SolicitudMantenimiento.idSolicitudMantenimiento != 31
          ORDER BY tbl_SolicitudMantenimiento.idVehiculoCliente
        );

  /*Relacionadas a vehiculos*/

    /*Vista de detalle de vehiculos*/
      /*Descripción*/
        /*Detalle de vehiculos*/

      /*Script*/
        CREATE VIEW vv_Detalle_Vehiculos AS (
          SELECT tbl_Vehiculo.idVehiculo idVehiculo, tbl_Vehiculo.placa Placa, tbl_Marca.descripcion Marca, tbl_Modelo.descripcion Modelo, tbl_Version.descripcion ModeloVersion, tbl_Vehiculo.color Color, 
          EXTRACT(YEAR FROM tbl_Vehiculo.anio) Anio, tbl_Vehiculo.generacion Generacion, tbl_Vehiculo.serie_vin Serie, tbl_Vehiculo.tipoMotor TipoMotor, 
          tbl_Cilindraje.descripcion Cilindraje, tbl_Transmision.descripcion Transmision,
          tbl_TipoGasolina.descripcion TipoGasolina FROM tbl_Vehiculo
          INNER JOIN tbl_Marca ON tbl_Marca.idMarca = tbl_Vehiculo.idMarca
          INNER JOIN tbl_Modelo ON tbl_Modelo.idModelo = tbl_Vehiculo.idModelo 
          INNER JOIN tbl_Version ON tbl_Version.idVersion = tbl_Vehiculo.idVersion
          INNER JOIN tbl_Transmision ON tbl_Transmision.idTransmision = tbl_Vehiculo.idTransmision
          INNER JOIN tbl_TipoGasolina ON tbl_TipoGasolina.idTipoGasolina = tbl_Vehiculo.idTipoGasolina
          INNER JOIN tbl_Cilindraje ON tbl_Cilindraje.idCilindraje = tbl_Vehiculo.idCilindraje
          WHERE tbl_Vehiculo.idVehiculo != 61
          ORDER BY tbl_Vehiculo.idVehiculo
        );

    /*Vista de vehículos por garage y por sucursal*/
      /*Descripción:*/
        /*Esta vista muestra los vehículos agrupados por garage y sucursal*/

      /*Script:*/
        CREATE VIEW vv_Vehiculos_Sucursal AS (
          SELECT tbl_Sucursal.descripcion Sucursal, tbl_Garage.descripcion Garage, vv_Detalle_Vehiculos.* FROM tbl_Sucursal
          INNER JOIN tbl_Garage ON tbl_Garage.idSucursal = tbl_Sucursal.idSucursal
          INNER JOIN tbl_Vehiculo ON tbl_Vehiculo.idGarage = tbl_Garage.idGarage
          INNER JOIN vv_Detalle_Vehiculos ON vv_Detalle_Vehiculos.idVehiculo = tbl_Vehiculo.idVehiculo
          ORDER BY tbl_Sucursal.descripcion
        );