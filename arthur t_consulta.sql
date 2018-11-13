
/*ATIVANDO ELA PARA USO*/
use DB_NUTRICAO;

/*CRIANDO UMA TABELA DENTRO DO BANCO DE DADOS*/
create table T_CONSULTA    (
codigo int not null auto_increment,
data_consulta DATETIME
cliente INTEGER
nutricionista INTEGER
primary key(codigo)
);

/*ADICIONANDO OS ATRIBUTOS A TABELA*/
insert into T_CONSULTA (data_consulta , cliente , nutricionista)
values("2018/10/30" , 1 , 1),
      ("2018/10/29" , 2 , 2),
      ("2018/10/29" , 3 , 2),
      ("2018/10/30" , 4 , 3),
      ("2018/10/30" , 5 , 5),  
      ("2018/10/30" , 6 , 1),
      ("2018/10/29" , 7 , 1),
      ("2018/10/29" , 8 , 2),
      ("2018/10/30" , 9 , 3),
      ("2018/10/30" , 10 , 1),
);

/*altera clientes da milene para o maicon*/
update T_CONSULTA  set codigo = 5 WHERE codigo = 3;



