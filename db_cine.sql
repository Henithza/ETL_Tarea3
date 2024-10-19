USE cine_db; 
-- Creación de la tabla multiplex
CREATE TABLE multiplex (
    ID_MULTIPLEX INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Ubicación VARCHAR(255)
);

-- Creación de la tabla cliente
CREATE TABLE cliente (
    ID_CLIENTE INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Email VARCHAR(100),
    Teléfono VARCHAR(15)
);

-- Creación de la tabla sala
CREATE TABLE sala (
    ID_SALA INT PRIMARY KEY,
    Número INT,
    Tipo VARCHAR(50)
);

-- Creación de la tabla fecha
CREATE TABLE fecha (
    ID_FECHA INT PRIMARY KEY,
    Día INT,
    Mes INT,
    Año INT,
    Semana INT
);

-- Creación de la tabla película
CREATE TABLE pelicula (
    ID_PELICULA INT PRIMARY KEY,
    Título VARCHAR(100),
    Género VARCHAR(50),
    Películacol VARCHAR(50),
    Duración INT,
    Clasificación VARCHAR(50)
);
-- Creación de la tabla venta
CREATE TABLE venta (
    ID_VENTA INT PRIMARY KEY,
    ID_CLIENTE INT,
    ID_FECHA INT,
    ID_MULTIPLEX INT,
    ID_PELICULA INT,
    ID_SALA INT,
    HORA_FUNCION TIME,
    VALOR DECIMAL(10, 2),
    FOREIGN KEY (ID_CLIENTE) REFERENCES cliente(ID_CLIENTE),
    FOREIGN KEY (ID_FECHA) REFERENCES fecha(ID_FECHA),
    FOREIGN KEY (ID_MULTIPLEX) REFERENCES multiplex(ID_MULTIPLEX),
    FOREIGN KEY (ID_PELICULA) REFERENCES pelicula(ID_PELICULA),
    FOREIGN KEY (ID_SALA) REFERENCES sala(ID_SALA)
);
SHOW TABLES; 




