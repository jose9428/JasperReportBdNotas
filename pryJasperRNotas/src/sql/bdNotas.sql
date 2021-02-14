# MySQL-Front Dump 2.5
#
# Host: localhost   Database: bdtransito
# --------------------------------------------------------
# Server version 5.0.16-nt
flush privileges;

# Eliminando objetos si ya existen
DROP DATABASE IF EXISTS bdnotas;

CREATE DATABASE bdnotas;

USE bdnotas;


CREATE TABLE IF NOT EXISTS alumno (
  IdAlumno varchar(5) ,
  ApeAlumno varchar(30) ,
  NomAlumno varchar(30) ,
  Idesp varchar(3) ,
  PROCE varchar(1) 
);



#
# Dumping data for table 'alumno'
#
INSERT INTO alumno VALUES("A0001", "Donayre Mena", "Christian", "E01", "N");
INSERT INTO alumno VALUES("A0002", "Ortiz Rodriguez", "Freddy", "E05", "P");
INSERT INTO alumno VALUES("A0003", "Silva Mejia", "Ruth Ketty", "E04", "N");
INSERT INTO alumno VALUES("A0004", "Melendez Noriega", "Liliana", "E05", "P");
INSERT INTO alumno VALUES("A0005", "Huerta Leon", "Silvia", "E01", "N");
INSERT INTO alumno VALUES("A0006", "Carranza Fuentes", "Maria Elena", "E02", "P");
INSERT INTO alumno VALUES("A0007", "Prado Castro", "Gabriela", "E01", "N");
INSERT INTO alumno VALUES("A0008", "Atuncar Mesias", "Juan", "E02", "P");
INSERT INTO alumno VALUES("A0009", "Aguilar Zavala", "Patricia Elena", "E05", "P");
INSERT INTO alumno VALUES("A0010", "Rodruigez Trujillo", "Rubén Eduardo", "E05", "N");
INSERT INTO alumno VALUES("A0011", "Canales Ruiz", "Gino Leonel", "E04", "P");
INSERT INTO alumno VALUES("A0012", "Ruiz Quispe", "Edgar", "E05", "N");
INSERT INTO alumno VALUES("A0013", "PanduroTerrazas", "Omar", "E03", "P");
INSERT INTO alumno VALUES("A0014", "Zita Padilla", "Peter Wilmer", "E03", "N");
INSERT INTO alumno VALUES("A0015", "Ternero Ubillús", "Luis", "E02", "P");
INSERT INTO alumno VALUES("A0016", "Rivera García", "Raúl Joel", "E01", "P");
INSERT INTO alumno VALUES("A0017", "Pomar García", "Ana", "E01", "P");
INSERT INTO alumno VALUES("A0018", "Palomares Venegas", "Mercedes", "E01", "N");
INSERT INTO alumno VALUES("A0019", "Ruiz Venegaz", "Luis Alberto", "E01", "P");
INSERT INTO alumno VALUES("A0020", "Tejada Bernal", "Janet", "E01", "P");
INSERT INTO alumno VALUES("A0021", "Sotelo Canales", "Juan Carlos", "E05", "P");
INSERT INTO alumno VALUES("A0022", "LLosa Montalvan", "Karla", "E05", "P");
INSERT INTO alumno VALUES("A0023", "Galarza Torres", "Hugo", "E03", "P");
INSERT INTO alumno VALUES("A0024", "Valverde Jaramillo", "Saul", "E05", "N");
INSERT INTO alumno VALUES("A0025", "Cipriano Avila", "Roxana", "E01", "N");
INSERT INTO alumno VALUES("A0026", "Rodriguez Quispe", "Luis Alberto", "E05", "P");
INSERT INTO alumno VALUES("A0027", "Huerta Leon", "Marco Antonio", "E05", "N");
INSERT INTO alumno VALUES("A0028", "Ortiz Fuentes", "Ana María", "E04", "P");
INSERT INTO alumno VALUES("A0029", "Rivera Jaramillo", "Martha", "E05", "P");
INSERT INTO alumno VALUES("A0030", "Bustamante Campos", "Guino", "E02", "N");


