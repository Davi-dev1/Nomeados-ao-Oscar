#  Atividades do SQL Proa
## Perguntas:
 # 1-Quantos Oscars Natalie Portman ganhou ? 
 ### Resposta -> 3
#### Q:
 Select count(*) from indicados_ao_oscar where nome_do_indicado like "%Natalie Portman%" and vencedor="true";

# 2-Amy Adams já ganhou algum Oscar ?
### Resposta-> Não
#### Q:
select * from indicados_ao_oscar where nome_do_indicado like "%Amy Adams%" and vencedor="true"

# 3-A série de filmes Toy Story ganhou um Oscar em quais anos?
### Resposta-> 3 anos 
### Q:
select * from indicados_ao_oscar where nome_do_filme like "%Toy Story%" and vencedor="true"; ou pode ser feito assim (onde só apareceria os anos de premiação do filme): select ano_cerimonia from indicados_ao_oscar where nome_do_filme like "%toy story%" and vencedor="true"

# 4- A partir de que ano a categoria "Actress" deixa de existir?
### Resposta: 2024
### Q:
select  ano_cerimonia from indicados_ao_oscar   where categoria  like  "%ACTRESS%" (terei que ver essa dai direito)
