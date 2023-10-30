CREATE TABLE `Consulta`(
    `consulta_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `modelo_id` BIGINT NOT NULL,
    `tiempoAlquiler_id` BIGINT NOT NULL,
    `tiempoEntrega_id` BIGINT NOT NULL
);
CREATE TABLE `Contacto`(
    `contacto_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `phone` INT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `column_4` BIGINT NOT NULL
);
CREATE TABLE `Reservas`(
    `reservas_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `modelo_id` BIGINT NOT NULL,
    `clientes_id` BIGINT NOT NULL
);
CREATE TABLE `Multas`(
    `multas_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tiempoEntrega_id` BIGINT NOT NULL,
    `estado_id` BIGINT NOT NULL,
    `cliente_id` BIGINT NOT NULL
);
CREATE TABLE `Estado`(
    `estado_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `descripcion` VARCHAR(255) NOT NULL,
    `estado` VARCHAR(255) NOT NULL
);
CREATE TABLE `Tarjeta`(
    `Tarjeta_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `namePropietario` VARCHAR(255) NOT NULL,
    `numeroTarjeta` INT NOT NULL,
    `codigoTarjeta` INT NOT NULL,
    `fechaVencimiento` INT NOT NULL,
    `direccion` VARCHAR(255) NOT NULL
);
CREATE TABLE `Cliente`(
    `cliente_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nameCliente` VARCHAR(255) NOT NULL,
    `lastNameCliente` VARCHAR(255) NULL,
    `fechaNacimiento` INT NOT NULL,
    `documento` INT NOT NULL,
    `contacto_id` BIGINT NOT NULL
);
CREATE TABLE `Modelo`(
    `modelo_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `marca_id` VARCHAR(255) NOT NULL,
    `placa` VARCHAR(255) NOT NULL,
    `color` VARCHAR(255) NOT NULL,
    `gama_id` BIGINT NOT NULL
);
CREATE TABLE `Registro`(
    `registro_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cliente_id` BIGINT NOT NULL,
    `modelo_id` BIGINT NOT NULL,
    `estado_id` BIGINT NOT NULL,
    `reservas_id` BIGINT NOT NULL
);
CREATE TABLE `MetodosDePago`(
    `metodosDePago_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `efectivo_id` BIGINT NOT NULL,
    `tarejtaDebitoOCredito_id` BIGINT NOT NULL,
    `cheque_id` BIGINT NOT NULL
);
CREATE TABLE `Gama`(
    `gama_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `seguro_id` BIGINT NOT NULL,
    `consulta_id` BIGINT NOT NULL
);
CREATE TABLE `Renta`(
    `renta_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cliente_id` BIGINT NOT NULL,
    `pago_id` BIGINT NOT NULL,
    `consulta_id` BIGINT NOT NULL,
    `registro_id` BIGINT NOT NULL,
    `metodosDePago_id` BIGINT NOT NULL,
    `tiempoAlquiler_id` BIGINT NOT NULL,
    `tiempoEntrega_id` BIGINT NOT NULL
);