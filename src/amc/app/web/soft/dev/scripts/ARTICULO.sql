create table ARTICULO
(
    ID numeric(4) not null primary key,
    CODIGO VARCHAR2(280) NOT NULL UNIQUE,
    SERIE VARCHAR2(280) NOT NULL UNIQUE,
    DESCRIPCION VARCHAR2(280) NOT NULL,
    MARCA VARCHAR2(280) NOT NULL,
    MODELO VARCHAR2(280) NOT  NULL UNIQUE,
    ESTADO CHAR(1) DEFAULT '1' NOT NULL
);

ALTER TABLE ARTICULO
ADD(
    AUD_TIPO CHAR(1),
    AUD_IDUSUARIO NUMERIC(6),
    AUD_SESION VARCHAR2(60),
    AUD_IP VARCHAR2(20),
    AUD_FECHA DATE
);

CREATE SEQUENCE SEQ_ARTICULO;

INSERT INTO ARTICULO(ID, CODIGO,SERIE,DESCRIPCION,MARCA,MODELO,ESTADO)
VALUES(SEQ_ARTICULO.NEXTVAL,'0001','S001','PC GAMER', 'ASUS','Z1','1');

INSERT INTO ARTICULO(ID, CODIGO,SERIE,DESCRIPCION,MARCA,MODELO,ESTADO)
VALUES(SEQ_ARTICULO.NEXTVAL,'0002','T002','TECLADO GAMER', 'COOL MASTER','H23','1');

INSERT INTO ARTICULO(ID, CODIGO,SERIE,DESCRIPCION,MARCA,MODELO,ESTADO)
VALUES(SEQ_ARTICULO.NEXTVAL,'0003','S003','MAUSE GAMER', 'HALION','H1','1');
commit;

SELECT * FROM articulo