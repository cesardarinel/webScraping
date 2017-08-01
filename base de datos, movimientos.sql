--TABLA MOVIMIENTOS
CREATE TABLE movimientos(
    id DOUBLE,
    codigo DOUBLE,
    tipo   DOUBLE,
    monto DECIMAL(19,4),
    fecha DATE
);


-- TABLA STATUS
CREATE TABLE codigo_estatus(
    id DOUBLE,
    codigo DOUBLE,
    descripcion varchar(255)
);


--CODIGO DE LOS ESTATUS( SOLO CREAR)
CREATE TABLE tipo_movimiento(
    id DOUBLE,
    codigo DOUBLE,
    descripcion varchar(255)
);

INSERT INTO tipo_movimiento(id,codigo,descripcion )
 VALUES (1,1,'');

INSERT INTO tipo_movimiento(id,codigo,descripcion )
 VALUES (2,2,'');
