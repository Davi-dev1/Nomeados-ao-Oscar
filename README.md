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

# 5 - Quem ganhou o primeiro Oscar para Melhor Atriz? Em que ano ?
  ### Resposta: Janet Gaynor, no ano de 1928

 ### Q:
 select  nome_do_indicado,ano_cerimonia, categoria from indicados_ao_oscar where categoria like "%ACTRESS%" and vencedor="true" order by ano_cerimonia

 # 6- No campo "vencedor", altere todos os valores com "true" para 1 e todos os valores "false" para 0.
 ### Q :
 UPDATE indicados_ao_oscar  SET vencedor = 1 WHERE vencedor='true';
update indicados_ao_oscar SET vencedor= 0 where vencedor='false';

# 7- Em qual edição do Oscar "Crash" concorreu ao Oscar?
### Resposta: Cerimonia 78, ano 2006.
#### Q :
select * from  indicados_ao_oscar where nome_do_filme= "Crash"

# 8- O filme Central do Brasil aparece no Oscar?
### Resposta: Não aparece.
###  Q:
select * from indicados_ao_oscar where nome_do_filme= "Central do Brasil"


 # 9-Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser.
 ### Q:
 insert into indicados_ao_oscar (ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) values(2007, 2024,97,"SOUND EDITING", 'Frank E. Eulner and Christopher Boyes','Iron man',1); 
insert into indicados_ao_oscar (ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) values(2005,2024,97,'Music(Original score)','Jack Black and John king','Tenacious D',1);
insert into indicados_ao_oscar(ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor) values(2020,2024,97,'VISUAL EFFECTS','Kelly Port and Scott Edelstein','Spider man no way home',1);



# 10 - Denzel Washington já ganhou algum oscar ?
#### Resposta:SIM
### Q:
select nome_do_indicado,ano_cerimonia,vencedor from indicados_ao_oscar where nome_do_indicado like "%Denzel Washington%" and vencedor=1;

# 11 - Quais os filmes que ganharam o Oscar de Melhor Filme?
#### Resposta:
Lawrence of Arabia
Tom Jones
My Fair Lady
The Sound of Music
A Man for All Seasons
In the Heat of the Night
Oliver!
Midnight Cowboy
Patton
The French Connection
The Godfather
The Sting
The Godfather Part II
One Flew over the Cuckoo's Nest
Rocky
Annie Hall
The Deer Hunter
Kramer vs. Kramer
Ordinary People
Chariots of Fire
Gandhi
Terms of Endearment
Amadeus
Out of Africa
Platoon
The Last Emperor
Rain Man
Driving Miss Daisy
Dances With Wolves
The Silence of the Lambs
Unforgiven
Schindler's List
Forrest Gump
Braveheart
The English Patient
Titanic
Shakespeare in Love
American Beauty
Gladiator
A Beautiful Mind
Chicago
The Lord of the Rings: The Return of the King
Million Dollar Baby
Crash
The Departed
No Country for Old Men
Slumdog Millionaire
The Hurt Locker
The King's Speech
The Artist
Argo
12 Years a Slave
Birdman or (The Unexpected Virtue of Ignorance)
Spotlight
Moonlight
The Shape of Water
Green Book
Parasite
Nomadland
CODA
Everything Everywhere All at Once
Oppenheimer
Lawrence of Arabia
Tom Jones
My Fair Lady
The Sound of Music
A Man for All Seasons
In the Heat of the Night
Oliver!
Midnight Cowboy
Patton
The French Connection
The Godfather
The Sting
The Godfather Part II
One Flew over the Cuckoo's Nest
Rocky
Annie Hall
The Deer Hunter
Kramer vs. Kramer
Ordinary People
Chariots of Fire
Gandhi
Terms of Endearment
Amadeus
Out of Africa
Platoon
The Last Emperor
Rain Man
Driving Miss Daisy
Dances With Wolves
The Silence of the Lambs
Unforgiven
Schindler's List
Forrest Gump
Braveheart
The English Patient
Titanic
Shakespeare in Love
American Beauty
Gladiator
A Beautiful Mind
Chicago
The Lord of the Rings: The Return of the King
Million Dollar Baby
Crash
The Departed
No Country for Old Men
Slumdog Millionaire
The Hurt Locker
The King's Speech
The Artist
Argo
12 Years a Slave
Birdman or (The Unexpected Virtue of Ignorance)
Spotlight
Moonlight
The Shape of Water
Green Book
Parasite
Nomadland
CODA
Everything Everywhere All at Once
Oppenheimer
Lawrence of Arabia
Tom Jones
My Fair Lady
The Sound of Music
A Man for All Seasons
In the Heat of the Night
Oliver!
Midnight Cowboy
Patton
The French Connection
The Godfather
The Sting
The Godfather Part II
One Flew over the Cuckoo's Nest
Rocky
Annie Hall
The Deer Hunter
Kramer vs. Kramer
Ordinary People
Chariots of Fire
Gandhi
Terms of Endearment
Amadeus
Out of Africa
Platoon
The Last Emperor
Rain Man
Driving Miss Daisy
Dances With Wolves
The Silence of the Lambs
Unforgiven
Schindler's List
Forrest Gump
Braveheart
The English Patient
Titanic
Shakespeare in Love
American Beauty
Gladiator
A Beautiful Mind
Chicago
The Lord of the Rings: The Return of the King
Million Dollar Baby
Crash
The Departed
No Country for Old Men
Slumdog Millionaire
The Hurt Locker
The King's Speech
The Artist
Argo
12 Years a Slave
Birdman or (The Unexpected Virtue of Ignorance)
Spotlight
Moonlight
The Shape of Water
Green Book
Parasite
Nomadland
CODA
Everything Everywhere All at Once
Oppenheimer



### Q: 
select nome_do_filme,vencedor,categoria from indicados_ao_oscar where categoria like "%Best Picture%" and vencedor=1;
# 12- Bonus: Quais os filmes que ganharam o Oscar de Melhor Filme e Melhor Diretor na mesma cerimonia?
#### Resposta: 
Nenhum
#### Q :
select nome_do_filme, categoria, vencedor from indicados_ao_oscar where categoria like "%Directing%" and categoria like "%Best Picture%" and vencedor=1;
