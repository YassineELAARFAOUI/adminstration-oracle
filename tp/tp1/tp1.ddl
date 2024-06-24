-- Generated by Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   at:        2024-02-10 22:53:05 WEST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE etudiant (
    noetud CHAR(20) NOT NULL,
    nom    CHAR(20),
    prenom CHAR 
--  WARNING: CHAR size not specified 

);

ALTER TABLE etudiant ADD CONSTRAINT etudiant_pk PRIMARY KEY ( noetud );

CREATE TABLE livre (
    noliv       NUMBER NOT NULL,
    titre       CHAR(250),
    auteur      CHAR(250),
    editeur     CHAR(50),
    dateedition DATE,
    prix        FLOAT,
    isbn        NUMBER
);

ALTER TABLE livre ADD CONSTRAINT livre_pk PRIMARY KEY ( noliv );

CREATE TABLE relation_1 (
    etudiant_noetud CHAR(20) NOT NULL,
    livre_noliv     NUMBER NOT NULL,
    datesortie      DATE,
    dateretour      DATE
);

ALTER TABLE relation_1 ADD CONSTRAINT relation_1_pk PRIMARY KEY ( etudiant_noetud,
                                                                  livre_noliv );

ALTER TABLE relation_1
    ADD CONSTRAINT relation_1_etudiant_fk FOREIGN KEY ( etudiant_noetud )
        REFERENCES etudiant ( noetud );

ALTER TABLE relation_1
    ADD CONSTRAINT relation_1_livre_fk FOREIGN KEY ( livre_noliv )
        REFERENCES livre ( noliv );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 1
