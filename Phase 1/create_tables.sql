-- Create tables
-- Base tables
 
-- Universidad
CREATE SEQUENCE seq_universidad INCREMENT BY 1 START WITH 1;
CREATE TABLE universidad(
    id_univ NUMBER NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    fecha_creacion DATE NOT NULL,
    acronimo VARCHAR2(10),
    descripcion VARCHAR2(100),
    CONSTRAINT cUniversidad_PK PRIMARY KEY (id_univ)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_universidad 
BEFORE INSERT ON universidad 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_univ IS NULL THEN
      SELECT seq_universidad.NEXTVAL INTO :NEW.id_univ FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

-- Usuario
CREATE SEQUENCE seq_usuario INCREMENT BY 1 START WITH 1;
CREATE TABLE usuario(
    id_usuario NUMBER NOT NULL,
    correo VARCHAR2(50) NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    apellido VARCHAR2(50) NOT NULL,
    telefono VARCHAR2(50) NOT NULL,
    direccion VARCHAR2(50),
    contrasena VARCHAR2(50) NOT NULL,
    type_user VARCHAR2(20) NOT NULL,
    CONSTRAINT cUsuario_pk PRIMARY KEY (id_usuario),
    CONSTRAINT cUsuario_CorreoUnique UNIQUE(correo),
    CONSTRAINT cUsuario_type CHECK(type_user in ('participante','expositor'))
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_usuario 
BEFORE INSERT ON usuario 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_usuario IS NULL THEN
      SELECT seq_usuario.NEXTVAL INTO :NEW.id_usuario FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
 
-- Area de conocimiento
CREATE SEQUENCE seq_areaconocimiento INCREMENT BY 1 START WITH 1;
CREATE TABLE area_conocimiento(
    id_area NUMBER NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    CONSTRAINT cAreaConocimiento_pk PRIMARY KEY (id_area)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_area_conocimiento 
BEFORE INSERT ON area_conocimiento 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_area IS NULL THEN
      SELECT seq_areaconocimiento.NEXTVAL INTO :NEW.id_area FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
 
-- Evento
CREATE SEQUENCE seq_evento INCREMENT BY 1 START WITH 1;
CREATE TABLE evento(
    id_evento NUMBER NOT NULL,
    nombre VARCHAR2(50) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    id_area NUMBER NOT NULL,
    CONSTRAINT cEvento_pk PRIMARY KEY(id_evento),
    CONSTRAINT cEvento_fk FOREIGN KEY(id_area) REFERENCES area_conocimiento(id_area),
    CONSTRAINT cEvento_fFin_fInicio CHECK (fecha_fin >= fecha_inicio)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_evento 
BEFORE INSERT ON evento 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_evento IS NULL THEN
      SELECT seq_evento.NEXTVAL INTO :NEW.id_evento FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
 
-- Empresa
CREATE SEQUENCE seq_empresa INCREMENT BY 1 START WITH 1;
CREATE TABLE empresa(
    id_empresa NUMBER NOT NULL,
    id_area NUMBER,
    nombre VARCHAR2(50) NOT NULL,
    direccion VARCHAR2(50),
    telefono VARCHAR2(50) NOT NULL,
    tipo VARCHAR2(50) NOT NULL,
    CONSTRAINT cEmpresa_pk PRIMARY KEY(id_empresa),
    FOREIGN KEY (id_area) REFERENCES area_conocimiento(id_area),
    CONSTRAINT cEmpresa_tipo CHECK(tipo in ('publica','privada'))
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_empresa 
BEFORE INSERT ON empresa 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_empresa IS NULL THEN
      SELECT seq_empresa.NEXTVAL INTO :NEW.id_empresa FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
 
-- Relaciones
-- Universidad / Usuario
CREATE SEQUENCE seq_rel_univ_usuario INCREMENT BY 1 START WITH 1;
CREATE TABLE rel_univ_usuario(
    id_rel_uu NUMBER NOT NULL,
    id_univ NUMBER NOT NULL,
    id_usuario NUMBER NOT NULL,
    fecha_ingreso DATE NOT NULL,
    CONSTRAINT cRel_uu_pk PRIMARY KEY(id_rel_uu),
    FOREIGN KEY(id_univ) REFERENCES universidad(id_univ),
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_rel_univ_usuario 
BEFORE INSERT ON rel_univ_usuario 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_rel_uu IS NULL THEN
      SELECT seq_rel_univ_usuario.NEXTVAL INTO :NEW.id_rel_uu FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
 
-- Evento / Universidad
CREATE SEQUENCE seq_rel_evento_univ INCREMENT BY 1 START WITH 1;
CREATE TABLE rel_evento_univ(
    id_rel_eu NUMBER NOT NULL,
    id_univ NUMBER NOT NULL,
    id_evento NUMBER NOT NULL,
    CONSTRAINT cRel_eu_pk PRIMARY KEY(id_rel_eu),
    FOREIGN KEY(id_univ) REFERENCES universidad(id_univ),
    FOREIGN KEY(id_evento) REFERENCES evento(id_evento)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_rel_evento_univ 
BEFORE INSERT ON rel_evento_univ 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_rel_eu IS NULL THEN
      SELECT seq_rel_evento_univ.NEXTVAL INTO :NEW.id_rel_eu FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
 
-- Evento / Empresa
CREATE SEQUENCE seq_rel_evento_empresa INCREMENT BY 1 START WITH 1;
CREATE TABLE rel_evento_empresa(
    id_rel_ee NUMBER NOT NULL,
    id_empresa NUMBER NOT NULL,
    id_evento NUMBER NOT NULL,
    dinero_aportado NUMBER NOT NULL,
    fecha_aportado DATE NOT NULL,
    CONSTRAINT cRel_ee_pk PRIMARY KEY(id_rel_ee),
    FOREIGN KEY(id_empresa) REFERENCES empresa(id_empresa),
    FOREIGN KEY(id_evento) REFERENCES evento(id_evento)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_rel_evento_empresa 
BEFORE INSERT ON rel_evento_empresa 
FOR EACH ROW 
BEGIN
  BEGIN
    IF INSERTING AND :NEW.id_rel_ee IS NULL THEN
      SELECT seq_rel_evento_empresa.NEXTVAL INTO :NEW.id_rel_ee FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

 
-- Evento / usuario Participa
CREATE SEQUENCE seq_participa INCREMENT BY 1 START WITH 1;
CREATE TABLE participa(
    id_participa NUMBER NOT NULL,
    id_usuario NUMBER NOT NULL,
    id_evento NUMBER NOT NULL,
    CONSTRAINT cParticipa_pk PRIMARY KEY(id_participa),
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY(id_evento) REFERENCES evento(id_evento)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_participa 
BEFORE INSERT ON participa 
FOR EACH ROW
DECLARE 
    type_user VARCHAR2(20);
BEGIN
    -- Tomar type_user de la tabla usuario
    SELECT usuario.type_user INTO type_user
    FROM usuario
    WHERE usuario.id_usuario = :NEW.id_usuario;

    -- Chequear si es tipo valido (debe ser participante)
    IF type_user != ('participante') THEN
        raise_application_error( -20101, 'El usuario no es un participante');
    END IF;

  -- Auto increment id
    IF INSERTING AND :NEW.id_participa IS NULL THEN
      SELECT seq_participa.NEXTVAL INTO :NEW.id_participa FROM SYS.DUAL;
    END IF;
END;
/
 
-- Evento / usuario dicta
CREATE SEQUENCE seq_dicta INCREMENT BY 1 START WITH 1;
CREATE TABLE dicta(
    id_dicta NUMBER NOT NULL,
    id_usuario NUMBER NOT NULL,
    id_evento NUMBER NOT NULL,
    nombre_charla VARCHAR2(50) NOT NULL,
    valoracion NUMBER NOT NULL,
    CONSTRAINT cDicta_pk PRIMARY KEY(id_dicta),
    FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY(id_evento) REFERENCES evento(id_evento),
    CONSTRAINT cExpositor_valoracion CHECK (valoracion BETWEEN 1 and 5)
)
TABLESPACE ts_tablas;
CREATE OR REPLACE TRIGGER trg_dicta 
BEFORE INSERT ON dicta 
FOR EACH ROW
DECLARE 
    type_user VARCHAR2(20);
BEGIN
    -- Tomar type_user de la tabla usuario
    SELECT usuario.type_user INTO type_user
    FROM usuario
    WHERE usuario.id_usuario = :NEW.id_usuario;

    -- Chequear si es tipo valido (debe ser participante)
    IF type_user != ('expositor') THEN
        raise_application_error( -20101, 'El usuario no es un expositor');
    END IF;

  -- Auto increment id
    IF INSERTING AND :NEW.id_dicta IS NULL THEN
      SELECT seq_dicta.NEXTVAL INTO :NEW.id_dicta FROM SYS.DUAL;
    END IF;
END;
/