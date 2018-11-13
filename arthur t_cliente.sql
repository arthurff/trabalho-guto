/*CRIANDO UM BANCO DE DADOS*/
create database DB_NUTRICAO;

/*ATIVANDO ELA PARA USO*/
use DB_NUTRICAO;

/*CRIANDO UMA TABELA DENTRO DO BANCO DE DADOS*/
create table t_cliente(
codigo int not null auto_increment,
nome varchar(100),
cidade varchar(100),
estado varchar(2),
peso float(10,2),
altura float(10,2),
data_nacimento datetime,
data_ultima_consulta datetime,
primary key(codigo)
);


/*ADICIONANDO OS ATRIBUTOS A TABELA*/
insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Arnaldo Antunes" , "Americana" , "SP" , 90 , 1.80 , "1988-10-20" , "2018-10-24");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Claudemir Silva" , "Campinas" , "SP" , 75 , 1.90 , "1980-11-30" , "2018-09-10");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Roberto Costa" , "Americana" , "SP" , 92 , 1.70 , "1986-08-05" , "2018-10-05");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Mônica" , "Rio de Janeiro" , "RJ" , 78 , 1.75 , "1990-05-20" , "2018-10-17");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Renata Domingues" , "Ouro Preto" , "MG" , 60 , 1.63 , "1980-1-21" , "2018-09-20");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Cleide" , "Campinas" , "SP" , 62 , 1.50 , "1991-10-22" , "2018-10-30");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Fernanda Souza" , "Rio de Janeiro" , "RJ" , 75 , 1.75 , "1992-05-10" , "2018-09-24");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Fernanda Souza" , "Campinas" , "SP" , 80 , 1.90 , "1992-06-15" , "2018-09-24");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Renato Araujo" , "Belo Horizonte" , "MG" , 90 , 1.85 , "1992-01-20" , "2018-10-05");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Franciele Freitas" , "Americana" , "RJ" , 70 , 1.68 , "1992-02-18" , "2018-10-17");

insert into t_cliente(nome , cidade , estado , peso , altura , data_nacimento , data_ultima_consulta)
values("Claudemir Rezende" , "Americana" , "SP" , 75 , 1.70 , "1992-05-07" , "2018-09-15");

/*SELECIONANDO TODOS OS REGISTROS*/
select * from t_cliente

/*SELECIONANDO APENAS PESSOAS DA CIDADE DE AMERICANA*/
select nome, cidade from t_cliente where cidade = "Americana"; 

/*SELECIONANDO APENAS PESSOAS DA CIDADE CAMPINAS*/
select nome, cidade from t_cliente where cidade = "Campinas";

/*SELECIONE O REGISTRO DA RENATA DOMINGUES*/
select * from t_cliente where nome = "Renata Domingues"; OU
select * from t_cliente where codigo = 5;

/*SELECIONE TODOS QUE PESAM MAIS DE 80 KG*/
select * from t_cliente where peso > 80;

/*SELECIONE TODOS QUE MEDEM MENOS DE 1.7*/
select * from t_cliente where altura < 1.7;

/*SELECIONE APENAS QUEM NASCEU EM 07/05/1992*/
select * from t_cliente where data_nacimento = "1992-05-07";

/*SELECIONE TODOS OS REGISTROS, COM EXEÇÃO AOS QUE SÃO DO ESTADO DE SP*/
select * from t_cliente where estado != "SP";

/*SELECIONE TODOS OS REGISTROS EM QUE O ESTADO É DIFERENTE DE SP*/
select * from t_cliente where estado != "SP";

/*SELECIONE APENAS AS PESSOAS DE AMERICANA - SP*/
select * from t_cliente where cidade="Americana" && estado="SP";

/*SELECIONE APENAS AS PESSOAS DE CAMPINAS OU DO RIO DE JANEIRO*/
select * from t_cliente where cidade="Campinas" || cidade = "Rio de Janeiro";

/*SELECIONE TODOS QUE TEM MAIS DE 80 KG E 1.8 DE ALTURA*/
select * from t_cliente where peso > 80 && altura > 1.8;

/*SELECIONE TODOS QUE TEM MAIS DE 80 E MENOS DE 1.8 DE ALTURA*/
select * from t_cliente where peso > 80 && altura < 1.8;

/*CORRIJA A ALTURA DE TODOS OS PACIENTES*/
update t_cliente set cidade = "Sumaré" where codigo = 1; /*MUDANDO APENAS A CIDADE DA PESSOA QUE ESTA EM 1° DA TABELA*/
update t_cliente set altura = 1.5; /*MODIFICOU A ALTURA DE TODOS NA TABELA*/

/*EXCLUA O REGISTRO DO ARNALDO*/
delete from t_cliente where codigo = 1; /*DELETANDO O 1° DA TABELA*/
/*EXCLUA O REGISTRO DO ROBERTO*/
/*EXCLUA O REGISTRO DA FERNANDA*/
/*EXCLUA O REGISTRO DA FRANCIELE*/