#
# Table structure for table 'curso'
#

CREATE TABLE IF NOT EXISTS curso (
  IdCurso varchar(4) ,
  NomCurso varchar(35) ,
  credito int(11) 
);



#
# Dumping data for table 'curso'
#
INSERT INTO curso VALUES("C001", "Matematica Basica", "3");
INSERT INTO curso VALUES("C002", "Filosofia I", "6");
INSERT INTO curso VALUES("C003", "Psicologia Industrial", "5");
INSERT INTO curso VALUES("C004", "Algoritmica", "4");
INSERT INTO curso VALUES("C005", "Software de Aplicacion", "5");
INSERT INTO curso VALUES("C006", "Lenguaje de Programacion I", "5");
INSERT INTO curso VALUES("C007", "Lenguaje Java ", "4");
INSERT INTO curso VALUES("C008", "Matematica II", "3");
INSERT INTO curso VALUES("C009", "Ingles Tecnico", "5");
INSERT INTO curso VALUES("C010", "Lenguaje de Programacion III", "3");
INSERT INTO curso VALUES("C011", "Aplicaciones Cliente/Servidor", "4");


#
# Table structure for table 'cursoprofe'
#

CREATE TABLE IF NOT EXISTS cursoprofe (
  Codcur varchar(4) ,
  CodPro varchar(5) ,
  Nhoras int(11) 
);



#
# Dumping data for table 'cursoprofe'
#
INSERT INTO cursoprofe VALUES("C001", "P001", "23");
INSERT INTO cursoprofe VALUES("C002", "P002", "15");
INSERT INTO cursoprofe VALUES("C003", "P001", "16");
INSERT INTO cursoprofe VALUES("C004", "P003", "20");
INSERT INTO cursoprofe VALUES("C005", "P003", "18");


#
# Table structure for table 'especialidad'
#

CREATE TABLE IF NOT EXISTS especialidad (
  Idesp varchar(3) ,
  Nomesp varchar(30) ,
  costo decimal(10,0) 
);



#
# Dumping data for table 'especialidad'
#
INSERT INTO especialidad VALUES("E01", "Educacion Informatica", "2500");
INSERT INTO especialidad VALUES("E02", "Administracion", "1800");
INSERT INTO especialidad VALUES("E03", "Contabilidad", "2000");
INSERT INTO especialidad VALUES("E04", "Idiomas", "1800");
INSERT INTO especialidad VALUES("E05", "Ing. de Sistemas", "2800");


#
# Table structure for table 'notas'
#

CREATE TABLE IF NOT EXISTS notas (
  IdAlumno varchar(5) ,
  IdCurso varchar(4) ,
  ExaParcial float ,
  ExaFinal float 
);



