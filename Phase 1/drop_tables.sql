-- Delete tables if exist --
DROP SEQUENCE seq_universidad;
DROP TRIGGER trg_universidad;
DROP TABLE universidad CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_usuario;
DROP TRIGGER trg_usuario;
DROP TABLE usuario CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_evento;
DROP TRIGGER trg_evento;
DROP TABLE evento CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_empresa;
DROP TRIGGER trg_empresa;
DROP TABLE empresa CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_areaconocimiento;
DROP TRIGGER trg_area_conocimiento;
DROP TABLE area_conocimiento CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_rel_univ_usuario;
DROP TRIGGER trg_rel_univ_usuario;
DROP TABLE rel_univ_usuario CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_rel_evento_univ;
DROP TRIGGER trg_rel_evento_univ;
DROP TABLE rel_evento_univ CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_rel_evento_empresa;
DROP TRIGGER trg_rel_evento_empresa;
DROP TABLE rel_evento_empresa CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_participa;
DROP TRIGGER trg_participa;
DROP TABLE participa CASCADE CONSTRAINTS;
 
DROP SEQUENCE seq_dicta;
DROP TRIGGER trg_dicta;
DROP TABLE dicta CASCADE CONSTRAINTS;