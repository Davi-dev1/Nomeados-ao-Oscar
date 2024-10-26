use oscar;
select * from indicados_ao_oscar;
select count(*) from indicados_ao_oscar where nome_do_indicado like "%Natalie Portman%";
select * from indicados_ao_oscar where nome_do_indicado like "%Amy Adams%" and vencedor="true";
select * from indicados_ao_oscar where nome_do_filme like "%toy story%" and vencedor = "true";
-- ou pode ser assim: --
select ano_cerimonia from indicados_ao_oscar where nome_do_filme like "%toy story%" and vencedor="true";
select  ano_cerimonia from indicados_ao_oscar   where categoria  like  "%ACTRESS%"; 
select  nome_do_indicado,ano_cerimonia, categoria from indicados_ao_oscar where categoria like "%ACTRESS%" and vencedor="true" order by ano_cerimonia;
UPDATE indicados_ao_oscar  SET vencedor = 1 WHERE vencedor='true';

update indicados_ao_oscar SET vencedor= 0 where vencedor='false';
select * from  indicados_ao_oscar where nome_do_filme= "Crash";
select * from indicados_ao_oscar where nome_do_filme= "Central do Brasil";
insert into indicados_ao_oscar (ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) values(2007, 2024,97,"SOUND EDITING", 'Frank E. Eulner and Christopher Boyes','Iron man',1); 
insert into indicados_ao_oscar (ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) values(2005,2024,97,'Music(Original score)','Jack Black and John king','Tenacious D',1);
insert into indicados_ao_oscar(ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) values(2020,2024,97,'VISUAL EFFECTS','Kelly Port and Scott Edelstein','Spider man no way home',1);
select nome_do_indicado,ano_cerimonia,vencedor from indicados_ao_oscar where nome_do_indicado like "%Denzel Washington%" and vencedor=1;
select nome_do_filme,vencedor,categoria from indicados_ao_oscar where categoria like "%Best Picture%" and vencedor=1;
select nome_do_filme, categoria, vencedor from indicados_ao_oscar where categoria like "%Directing%" and categoria like "%Best Picture%" and vencedor=1;
select nome_do_indicado,ano_cerimonia from indicados_ao_oscar where nome_do_indicado like "%Denzel Washington%" and nome_do_indicado like "%Jamie Foxx%";