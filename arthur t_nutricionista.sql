
/*ATIVANDO ELA PARA USO*/
use DB_NUTRICAO;

/*CRIANDO UMA TABELA DENTRO DO BANCO DE DADOS*/
create table T_NUTRICIONISTA    (
codigo int not null auto_increment,
nome varchar(100),
especialidade varchar(50),
cidade varchar(100)
estado varchar(2)
primary key(codigo)
);

/*ADICIONANDO OS ATRIBUTOS A TABELA*/
insert into T_NUTRICIONISTA(nome , cidade , estado , especialidade)
values("Bruce Wayne" , "Piracicaba" , "SP" , "Nutrição Esportiva");

/*ADICIONANDO OS ATRIBUTOS A TABELA*/
insert into T_NUTRICIONISTA(nome , cidade , estado , especialidade)
values("Sarah Conor" , "Campinas" , "SP" , "Nutrição Esportiva");


/*ADICIONANDO OS ATRIBUTOS A TABELA*/
insert into T_NUTRICIONISTA(nome , cidade , estado , especialidade)
values("MIlene Domingues" , "Nova Odessa" , "SP" , "Nutrição Esportiva");


/*ADICIONANDO OS ATRIBUTOS A TABELA*/
insert into T_NUTRICIONISTA(nome , cidade , estado , especialidade)
values("Claire R. Clair" , "Rio De Janeiro" , "RJ" , "Reedução Alimentar");

/*ADICIONANDO OS ATRIBUTOS A TABELA*/
insert into T_NUTRICIONISTA(nome , cidade , estado , especialidade)
values("Maycon Douglas" , "São Paulo" , "SP" , "Reedução Alimentar");


/*SELECIONANDO TODOS OS REGISTROS*/
select * from T_NUTRICIONISTA

/*SELECIONANDO APENAS PESSOAS DA CIDADE DE AMERICANA*/
select * from T_NUTRICIONISTA where cidade = "Americana"; 

/*SELECIONANDO APENAS PESSOAS COM ESPECIALIDADE EM NUTRIÇÃO*/
select * from T_NUTRICIONISTA where ESPECIALIDADE = "Nutrição Esportiva"; 

/*SELECIONE O REGISTRO DO MAYCON DOUGLAS*/
select * from t_cliente where nome = "Maycon Douglas";

/*SELECIONANDO APENAS PESSOAS QUE NAO SAO DO ESTADO DE SP*/
select * from T_CONSULTA where estado != "SP";

/*CORRIJA NOME MAYCON D. PARA MAICON DOUGLAS*/
update T_NUTRICIONISTA set nome = "Maycon Douglas" where codigo = 5;

/*ALTERA NUTRIÇÃO PARA NE*/
update T_NUTRICIONISTA especialidade set especialidade = "NE" where codigo = 1;
update T_NUTRICIONISTA especialidade set especialidade = "NE" where codigo = 2;
update T_NUTRICIONISTA especialidade set especialidade = "NE" where codigo = 3;

/*ALTERA REDUÇÃO PARA RA*/
update T_NUTRICIONISTA especialidade set especialidade = "RA" where codigo = 4;
update T_NUTRICIONISTA especialidade set especialidade = "RA" where codigo = 5;

/*EXCLUA O REGISTRO DA MILENE*/
delete from t_cliente where codigo = 3; /*DELETANDO O 3° DA TABELA*/