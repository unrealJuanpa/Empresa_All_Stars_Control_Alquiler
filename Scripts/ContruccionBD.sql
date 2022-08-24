/*
Created: 23/08/2022
Modified: 23/08/2022
Model: Microsoft SQL Server 2019
Database: MS SQL Server 2019
*/


-- Create tables section -------------------------------------------------

-- Table Alquiler_de_espacio

CREATE TABLE [Alquiler_de_espacio]
(
 [Alquiler_evento] Int IDENTITY(1,1) NOT NULL,
 [Nombre_del_evento] Varchar(120) NOT NULL,
 [Cantidad_de_asistentes] Int NOT NULL,
 [Fecha_del_evento] Date NOT NULL,
 [Hora_del_evento] Time NOT NULL,
 [Encargado] Int NULL,
 [Show] Int NULL
)
go

-- Create indexes for table Alquiler_de_espacio

CREATE INDEX [IX_Relationship15] ON [Alquiler_de_espacio] ([Encargado])
go

CREATE INDEX [IX_Relationship19] ON [Alquiler_de_espacio] ([Show])
go

-- Add keys for table Alquiler_de_espacio

ALTER TABLE [Alquiler_de_espacio] ADD CONSTRAINT [PK_Alquiler_de_espacio] PRIMARY KEY ([Alquiler_evento])
go

-- Table Encargado_del_evento

CREATE TABLE [Encargado_del_evento]
(
 [Encargado] Int IDENTITY(1,1) NOT NULL,
 [Nombre_encargado] Varchar(120) NOT NULL,
 [Telefono_contacto] Int NOT NULL,
 [Correo_electronico] Varchar(256) NOT NULL
)
go

-- Add keys for table Encargado_del_evento

ALTER TABLE [Encargado_del_evento] ADD CONSTRAINT [PK_Encargado_del_evento] PRIMARY KEY ([Encargado])
go

-- Table Show_a_presentar

CREATE TABLE [Show_a_presentar]
(
 [Show] Int IDENTITY(1,1) NOT NULL,
 [Nombre_show] Varchar(120) NOT NULL,
 [Descripcion] Varchar(512) NULL,
 [Costo_por_hora] Decimal(18,2) NOT NULL,
 [Tipo_show] Int NULL
)
go

-- Create indexes for table Show_a_presentar

CREATE INDEX [IX_Relationship20] ON [Show_a_presentar] ([Tipo_show])
go

-- Add keys for table Show_a_presentar

ALTER TABLE [Show_a_presentar] ADD CONSTRAINT [PK_Show_a_presentar] PRIMARY KEY ([Show])
go

-- Table Tipo_de_show_a_presentar

CREATE TABLE [Tipo_de_show_a_presentar]
(
 [Tipo_show] Int IDENTITY(1,1) NOT NULL,
 [Nombre_tipo] Varchar(120) NOT NULL,
 [Descripcion_tipo] Varchar(512) NULL
)
go

-- Add keys for table Tipo_de_show_a_presentar

ALTER TABLE [Tipo_de_show_a_presentar] ADD CONSTRAINT [PK_Tipo_de_show_a_presentar] PRIMARY KEY ([Tipo_show])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [Alquiler_de_espacio] ADD CONSTRAINT [Relationship15] FOREIGN KEY ([Encargado]) REFERENCES [Encargado_del_evento] ([Encargado]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Alquiler_de_espacio] ADD CONSTRAINT [Relationship19] FOREIGN KEY ([Show]) REFERENCES [Show_a_presentar] ([Show]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Show_a_presentar] ADD CONSTRAINT [Relationship20] FOREIGN KEY ([Tipo_show]) REFERENCES [Tipo_de_show_a_presentar] ([Tipo_show]) ON UPDATE NO ACTION ON DELETE NO ACTION
go




