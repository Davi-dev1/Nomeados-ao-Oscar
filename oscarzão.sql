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
select * from indicados_ao_oscar where nome_do_filme= "Central do Brasil"