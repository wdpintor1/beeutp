-- Crear secuencia
CREATE SEQUENCE SEQ_TB_BEE_CANALES
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE
    CACHE 10;

-- Crear tabla
CREATE TABLE TB_BEE_CANALES (
    idCanal BIGINT PRIMARY KEY DEFAULT NEXTVAL('SEQ_TB_BEE_CANALES'),
    apiKey VARCHAR(255),
    nombre VARCHAR(255),
    descripcion VARCHAR(255)
);

--talbas para campos
-- Crear secuencia
CREATE SEQUENCE SEQ_TB_BEE_CAMPOS
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE
    CACHE 10;

-- Crear tabla
CREATE TABLE TB_BEE_CAMPOS (
    idCampo BIGINT PRIMARY KEY DEFAULT NEXTVAL('SEQ_TB_BEE_CAMPOS'),
    nombre VARCHAR(255),
    max VARCHAR(255),
    min VARCHAR(255),
    tiempo_envio VARCHAR(255),
    idCanal BIGINT,
    FOREIGN KEY (idCanal) REFERENCES TB_BEE_CANALES(idCanal)
);
--Tabla para medidas
-- Crear secuencia
CREATE SEQUENCE SEQ_TB_BEE_MEDIDAS
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO CYCLE
    CACHE 10;

-- Crear tabla
CREATE TABLE TB_BEE_MEDIDAS (
    idMedida BIGINT PRIMARY KEY DEFAULT NEXTVAL('SEQ_TB_BEE_MEDIDAS'),
    valor VARCHAR(255),
    fecha DATE,
    idCampo BIGINT,
    FOREIGN KEY (idCampo) REFERENCES TB_BEE_CAMPOS(idCampo)
);

GRANT ALL ON TABLE TB_BEE_CANALES TO beeUtp;
GRANT ALL ON TABLE TB_BEE_CAMPOS TO beeUtp;
