create database seguimiento;
use seguimiento;

create table estados(
                        codPermiso int primary key auto_increment not null,
                        estado varchar (250),
                        uso varchar(250)
);

create table cargos(
                       codCargo int primary key auto_increment not null,
                       nombreCargo varchar (250)
);

create table usuarios(
                         codUsuario int primary key auto_increment not null,
                         nombre varchar (250),
                         apellido varchar (250),
                         cargo int,
                         nombreUsuario varchar(250),
                         contrasena varchar(250),
                         tipo int,
                         CONSTRAINT fkpermiso FOREIGN KEY (tipo) REFERENCES estados(codPermiso) on update cascade on delete cascade,
                         CONSTRAINT fkcargo FOREIGN KEY (cargo) REFERENCES cargos(codCargo) on update cascade on delete cascade
);

create table actividades(
                            codActividad int primary key auto_increment not null,
                            actividad varchar(250),
                            organizador varchar(250),
                            lugar varchar (250),
                            fecha date,
                            tipo varchar(250),
                            cantParticipantes int,
                            objetivos varchar (500),
                            observaciones varchar(500),
                            participante int,
                            CONSTRAINT fkparticipante FOREIGN KEY (participante) REFERENCES usuarios(codUsuario) on update cascade on delete cascade
);

create table capacitacion(
                             codCapacitacion int primary key auto_increment not null,
                             nombreCapacitacion varchar(250),
                             organizador varchar(250),
                             modalidad varchar (100),
                             fechaInicio date,
                             fechaFin date,
                             tipoCapacitacion varchar(100),
                             objetivos varchar(500),
                             participante int,
                             CONSTRAINT fkparticipantecp FOREIGN KEY (participante) REFERENCES usuarios(codUsuario) on update cascade on delete cascade
);
