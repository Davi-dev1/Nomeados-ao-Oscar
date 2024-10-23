select * from indicados_ao_oscar;
select count(*) from indicados_ao_oscar where nome_do_indicado like "%Natalie Portman%";
select * from indicados_ao_oscar where nome_do_indicado like "%Amy Adams%" and vencedor="true"