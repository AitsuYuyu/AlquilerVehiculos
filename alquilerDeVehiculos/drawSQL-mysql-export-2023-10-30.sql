CREATE TABLE `Estado`(
    `estado_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `descripcion` VARCHAR(50) NOT NULL,
    `estado` VARCHAR(50) NOT NULL
);
CREATE TABLE `Tarjeta`(
    `Tarjeta_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `namePropietario` VARCHAR(50) NOT NULL,
    `numeroTarjeta` INT NOT NULL,
    `codigoTarjeta` INT NOT NULL,
    `fechaVencimiento` INT NOT NULL,
    `direccion` VARCHAR(50) NOT NULL
);
CREATE TABLE `Cliente`(
    `cliente_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nameCliente` VARCHAR(50) NOT NULL,
    `lastNameCliente` VARCHAR(255) NULL,
    `fechaNacimiento` INT NOT NULL,
    `documento` INT NOT NULL,
    `contacto_id` INT NOT NULL
);
CREATE TABLE `Modelo`(
    `modelo_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `marca_id` VARCHAR(50) NOT NULL,
    `placa` VARCHAR(50) NOT NULL,
    `color` VARCHAR(50) NOT NULL,
    `gama_id` INT NOT NULL
);
CREATE TABLE `Registro`(
    `registro_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cliente_id` INT NOT NULL,
    `modelo_id` INT NOT NULL,
    `estado_id` INT NOT NULL,
    `reservas_id` INT NOT NULL
);
CREATE TABLE `MetodosDePago`(
    `metodosDePago_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `efectivo_id` INT NOT NULL,
    `tarejtaDebitoOCredito_id` INT NOT NULL,
    `cheque_id` INT NOT NULL
);
CREATE TABLE `Gama`(
    `gama_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `seguro_id` INT NOT NULL,
    `consulta_id` INT NOT NULL
);
CREATE TABLE `Renta`(
    `renta_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cliente_id` INT NOT NULL,
    `pago_id` INT NOT NULL,
    `consulta_id` INT NOT NULL,
    `registro_id` INT NOT NULL,
    `metodosDePago_id` INT NOT NULL,
    `tiempoAlquiler_id` INT NOT NULL,
    `tiempoEntrega_id` INT NOT NULL
);