#
# Dumping data for table 'notas'
#
INSERT INTO notas VALUES("A0001", "C001", "11", "13");
INSERT INTO notas VALUES("A0001", "C003", "9", "13");
INSERT INTO notas VALUES("A0001", "C004", "18", "13");
INSERT INTO notas VALUES("A0002", "C002", "15", "13");
INSERT INTO notas VALUES("A0002", "C005", "11", "13");
INSERT INTO notas VALUES("A0002", "C006", "14", "13");
INSERT INTO notas VALUES("A0002", "C008", "12", "13");
INSERT INTO notas VALUES("A0003", "C002", "16", "13");
INSERT INTO notas VALUES("A0003", "C003", "8", "13");
INSERT INTO notas VALUES("A0003", "C004", "7", "13");
INSERT INTO notas VALUES("A0004", "C002", "11", "13");
INSERT INTO notas VALUES("A0004", "C006", "11", "13");
INSERT INTO notas VALUES("A0004", "C007", "11", "13");
INSERT INTO notas VALUES("A0005", "C001", "17", "13");
INSERT INTO notas VALUES("A0005", "C002", "12", "13");
INSERT INTO notas VALUES("A0005", "C003", "11", "13");
INSERT INTO notas VALUES("A0006", "C001", "11", "15");
INSERT INTO notas VALUES("A0006", "C006", "11", "12");
INSERT INTO notas VALUES("A0006", "C007", "8", "13");
INSERT INTO notas VALUES("A0007", "C001", "11", "13");
INSERT INTO notas VALUES("A0007", "C004", "71", "13");
INSERT INTO notas VALUES("A0007", "C005", "11", "13");
INSERT INTO notas VALUES("A0008", "C001", "11", "13");
INSERT INTO notas VALUES("A0008", "C008", "5", "13");
INSERT INTO notas VALUES("A0008", "C009", "7", "13");
INSERT INTO notas VALUES("A0009", "C002", "11", "13");
INSERT INTO notas VALUES("A0009", "C009", "11", "13");
INSERT INTO notas VALUES("A0009", "C010", "11", "13");
INSERT INTO notas VALUES("A0010", "C009", "11", "13");
INSERT INTO notas VALUES("A0010", "C010", "11", "13");
INSERT INTO notas VALUES("A0010", "C011", "11", "13");
INSERT INTO notas VALUES("A0011", "C001", "11", "13");
INSERT INTO notas VALUES("A0011", "C002", "11", "13");
INSERT INTO notas VALUES("A0011", "C004", "11", "13");
INSERT INTO notas VALUES("A0012", "C001", "11", "13");
INSERT INTO notas VALUES("A0012", "C005", "15", "10");
INSERT INTO notas VALUES("A0012", "C006", "17", "10");
INSERT INTO notas VALUES("A0013", "C001", "11", "3");
INSERT INTO notas VALUES("A0013", "C002", "7", "10");
INSERT INTO notas VALUES("A0013", "C003", "15", "13");
INSERT INTO notas VALUES("A0013", "C004", "12", "13");
INSERT INTO notas VALUES("A0014", "C001", "11", "13");
INSERT INTO notas VALUES("A0014", "C004", "12", "13");
INSERT INTO notas VALUES("A0014", "C005", "15", "13");
INSERT INTO notas VALUES("A0015", "C001", "11", "13");
INSERT INTO notas VALUES("A0015", "C003", "14", "13");
INSERT INTO notas VALUES("A0015", "C004", "15", "12");
INSERT INTO notas VALUES("A0016", "C001", "11", "13");
INSERT INTO notas VALUES("A0016", "C005", "12", "11");
INSERT INTO notas VALUES("A0016", "C006", "17", "12");
INSERT INTO notas VALUES("A0021", "C001", "11", "17");
INSERT INTO notas VALUES("A0021", "C005", "14", "3");
INSERT INTO notas VALUES("A0021", "C006", "17", "13");
INSERT INTO notas VALUES("A0022", "C001", "11", "13");
INSERT INTO notas VALUES("A0022", "C002", "8", "13");
INSERT INTO notas VALUES("A0022", "C003", "7", "13");
INSERT INTO notas VALUES("A0023", "C001", "10", "13");
INSERT INTO notas VALUES("A0023", "C008", "12", "13");
INSERT INTO notas VALUES("A0023", "C009", "18", "13");
INSERT INTO notas VALUES("A0024", "C001", "10", "3");
INSERT INTO notas VALUES("A0024", "C002", "11", "9");
INSERT INTO notas VALUES("A0024", "C003", "16", "8");
INSERT INTO notas VALUES("A0024", "C007", "16", "13");
INSERT INTO notas VALUES("A0025", "C001", "1", "13");
INSERT INTO notas VALUES("A0025", "C002", "10", "18");
INSERT INTO notas VALUES("A0028", "C001", "17", "7");
INSERT INTO notas VALUES("A0028", "C005", "16", "13");
INSERT INTO notas VALUES("A0029", "C001", "11", "13");


#
# Table structure for table 'pagos'
#

CREATE TABLE IF NOT EXISTS pagos (
  IdAlumno varchar(5) ,
  CICLO varchar(6) ,
  NCUOTA int(11) ,
  MONTO decimal(10,0) ,
  FECHA datetime 
);



