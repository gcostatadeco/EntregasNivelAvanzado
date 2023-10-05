create database empleados;
use empleados;
-- importante si tengo una tabla que contiene una id foranea, prinmero debo ingresar los 
-- datos en la tabla d ela que relaciona esa id--
create table tablatrabajos(
idTrabajos int unsigned not null auto_increment,
trabajosEmpleados varchar(50) not null,
primary key (idTrabajos)
);
insert tablatrabajos (trabajosEmpleados) value ('Programador Senior'),
('Desarrollador web'),('Programador'),('Especialista Multimedia'),('Disenador web'),('administrador de Sistemas'),
('Ejecutivo de ventas'),('Gerente soporte tecnico'),('Gerente finanzas'),('Presidente');
create table tablaEmpleados(
idEmpleados int unsigned not null auto_increment,
nombreEmpleados varchar(50) not null,
apellidoEmpleados varchar(50) not null,
salarioEmpleados int not null,
edadEmpleados varchar(50) not null,
mailEmpleados varchar(50) not null,
TrabajosEmpleado varchar(50) not null,
primary key (idEmpleados)
-- foreign key (Trabajosid) references tablatrabajos(idTrabajos)
);
-- alter table tablaEmpleados add foreign key(Trabajosid) references  tablatrabajos(idTrabajos);
SELECT * FROM tablatrabajos;
insert into tablaEmpleados ( nombreEmpleados,apellidoEmpleados,edadEmpleados,salarioEmpleados,mailEmpleados,TrabajosEmpleado)
-- ( nombreEmpleados,apellidoEmpleados,salarioEmpleados,edadEmpleados,mailEmpleados,Trabajosid)
  values('Juan','Hagan','32','1200','juan_hagan@bignet.com','Programador Senior '),
  ('Gonzalo','Pilla','32','1100','g_pilla@bignet.com','Programador Senior'),
  ('Ana','Dharma','27','1200','juan_hagan@bignet.com','Desarrollador Web'),
  ('Maria','Anchor','26','850','mary@bignet.com','Desarrollador Web'),
  ('Alfred','Fernandez','31','750','af@bignet.com','Programador')
  ,('Juan','Agüero','36','850','eddi@bignet.com','Programador'),
  ('Eduardo','Sacan','25','850','eddi@bignet.com','Programador'),
  ('Alejandro','Nanda','32','700','alenanda@bignet.com','Especialista
Multimedia'),
  ('Hernan','Rosso','33','900','hernan@bignet.com','Especialista
Multimedia'),
  ('Pablo','Simon','43','850','ps@bignet.com','Diseñador Web'),
  ('Jimena','Cazado','32','1100','jimena@bignet.com','Administrador de
sistemas'),
  ('Roberto','Luis','35','1000','roberto@bignet.com','Administrador de
sistemas'),
  ('Daniel','Gutierrez','34','9000','daniel@bignet.com','Ejecutivo de Ventas
Senior'),
  ('Miguel','Harper','36','1200','miguel@bignet.com','Ejecutivo de ventas'),
  ('Monica','Sanchez','30','900','monica@bignet.com','Ejecutivo de ventas'),
  ('Alicia','Simlai','27','720','alicia@bignet.com','Ejecutivo de ventas'),
  ('Jose','Iriarte','27','720','sabrina@bignet.com','Gerente de Soporte
tecnico'),
  ('Sabrina','Allende','32','2000','sabrina@bignem.com','Presidente');
  -- ¿Cuales son los nombres y la ocupación de cada uno de los empleados?
  SELECT nombreEmpleados, TrabajosEmpleado FROM empleados.tablaempleados;
 -- 2) ¿Cuál es el nombre y la edad de cada uno de los empleados?
SELECT nombreEmpleados, edadEmpleados FROM empleados.tablaempleados;
-- 3) ¿Cuál es el nombre y la edad de todos los programadores?
SELECT nombreEmpleados, edadEmpleados, TrabajosEmpleado  from empleados.tablaempleados where TrabajosEmpleado like "%Programador%";
-- 4) ¿Cuáles son los empleados de mas de 30 años?
SELECT nombreEmpleados, apellidoEmpleados, edadEmpleados  from empleados.tablaempleados where edadEmpleados >30;
-- 5) ¿Cuál es el apellido y el mail de los empleados llamados Juan?
SELECT  apellidoEmpleados, mailEmpleados  from empleados.tablaempleados where nombreEmpleados like "%Juan%";
-- 6) ¿Cuál es el nombre de las personas que trabajan como Programadores o Desarrolladores Web?
SELECT  nombreEmpleados, TrabajosEmpleado  from empleados.tablaempleados where TrabajosEmpleado like "% Desarrollador Web %" or  "%Desarrollador Web%";
-- 7) Mostrar una lista (nro_emp, nombre, apellido, trabajo) las personas cuyo numero de empleado esté entre 15 y 20
select idEmpleados, nombreEmpleados, apellidoEmpleados, TrabajosEmpleado from empleados.tablaempleados where idEmpleados >15 and idEmpleados <20;
-- 8) ¿Cuáles son los Programadores que ganan menos de $800?
select nombreEmpleados, apellidoEmpleados from empleados.tablaempleados where TrabajosEmpleado like "%Programador%" and salarioEmpleados<800;
-- 9) ¿Cuáles son los Programadores que ganan entre $750 y $900?
select nombreEmpleados, apellidoEmpleados from empleados.tablaempleados where TrabajosEmpleado like "%Programador%" and 
(salarioEmpleados >=750 and salarioEmpleados <=900);
 


-- drop table tablatrabajos;
drop table tablaEmpleados;
-- drop table tablaempleados;

 
 