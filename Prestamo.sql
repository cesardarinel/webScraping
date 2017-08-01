--TABLA CLIENTE
CREATE TABLE cliente(
    id INTEGER NOT NULL  primary key,
    identificacion VARCHAR(16),
    telefono VARCHAR(16),
    nombre VARCHAR(255)
);

--TABLA PRESTANOS
CREATE TABLE prestamo(
    id INTEGER NOT NULL primary key,
    idcliente INTEGER NOT NULL FOREIGN KEY REFERENCES cliente(id),
    tasainteres FLOAT,
    monto DECIMAL(19,4),
    cuotas FLOAT,
    frecuencia int,
    estados int,
    fechacompromiso DATE,
    fecha DATE
);

-- TABLA HISTORIAL
CREATE TABLE historial(
    id INTEGER NOT NULL primary key,
    idprestamo INTEGER   NOT NULL FOREIGN KEY REFERENCES prestamo(id),
    fecha DATE,
    interes FLOAT,
    capital FLOAT,
    otros FLOAT,
    pago DECIMAL(19,4)  NOT NULL,
    codigo FLOAT,
    nota varchar(255)
);
