select * from indicados_ao_oscar;
select count(*) from indicados_ao_oscar where nome_do_indicado like "%Natalie Portman%";
select * from indicados_ao_oscar where nome_do_indicado like "%Amy Adams%" and vencedor="true";
select * from indicados_ao_oscar where nome_do_filme like "%Toy Story%" and vencedor="true";
-- ou pode ser assim: --
select ano_cerimonia from indicados_ao_oscar where nome_do_filme like "%toy story%" and vencedor="true"