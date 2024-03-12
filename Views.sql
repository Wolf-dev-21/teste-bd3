create view listagem_geral_medico as
select * from tbl_medico;

select * from listagem_geral_medico
where cod_medico = 1;

##### Listagem Médico/Especialidade #####
create view listagem_medico_especialidade_aula as
select 
nome_medico, telefone_medico, celular_medico, email_medico,
te.nome_especialidade
from tbl_medico as tm
inner join tbl_especialidade te
on te.cod_especialidade = tm.cod_especialidade;

##### Listagem sala/Especialidade #####
create view listagem_sala_especialidade_aula as
select 
nro_sala,
te.nome_especialidade
from tbl_sala as ts
inner join tbl_especialidade te
on te.cod_especialidade = ts.cod_especialidade;


##### Listagem Agenda #####
create view agenda_aula as
select
 ta.data_cirugia, ta.status_cirurgia,
 ts.nro_sala,
 tm.nome_medico, tm.celular_medico,
 tp.nome_paciente, tp.celular_paciente,
 tp.nome_responsavel, tp.telefone_responsavel
from tbl_agenda as ta
inner join tbl_sala as ts
on ta.cod_sala = ts.cod_sala
inner join tbl_medico as tm
on ta.cod_medico = tm.cod_medico
inner join tbl_paciente as tp
on ta.cod_paciente = tp.cod_paciente;

##### Testado Views #####
select * from listagem_medico_especialidade_aula;
select * from listagem_sala_especialidade_aula;
select * from agenda_aula;

##### deletando Views #####
drop view listagem_medico_especialidade_aula;
drop view  listagem_sala_especialidade_aula;
drop view  agenda_aula;