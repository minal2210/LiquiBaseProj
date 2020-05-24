--liquibase formatted sql

--changeset your.name:1
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset your.name:2
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset other.dev:3
alter table person add column country varchar(2)

--changeset other.dev:4
alter table person add column lastName varchar(10)


--changeset other.dev:5
create table table1 (
    id int primary key
)
--rollback drop table table1;

--changeset other.dev:7
alter table person add column FName varchar(10)
--rollback alter table person drop column FName;

--changeset other.dev:8
alter table person add column LName varchar(10)
--rollback alter table person drop column LName;
