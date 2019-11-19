DROP DATABASE IF EXISTS jesus;
CREATE DATABASE utec;
use utec;
DROP TABLE IF EXISTS Tpersona;
CREATE TABLE Tpersona(
cvTpersona INT(2) zerofill auto_increment  primary key ,
NOMBRE VARCHAR(50),
Activo INT);
INSERT INTO Tpersona(nombre,activo) VALUES
("Coordinador",1),
("Profesor",1),
("Alumno",1);
DROP TABLE IF EXISTS genero;
CREATE TABLE genero(
cvGenero INT(2) zerofill auto_increment  primary key ,
NOMBRE VARCHAR(50),
Activo INT);
INSERT INTO genero(nombre,activo) VALUES
("Hombre",1),
("Mujer",1);
DROP TABLE IF EXISTS carrera;
CREATE TABLE carrera(
cvCarrera INT(2) zerofill auto_increment  primary key ,
carrera VARCHAR(50),
Activo INT);
INSERT INTO carrera(carrera,activo) VALUES
("Tic",1),
("DN",1),
("Mec",1),
("Nano",1),
("Enf",1),
("Tf",1);
DROP TABLE IF EXISTS persona;
CREATE TABLE persona(
cvPersona INT(2) zerofill auto_increment  primary key ,
NOMBRE VARCHAR(50),
app varchar(30),
apa varchar(30),
cvTpersona int(2) zerofill,
cvGenero int(2) zerofill,
curp char(18) ,
Activo INT);
INSERT INTO persona(nombre,app,apa,cvTpersona,cvGenero,curp,activo) VALUES
("Jesus","huerta","Najera","03","01","BEML920313HMCLNS01","1"),
("Toño","huerta","Perez","03","01","BEML920313HMCLNS02","1"),
("Jesus","huerta","carmona","03","01","BEML920313HMCLNS03","1"),
("Pedro","perez","Najera","03","01","BEML920313HMCLNS04","1"),
("Juan","trejo","morales","03","01","BEML920313HMCLNS05","1"),
("Erick","macias","romero","03","01","BEML920313HMCLNS06","1"),
("Carlos","romero","perez","03","01","BEML920313HMCLNS07","1"),
("jared","morales","Najera","03","01","BEML920313HMCLNS08","1"),
("Adrian","cabrera","cruz","03","01","BEML920313HMCLNS09","1"),
("Isidro","huerta","naranjo","03","01","BEML920313HMCLNS10","1"),
("Pablo","soto","cruz","03","01","BEML920313HMCLNS11","1"),
("Tomas","hernandez","macias","03","01","BEML920313HMCLNS12","1"),
("Genaro","naranjo","Naranjo","03","01","BEML920313HMCLNS13","1"),
("Gustavo","huerta","Najera","03","01","BEML920313HMCLNS14","1"),
("Roberto","hernandez","tolentino","03","01","BEML920313HMCLNS15","1"),
("Lupe","najera","hernandez","03","02","BEML920313HMCLNS16","1"),
("Marlen","carmona","lopez","03","02","BEML920313HMCLNS17","1"),
("Amairani","Tolentino","calderon","03","02","BEML920313HMCLNS18","1"),
("Fernanda","macias","jimenez","03","02","BEML920313HMCLNS19","1"),
("Jimena","trejo","Najera","03","02","BEML920313HMCLNS20","1"),
("Ariana","trejo","huerta","03","02","BEML920313HMCLNS21","1"),
("Teresa","soto","soto","03","02","BEML920313HMCLNS22","1"),
("Nazaret","romero","soto","03","02","BEML920313HMCLNS23","1"),
("Yuti","soto","Huerta","03","02","BEML920313HMCLNS24","1"),
("Fany","Perez","najera","03","02","BEML920313HMCLNS25","1"),
("Areli","cruz","soto","03","02","BEML920313HMCLNS26","1"),
("Gema","tolentino","perez","03","02","BEML920313HMCLNS27","1"),
("Beatriz","triz","soto","03","02","BEML920313HMCLNS28","1"),
("vanesa","soto","rios","03","02","BEML920313HMCLNS29","1"),
("cintia","rios","rios","03","02","BEML920313HMCLNS30","1"),
("Daniel","Rangel","rios","01","01","BEML920313HMCLNS31","1"),
("Rigo","none","rios","01","01","BEML920313HMCLNS32","1"),
("Victor","huertado","nuñez","01","01","BEML920313HMCLNS33","1"),
("Oscar","macias","ariel","01","01","BEML920313HMCLNS34","1"),
("Hugo","Nuñez","castañeda","01","01","BEML920313HMCLNS35","1"),
("Victoria","Riveros","rios","02","02","BEML920313HMCLNS36","1"),
("Fany","Oz","Ear","02","02","BEML920313HMCLNS37","1"),
("Esmeralda","fox","moon","02","02","BEML920313HMCLNS38","1"),
("Luz","down","light","02","02","BEML920313HMCLNS39","1"),
("Yuno","inno","db","02","02","BEML920313HMCLNS40","1"),
("Laura","Come","On","03","02","BEML920313HMCLNS41","1");
DROP TABLE IF EXISTS alumno;
CREATE TABLE alumno(
cvAlumno INT(2) zerofill auto_increment  primary key ,
curp char(18),
Matricula int(30),
cvCarrera int(2) zerofill,
Activo INT);
INSERT INTO alumno(curp,Matricula,cvCarrera,activo) VALUES
("BEML920313HMCLNS01","1718110301","01",1),
("BEML920313HMCLNS02","1718110302","01",1),
("BEML920313HMCLNS03","1718110303","01",1),
("BEML920313HMCLNS04","1718110304","01",1),
("BEML920313HMCLNS05","1718110305","01",1),
("BEML920313HMCLNS06","1718110306","02",1),
("BEML920313HMCLNS07","1718110307","02",1),
("BEML920313HMCLNS08","1718110308","02",1),
("BEML920313HMCLNS09","1718110309","02",1),
("BEML920313HMCLNS10","1718110310","02",1),
("BEML920313HMCLNS11","1718110311","03",1),
("BEML920313HMCLNS12","1718110312","03",1),
("BEML920313HMCLNS13","1718110313","03",1),
("BEML920313HMCLNS14","1718110314","03",1),
("BEML920313HMCLNS15","1718110315","03",1),
("BEML920313HMCLNS16","1718110316","04",1),
("BEML920313HMCLNS17","1718110317","04",1),
("BEML920313HMCLNS18","1718110318","04",1),
("BEML920313HMCLNS19","1718110319","04",1),
("BEML920313HMCLNS20","1718110320","04",1),
("BEML920313HMCLNS21","1718110321","05",1),
("BEML920313HMCLNS22","1718110322","05",1),
("BEML920313HMCLNS23","1718110323","05",1),
("BEML920313HMCLNS24","1718110324","05",1),
("BEML920313HMCLNS25","1718110325","05",1),
("BEML920313HMCLNS26","1718110326","06",1),
("BEML920313HMCLNS27","1718110327","06",1),
("BEML920313HMCLNS28","1718110328","06",1),
("BEML920313HMCLNS29","1718110329","06",1),
("BEML920313HMCLNS30","1718110330","06",1),
("BEML920313HMCLNS41","1718110331","01",1);
select count(cvGenero) from persona where  cvTpersona = 03 group by cvGenero ;

