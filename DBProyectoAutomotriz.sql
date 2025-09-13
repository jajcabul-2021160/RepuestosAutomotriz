DROP DATABASE IF EXISTS DBProyectoAutomotriz;
CREATE DATABASE DBProyectoAutomotriz;
USE DBProyectoAutomotriz;


CREATE TABLE cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    PRIMARY KEY (id_cliente)
);


CREATE TABLE vehiculo (
    id_vehiculo INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    año INT NOT NULL,
    id_cliente INT,
    PRIMARY KEY (id_vehiculo),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);


CREATE TABLE repuesto (
    id_repuesto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    PRIMARY KEY (id_repuesto)
);


CREATE TABLE pedido (
    id_pedido INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_repuesto INT NOT NULL,
    cantidad INT NOT NULL,
    fecha DATE NOT NULL,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_repuesto) REFERENCES repuesto(id_repuesto)
);



INSERT INTO cliente (nombre, apellido, telefono, email) VALUES
('Juan', 'Perez', '55123456', 'jperez@gmail.com'),
('Ana', 'Gomez', '44123456', 'ana.gomez@yahoo.com'),
('Carlos', 'Ramirez', '77123456', 'c.ramirez@hotmail.com'),
('Maria', 'Lopez', '66123456', 'maria_lopez@gmail.com'),
('Pedro', 'Martinez', '88123456', 'pedro.m@gmail.com'),
('Laura', 'Sanchez', '99123456', 'laura.sanchez@yahoo.com'),
('Sofia', 'Fernandez', '33123456', 'sofia.f@gmail.com'),
('David', 'Diaz', '22123456', 'david.d@hotmail.com'),
('Elena', 'Torres', '11123456', 'elena.torres@gmail.com'),
('Miguel', 'Vargas', '50123456', 'miguelv@gmail.com');

INSERT INTO vehiculo (marca, modelo, año, id_cliente) VALUES
('Mercedes-Benz', 'Clase C', 2022, 1),
('BMW', 'Serie 3', 2021, 2),
('Audi', 'A4', 2023, 3),
('Jeep', 'Wrangler', 2019, 4),
('Tesla', 'Model 3', 2022, 5),
('Ford', 'Mustang', 2020, 6),
('Volkswagen', 'Golf GTI', 2021, 7),
('Honda', 'CR-V', 2022, 8),
('Nissan', 'Sentra', 2023, 9),
('Toyota', 'Tacoma', 2021, 10);

INSERT INTO repuesto (nombre, descripcion, precio, stock) VALUES
('Bujias', 'Juego de 4 bujias de platino', 150.75, 30),
('Filtro de aire', 'Filtro de aire de alto flujo', 220.00, 15),
('Pastillas de freno', 'Juego de pastillas de ceramica', 480.50, 25),
('Bateria', 'Bateria de gel de alto rendimiento', 1100.00, 8),
('Amortiguador', 'Amortiguador trasero izquierdo', 950.00, 12),
('Aceite de motor', 'Aceite sintetico 10W-40', 280.00, 40),
('Correa de distribucion', 'Correa de distribucion con tensor', 850.00, 10),
('Sensor de oxigeno', 'Sensor O2 universal', 350.00, 20),
('Radiador', 'Radiador de aluminio de 2 filas', 1500.00, 6),
('Bomba de agua', 'Bomba de agua completa', 780.00, 18);

INSERT INTO pedido (id_cliente, id_repuesto, cantidad, fecha) VALUES
(1, 5, 1, '2025-02-15'),
(2, 8, 2, '2025-02-18'),
(3, 4, 1, '2025-02-20'),
(4, 1, 4, '2025-02-22'),
(5, 7, 2, '2025-02-25'),
(6, 6, 3, '2025-03-01'),
(7, 2, 1, '2025-03-05'),
(8, 10, 2, '2025-03-08'),
(9, 3, 1, '2025-03-10'),
(10, 9, 1, '2025-03-12');


SELECT * FROM cliente;

SELECT * FROM vehiculo;

SELECT * FROM repuesto;

SELECT * FROM pedido;
