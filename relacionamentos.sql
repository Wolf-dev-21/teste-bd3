#relacionamento tabela sala e especialidade
alter table tbl_sala add constraint fk_especialidade
foreign key (cod_especialidade)
references tbl_especialidade (cod_especialidade);

#relacionamento insumos e paciente
alter table tbl_insumos add constraint fk_paciente
foreign key (cod_paciente)
references tbl_paciente (cod_paciente);

#relacionamento  medico e especialidade
alter table tbl_medico add constraint fk_medico_especialidade
foreign key (cod_especialidade)
references tbl_especialidade (cod_especialidade);

#####  Relacionamentos da tabela de agenda #####
alter table tbl_agenda add constraint fk_agenda_sala
foreign key (cod_sala)
references tbl_sala(cod_sala);

alter table tbl_agenda add constraint fk_agenda_medico
foreign key (cod_medico)
references tbl_medico(cod_medico);

alter table tbl_agenda add constraint fk_agenda_paciente
foreign key (cod_paciente)
references tbl_paciente(cod_paciente);