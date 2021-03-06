create database if not exists Aprotect;
use Aprotect;

create table if not exists Users (
	user_id    varchar(150) not null,
	user_ps    varchar(150) not null,
	user_tok   varchar(150) not null,
	user_sites text                 ,
	UNIQUE (user_id),
	UNIQUE (user_tok)
);

create table if not exists Results (
	test_domain varchar(300) not null,
	test_result text         not null,
	UNIQUE (test_domain)
);

create table if not exists Toplist (
	vul_name  varchar(500) not null,
	vul_count int          not null,
	UNIQUE (vul_name)
);