#
# Dumping data for table 'pagos'
#
INSERT INTO pagos VALUES("A0001", "2017-2", "1", "300", "2017-10-10 00:00:00");
INSERT INTO pagos VALUES("A0001", "2017-2", "2", "340", "2017-11-11 00:00:00");
INSERT INTO pagos VALUES("A0001", "2016-1", "3", "340", "2017-12-12 00:00:00");
INSERT INTO pagos VALUES("A0002", "2017-2", "1", "300", "2017-04-10 00:00:00");
INSERT INTO pagos VALUES("A0002", "2017-2", "2", "350", "2017-05-11 00:00:00");
INSERT INTO pagos VALUES("A0002", "2016-1", "1", "360", "2017-04-12 00:00:00");
INSERT INTO pagos VALUES("A0002", "2016-1", "2", "370", "2017-05-11 00:00:00");
INSERT INTO pagos VALUES("A0003", "2017-1", "1", "340", "2017-06-11 00:00:00");
INSERT INTO pagos VALUES("A0003", "2017-1", "2", "340", "2017-07-12 00:00:00");
INSERT INTO pagos VALUES("A0003", "2017-2", "1", "340", "2017-04-11 00:00:00");
INSERT INTO pagos VALUES("A0004", "2017-2", "1", "300", "2017-09-03 00:00:00");
INSERT INTO pagos VALUES("A0004", "2017-2", "2", "380", "2017-10-01 00:00:00");
INSERT INTO pagos VALUES("A0004", "2016-1", "1", "370", "2016-05-11 00:00:00");
INSERT INTO pagos VALUES("A0005", "2017-2", "1", "350", "2017-10-11 00:00:00");
INSERT INTO pagos VALUES("A0005", "2017-2", "2", "360", "2017-08-11 00:00:00");
INSERT INTO pagos VALUES("A0005", "2016-1", "1", "380", "2016-05-09 00:00:00");
INSERT INTO pagos VALUES("A0006", "2017-2", "3", "300", "2017-09-13 00:00:00");
INSERT INTO pagos VALUES("A0006", "2016-1", "1", "340", "2017-03-11 00:00:00");
INSERT INTO pagos VALUES("A0006", "2016-1", "2", "390", "2016-04-11 00:00:00");
INSERT INTO pagos VALUES("A0007", "2017-2", "1", "340", "2017-06-11 00:00:00");
INSERT INTO pagos VALUES("A0007", "2016-1", "1", "380", "2016-04-11 00:00:00");
INSERT INTO pagos VALUES("A0007", "2016-1", "2", "440", "2016-06-11 00:00:00");
INSERT INTO pagos VALUES("A0008", "2017-1", "1", "370", "2016-02-11 00:00:00");
INSERT INTO pagos VALUES("A0008", "2017-2", "1", "340", "2017-08-11 00:00:00");
INSERT INTO pagos VALUES("A0008", "2017-2", "2", "320", "2017-09-11 00:00:00");
INSERT INTO pagos VALUES("A0009", "2017-2", "1", "340", "2017-06-11 00:00:00");
INSERT INTO pagos VALUES("A0009", "2017-2", "2", "330", "2017-07-11 00:00:00");
INSERT INTO pagos VALUES("A0009", "2016-1", "1", "340", "2016-04-11 00:00:00");
INSERT INTO pagos VALUES("A0010", "2017-2", "1", "340", "2017-07-13 00:00:00");
INSERT INTO pagos VALUES("A0010", "2017-2", "2", "330", "2017-09-11 00:00:00");
INSERT INTO pagos VALUES("A0010", "2016-1", "1", "350", "2016-06-11 00:00:00");
INSERT INTO pagos VALUES("A0011", "2017-2", "1", "340", "2017-06-11 00:00:00");
INSERT INTO pagos VALUES("A0011", "2017-2", "2", "330", "2017-08-11 00:00:00");
INSERT INTO pagos VALUES("A0011", "2016-1", "2", "370", "2016-06-11 00:00:00");
INSERT INTO pagos VALUES("A0012", "2017-2", "1", "340", "2017-08-11 00:00:00");
INSERT INTO pagos VALUES("A0012", "2017-2", "2", "370", "2017-09-11 00:00:00");
INSERT INTO pagos VALUES("A0012", "2016-1", "1", "390", "2016-08-15 00:00:00");
INSERT INTO pagos VALUES("A0013", "2017-2", "1", "340", "2017-06-11 00:00:00");
INSERT INTO pagos VALUES("A0013", "2016-1", "1", "340", "2016-04-11 00:00:00");
INSERT INTO pagos VALUES("A0013", "2016-1", "2", "350", "2016-05-11 00:00:00");
INSERT INTO pagos VALUES("A0013", "2016-1", "3", "370", "2016-06-11 00:00:00");
INSERT INTO pagos VALUES("A0014", "2017-2", "1", "340", "2017-10-11 00:00:00");
INSERT INTO pagos VALUES("A0014", "2017-2", "2", "330", "2017-11-11 00:00:00");
INSERT INTO pagos VALUES("A0014", "2016-1", "1", "350", "2016-05-11 00:00:00");
INSERT INTO pagos VALUES("A0016", "2017-2", "1", "340", "2017-09-11 00:00:00");
INSERT INTO pagos VALUES("A0016", "2017-2", "2", "360", "2017-10-11 00:00:00");
INSERT INTO pagos VALUES("A0016", "2016-1", "1", "340", "2016-04-11 00:00:00");
INSERT INTO pagos VALUES("A0021", "2017-2", "1", "340", "2017-07-11 00:00:00");
INSERT INTO pagos VALUES("A0021", "2017-2", "2", "480", "2017-08-10 00:00:00");
INSERT INTO pagos VALUES("A0021", "2016-1", "1", "340", "2016-05-10 00:00:00");
INSERT INTO pagos VALUES("A0022", "2017-2", "1", "340", "2017-08-11 00:00:00");
INSERT INTO pagos VALUES("A0022", "2017-2", "2", "330", "2017-09-11 00:00:00");
INSERT INTO pagos VALUES("A0022", "2016-1", "1", "350", "2016-03-11 00:00:00");
INSERT INTO pagos VALUES("A0023", "2017-2", "1", "340", "2017-09-11 00:00:00");
INSERT INTO pagos VALUES("A0023", "2017-2", "2", "370", "2017-10-11 00:00:00");
INSERT INTO pagos VALUES("A0023", "2016-1", "1", "370", "2016-05-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2017-2", "1", "340", "2017-06-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2017-2", "2", "340", "2017-08-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2016-1", "1", "340", "2016-04-11 00:00:00");
INSERT INTO pagos VALUES("A0024", "2016-1", "2", "340", "2016-05-11 00:00:00");
INSERT INTO pagos VALUES("A0025", "2017-2", "1", "340", "2017-08-11 00:00:00");
INSERT INTO pagos VALUES("A0025", "2017-2", "2", "370", "2017-09-11 00:00:00");
INSERT INTO pagos VALUES("A0028", "2016-1", "1", "340", "2016-05-11 00:00:00");
INSERT INTO pagos VALUES("A0028", "2016-1", "2", "390", "2016-06-11 00:00:00");
INSERT INTO pagos VALUES("A0029", "2017-1", "1", "340", "2017-06-11 00:00:00");


#
# Table structure for table 'profesor'
#

CREATE TABLE IF NOT EXISTS profesor (
  Codpro varchar(4) ,
  Nompro varchar(30) ,
  Espec varchar(15) ,
  Grado varchar(20) 
);



#
# Dumping data for table 'profesor'
#
INSERT INTO profesor VALUES("P001", "Camino Pedro", "Informatica", "Licenciado");
INSERT INTO profesor VALUES("P002", "Huarcaya Laura", "Idiomas", "Licenciado");
INSERT INTO profesor VALUES("P003", "Maita Arturo", "Educacion", "Licenciado");
INSERT INTO profesor VALUES("P004", "Martinez Miguel", "Administracion", "Bachiller");
INSERT INTO profesor VALUES("P005", "Caceres Ana", "Idiomas", "Bachiller");
INSERT INTO profesor VALUES("P006", "Castillo Maria", "Contabilidad", "Licenciado");
INSERT INTO profesor VALUES("P007", "Gonzalez Alfredo", "Administrac.", "Bachiller");
