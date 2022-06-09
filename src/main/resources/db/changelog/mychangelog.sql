--liquibase formatted sql
--changeset karanzijm:1
create table test1(
		id int primary key,
		name varchar(255));
	
--rollback drop table test1;

--changeset karanzijm:2
insert into test1 (id, name) values (1, 'name 1');
insert into test1 (id, name) values (2, 'name 2');

--changeset karanzijm:3 dbms:postgresql
create sequence seq_test;

--changeset karanzijm:4  
ALTER TABLE test1
ADD Email varchar(255); 
