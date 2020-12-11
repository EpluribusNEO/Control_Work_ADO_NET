
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/10/2020 01:16:30
-- Generated from EDMX file: C:\Users\Brothers\Desktop\EPluribusNEO\ИБ-76с\Курс 4\4 курс 7 сем\nonsort\C-Sharp\web\ControlWork02\ControlWork02\EModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [passport02];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TechObjectMaintenanceWorks]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MaintenanceWorksSet] DROP CONSTRAINT [FK_TechObjectMaintenanceWorks];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[TechObjectSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TechObjectSet];
GO
IF OBJECT_ID(N'[dbo].[MaintenanceWorksSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MaintenanceWorksSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TechObjectSet'
CREATE TABLE [dbo].[TechObjectSet] (
    [Id] uniqueidentifier  NOT NULL,
    [ProductionDate] nvarchar(max)  NOT NULL,
    [ShippingDate] nvarchar(max)  NOT NULL,
    [WarrantyPeriod] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MaintenanceWorksSet'
CREATE TABLE [dbo].[MaintenanceWorksSet] (
    [Id] uniqueidentifier  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [WorkshipDate] nvarchar(max)  NOT NULL,
    [WorkshipTime] nvarchar(max)  NOT NULL,
    [EngineerID] int  NOT NULL,
    [TechObject_Id] uniqueidentifier  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'TechObjectSet'
ALTER TABLE [dbo].[TechObjectSet]
ADD CONSTRAINT [PK_TechObjectSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MaintenanceWorksSet'
ALTER TABLE [dbo].[MaintenanceWorksSet]
ADD CONSTRAINT [PK_MaintenanceWorksSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TechObject_Id] in table 'MaintenanceWorksSet'
ALTER TABLE [dbo].[MaintenanceWorksSet]
ADD CONSTRAINT [FK_TechObjectMaintenanceWorks]
    FOREIGN KEY ([TechObject_Id])
    REFERENCES [dbo].[TechObjectSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TechObjectMaintenanceWorks'
CREATE INDEX [IX_FK_TechObjectMaintenanceWorks]
ON [dbo].[MaintenanceWorksSet]
    ([TechObject_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------