select p.*,A.matricula,C.carrera  from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera ;

select C.carrera,(Select count(cvGenero) from Persona where cvGenero= 01 and cvTpersona=03 ) as H , (Select count(cvGenero) from Persona where cvGenero= 02 and cvTpersona=03)as M from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera inner join genero as g on g.cvgenero = p.cvgenero  group by  c.carrera  ;
select count(p.cvgenero) as total from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera inner join genero as g on g.cvgenero = p.cvgenero where G.cvgenero = 01  group by  c.carrera  ;

select distinct(c.carrera),(Select count(p.cvGenero) from Persona as p inner join alumno as a on p.curp=a.curp  where p.cvGenero= 02 and c.cvcarrera = a.cvcarrera  ) as M ,(Select count(p.cvGenero) from Persona as p inner join alumno as a on p.curp=a.curp  where p.cvGenero= 01 and c.cvcarrera = a.cvcarrera  ) as H from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera inner join genero as g on g.cvgenero = p.cvgenero    ;


select * from alumno where cvCarrera=02;

show tables from utec;
SELECT * FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'utec';
select (select count(p.cvgenero)  from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera inner join genero as g on g.cvgenero = p.cvgenero where G.cvgenero = 01  group by  c.carrera  ) as H from persona as p  inner join alumno as A on p.curp = A.curp inner join carrera as C on A.cvCarrera = C.cvCarrera inner join genero as g on g.cvgenero = p.cvgenero  ;
SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA;
