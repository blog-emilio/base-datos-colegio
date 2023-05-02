/*DML*/
use Colegio;

insert into Profesores(nombreProfesor,apellidoProfesor,Telefono)
values('Jose','Perez',55478650);
insert into Profesores(nombreProfesor,apellidoProfesor,Telefono)
values('Carlos','Pop',12345678);
insert into Profesores(nombreProfesor,apellidoProfesor,Telefono)
values ('Josefino','Marin',01234567);
insert into Profesores(nombreProfesor,apellidoProfesor,Telefono)
values('Hugo','Sanchez',23456789);
insert into Profesores(nombreProfesor,apellidoProfesor,Telefono)
values('Maria','Lopez',56498247);
insert into Profesores(nombreProfesor,apellidoProfesor,Telefono)
values('Emilio','Ramos',56498295);

SELECT idProfesor AS 'id',
	nombreProfesor AS 'Nombre',
	apellidoProfesor AS 'Apellido',
	Telefono AS 'Tel.'
FROM Profesores;


insert into Materias(nombreMaterias,idProfesor)
values('Matematicas',1);
insert into Materias(nombreMaterias,idProfesor)
values('Sociales',2);
insert into Materias(nombreMaterias,idProfesor)
values('Programacion',3);
insert into Materias(nombreMaterias,idProfesor)
values('Lenguaje',4);
insert into Materias(nombreMaterias,idProfesor)
values('Psicologia',5);

SELECT M.idMaterias AS 'id',
	M.nombreMaterias AS 'Materia',
    M.idProfesor AS 'Profesor_No.', P.nombreProfesor AS 'Profesor'
FROM Materias AS M
INNER JOIN Profesores AS P ON M.idProfesor=P.idProfesor;


insert into Grados(nombreGrado,nombreCoordinador,apellidoCoordinador)
values('1ro Basico','Julia','Andrade');
insert into Grados(nombreGrado,nombreCoordinador,apellidoCoordinador)
values('2do Basico','Juan','Cordon');
insert into Grados(nombreGrado,nombreCoordinador,apellidoCoordinador)
Values('3ro Basico','Manuel','Cruz');
insert into Grados(nombreGrado,nombreCoordinador,apellidoCoordinador)
values('4to Perito','Noa','Avila');
insert into Grados(nombreGrado,nombreCoordinador,apellidoCoordinador)
values('5to Perito','Diego','Vargas');

SELECT idGrado AS 'id',
	nombreGrado AS 'Grado',
    nombreCoordinador AS 'Nombre Coordinador',
    apellidoCoordinador AS 'Apellido Cordinador'
FROM Grados;


insert into Alumnos(nombreAlumno,apellidoAlumno,Grado,Materia,idProfesor)
values('Lucia','Ariza',1,2,3);
insert into Alumnos(nombreAlumno,apellidoAlumno,Grado,Materia,idProfesor)
values('Emma','Baes',3,4,4);
insert into Alumnos(nombreAlumno,apellidoAlumno,Grado,Materia,idProfesor)
values('Victor','Bolaños',4,3,1);
insert into Alumnos(nombreAlumno,apellidoAlumno,Grado,Materia,idProfesor)
values('Alejandro','Ramos',5,3,4);
insert into Alumnos(nombreAlumno,apellidoAlumno,Grado,Materia,idProfesor)
Values('Antonio','Soliz',2,5,6);

SELECT
	A.idAlumnos AS 'id',
    A.nombreAlumno AS 'Nombre',
    A.apellidoAlumno AS 'Apellido',
    A.Grado AS 'Grado No.', G.nombreGrado AS 'Grado', G.nombreCoordinador AS 'Coordinador',
    A.Materia AS 'Materia No.', M.nombreMaterias AS 'Materia',
    A.idProfesor AS 'Profesor No.', P.nombreProfesor AS 'Profesor'
FROM Alumnos AS A
INNER JOIN Profesores AS P ON A.idProfesor=P.idProfesor
INNER JOIN Materias AS M ON A.Materia=M.idMaterias
INNER JOIN Grados AS G ON A.Grado=G.idGrado;

