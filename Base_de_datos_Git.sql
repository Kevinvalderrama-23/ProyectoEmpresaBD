Create database Empresa;
use Empresa;

Drop table TipoDocumento;

Create table Persona
(
	IdPersona int primary key identity(1,1),
	Nombre Nvarchar (50),
	Apellido Nvarchar(50),
	NumeroIdentificacion Nvarchar (50) unique,
	Email Nvarchar (50) Unique,
	TipoDoc int,
	FechaCreacion date,
);

drop table Usuario
Create table Usuario(
	Id int primary key identity(1,1),
	Usuario Nvarchar (50),
	Pass Nvarchar (100),
	FechaCreacion date
);


insert into Usuario(Usuario,Pass,FechaCreacion) values ('kevin','85f5e10431f69bc2a14046a13aabaefc660103b6de7a84f75c4b96181d03f0b5','2024-11-29')
Select * From Usuario;

delete TipoDoc


/*Ya creamos todos los modelos, faltan rectificarlos, crear los contextos y realizar los controladores y las vistas*/



insert into Persona (Nombre,Apellido,NumeroIdentificacion,Email,FechaCreacion,TipoDoc) values ('Kevin','Valderrama','1031124260','Valderramak05@Gmail.com','2024-11-22','CC')

drop procedure sp_Insertar_Usuario
create procedure sp_Insertar_Usuario 
	@Usuario Nvarchar(50),
	@Pass Nvarchar(100),
	@FechaCreacion Date
as
begin 
	Insert into Usuario values (@Usuario,@Pass,@FechaCreacion)
end;

execute sp_Insertar_Usuario @Usuario = 'kevin', @Pass = '83353fc5a8fdb345a327b9cd55d88302fc7daec0026bc432025e0eef6944e7de', @FechaCreacion = '2024-11-26'

select * from Usuario

Create table TipoDocumento
(
	IdDoc int primary key identity(1,1),
	NombreDoc Nvarchar(50)
)