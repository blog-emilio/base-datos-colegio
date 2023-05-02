/* DDL*/
Create database Colegio;

use Colegio;

Create table Profesores(
idProfesor int auto_increment not null,
nombreProfesor varchar(20) not null,
apellidoProfesor varchar(20) not null,
Telefono int not null,
primary key (idProfesor)
);

Create table Materias(
idMaterias int auto_increment not null,
nombreMaterias varchar(30) not null,
idProfesor int not null,
primary key (idMaterias),
foreign key (idProfesor) references Profesores(idProfesor)
);

Create table Grados(
idGrado int auto_increment not null,
nombreGrado varchar(30) not null,
nombreCoordinador varchar(20) not null,
apellidoCoordinador varchar(20) not null,
primary key (idGrado)
);

Create table Alumnos(
idAlumnos int auto_increment not null,
nombreAlumno varchar(20) not null,
apellidoAlumno varchar(20) not null,
Grado int not null,
Materia int not null,
idProfesor int not null,
primary key(idAlumnos),
foreign key (Grado) references Grados(idGrado),
foreign key (Materia) references Materias(idMaterias),
foreign key (idProfesor) references Profesores(idProfesor)
);

