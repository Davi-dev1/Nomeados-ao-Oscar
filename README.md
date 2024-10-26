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
#### Resposta:Sam Spiegel, Producer
Tony Richardson, Producer
Jack L. Warner, Producer
Robert Wise, Producer
Fred Zinnemann, Producer
Walter Mirisch, Producer
John Woolf, Producer
Jerome Hellman, Producer
Frank McCarthy, Producer
Philip D'Antoni, Producer
Albert S. Ruddy, Producer
Tony Bill, Michael Phillips and Julia Phillips, Producers
Francis Ford Coppola, Producer;  Gray Frederickson and Fred Roos, Co-Producers
Saul Zaentz and Michael Douglas, Producers
Irwin Winkler and Robert Chartoff, Producers
Charles H. Joffe, Producer
Barry Spikings, Michael Deeley, Michael Cimino and John Peverall, Producers
Stanley R. Jaffe, Producer
Ronald L. Schwary, Producer
David Puttnam, Producer
Richard Attenborough, Producer
James L. Brooks, Producer
Saul Zaentz, Producer
Sydney Pollack, Producer
Arnold Kopelson, Producer
Jeremy Thomas, Producer
Mark Johnson, Producer
Richard D. Zanuck and Lili Fini Zanuck, Producers
Jim Wilson and Kevin Costner, Producers
Edward Saxon, Kenneth Utt and Ron Bozman, Producers
Clint Eastwood, Producer
Steven Spielberg, Gerald R. Molen and Branko Lustig, Producers
Wendy Finerman, Steve Tisch and Steve Starkey, Producers
Mel Gibson, Alan Ladd, Jr. and Bruce Davey, Producers
Saul Zaentz, Producer
James Cameron and Jon Landau, Producers
David Parfitt, Donna Gigliotti, Harvey Weinstein, Edward Zwick and Marc Norman, Producers
Bruce Cohen and Dan Jinks, Producers
Douglas Wick, David Franzoni and Branko Lustig, Producers
Brian Grazer and Ron Howard, Producers
Martin Richards, Producer
Barrie M. Osborne, Peter Jackson and Fran Walsh, Producers
Clint Eastwood, Albert S. Ruddy and Tom Rosenberg, Producers
Paul Haggis and Cathy Schulman, Producers
Graham King, Producer
Scott Rudin, Ethan Coen and Joel Coen, Producers
Christian Colson, Producer
Kathryn Bigelow, Mark Boal, Nicolas Chartier and Greg Shapiro, Producers
Iain Canning, Emile Sherman and Gareth Unwin, Producers
Thomas Langmann, Producer
Grant Heslov, Ben Affleck and George Clooney, Producers
Brad Pitt, Dede Gardner, Jeremy Kleiner, Steve McQueen and Anthony Katagas, Producers
Alejandro G. Iñárritu, John Lesher and James W. Skotchdopole, Producers
Michael Sugar, Steve Golin, Nicole Rocklin and Blye Pagon Faust, Producers
Adele Romanski, Dede Gardner and Jeremy Kleiner, Producers
Guillermo del Toro and J. Miles Dale, Producers
Jim Burke, Charles B. Wessler, Brian Currie, Peter Farrelly and Nick Vallelonga, Producers
Kwak Sin Ae and Bong Joon Ho, Producers
Frances McDormand, Peter Spears, Mollye Asher, Dan Janvey and Chloé Zhao, Producers
Philippe Rousselet, Fabrice Gianfermi and Patrick Wachsberger, Producers
Daniel Kwan, Daniel Scheinert and Jonathan Wang, Producers
Emma Thomas, Charles Roven and Christopher Nolan, Producers
Sam Spiegel, Producer
Tony Richardson, Producer
Jack L. Warner, Producer
Robert Wise, Producer
Fred Zinnemann, Producer
Walter Mirisch, Producer
John Woolf, Producer
Jerome Hellman, Producer
Frank McCarthy, Producer
Philip D'Antoni, Producer
Albert S. Ruddy, Producer
Tony Bill, Michael Phillips and Julia Phillips, Producers
Francis Ford Coppola, Producer;  Gray Frederickson and Fred Roos, Co-Producers
Saul Zaentz and Michael Douglas, Producers
Irwin Winkler and Robert Chartoff, Producers
Charles H. Joffe, Producer
Barry Spikings, Michael Deeley, Michael Cimino and John Peverall, Producers
Stanley R. Jaffe, Producer
Ronald L. Schwary, Producer
David Puttnam, Producer
Richard Attenborough, Producer
James L. Brooks, Producer
Saul Zaentz, Producer
Sydney Pollack, Producer
Arnold Kopelson, Producer
Jeremy Thomas, Producer
Mark Johnson, Producer
Richard D. Zanuck and Lili Fini Zanuck, Producers
Jim Wilson and Kevin Costner, Producers
Edward Saxon, Kenneth Utt and Ron Bozman, Producers
Clint Eastwood, Producer
Steven Spielberg, Gerald R. Molen and Branko Lustig, Producers
Wendy Finerman, Steve Tisch and Steve Starkey, Producers
Mel Gibson, Alan Ladd, Jr. and Bruce Davey, Producers
Saul Zaentz, Producer
James Cameron and Jon Landau, Producers
David Parfitt, Donna Gigliotti, Harvey Weinstein, Edward Zwick and Marc Norman, Producers
Bruce Cohen and Dan Jinks, Producers
Douglas Wick, David Franzoni and Branko Lustig, Producers
Brian Grazer and Ron Howard, Producers
Martin Richards, Producer
Barrie M. Osborne, Peter Jackson and Fran Walsh, Producers
Clint Eastwood, Albert S. Ruddy and Tom Rosenberg, Producers
Paul Haggis and Cathy Schulman, Producers
Graham King, Producer
Scott Rudin, Ethan Coen and Joel Coen, Producers
Christian Colson, Producer
Kathryn Bigelow, Mark Boal, Nicolas Chartier and Greg Shapiro, Producers
Iain Canning, Emile Sherman and Gareth Unwin, Producers
Thomas Langmann, Producer
Grant Heslov, Ben Affleck and George Clooney, Producers
Brad Pitt, Dede Gardner, Jeremy Kleiner, Steve McQueen and Anthony Katagas, Producers
Alejandro G. Iñárritu, John Lesher and James W. Skotchdopole, Producers
Michael Sugar, Steve Golin, Nicole Rocklin and Blye Pagon Faust, Producers
Adele Romanski, Dede Gardner and Jeremy Kleiner, Producers
Guillermo del Toro and J. Miles Dale, Producers
Jim Burke, Charles B. Wessler, Brian Currie, Peter Farrelly and Nick Vallelonga, Producers
Kwak Sin Ae and Bong Joon Ho, Producers
Frances McDormand, Peter Spears, Mollye Asher, Dan Janvey and Chloé Zhao, Producers
Philippe Rousselet, Fabrice Gianfermi and Patrick Wachsberger, Producers
Daniel Kwan, Daniel Scheinert and Jonathan Wang, Producers
Emma Thomas, Charles Roven and Christopher Nolan, Producers
Sam Spiegel, Producer
Tony Richardson, Producer
Jack L. Warner, Producer
Robert Wise, Producer
Fred Zinnemann, Producer
Walter Mirisch, Producer
John Woolf, Producer
Jerome Hellman, Producer
Frank McCarthy, Producer
Philip D'Antoni, Producer
Albert S. Ruddy, Producer
Tony Bill, Michael Phillips and Julia Phillips, Producers
Francis Ford Coppola, Producer;  Gray Frederickson and Fred Roos, Co-Producers
Saul Zaentz and Michael Douglas, Producers
Irwin Winkler and Robert Chartoff, Producers
Charles H. Joffe, Producer
Barry Spikings, Michael Deeley, Michael Cimino and John Peverall, Producers
Stanley R. Jaffe, Producer
Ronald L. Schwary, Producer
David Puttnam, Producer
Richard Attenborough, Producer
James L. Brooks, Producer
Saul Zaentz, Producer
Sydney Pollack, Producer
Arnold Kopelson, Producer
Jeremy Thomas, Producer
Mark Johnson, Producer
Richard D. Zanuck and Lili Fini Zanuck, Producers
Jim Wilson and Kevin Costner, Producers
Edward Saxon, Kenneth Utt and Ron Bozman, Producers
Clint Eastwood, Producer
Steven Spielberg, Gerald R. Molen and Branko Lustig, Producers
Wendy Finerman, Steve Tisch and Steve Starkey, Producers
Mel Gibson, Alan Ladd, Jr. and Bruce Davey, Producers
Saul Zaentz, Producer
James Cameron and Jon Landau, Producers
David Parfitt, Donna Gigliotti, Harvey Weinstein, Edward Zwick and Marc Norman, Producers
Bruce Cohen and Dan Jinks, Producers
Douglas Wick, David Franzoni and Branko Lustig, Producers
Brian Grazer and Ron Howard, Producers
Martin Richards, Producer
Barrie M. Osborne, Peter Jackson and Fran Walsh, Producers
Clint Eastwood, Albert S. Ruddy and Tom Rosenberg, Producers
Paul Haggis and Cathy Schulman, Producers
Graham King, Producer
Scott Rudin, Ethan Coen and Joel Coen, Producers
Christian Colson, Producer
Kathryn Bigelow, Mark Boal, Nicolas Chartier and Greg Shapiro, Producers
Iain Canning, Emile Sherman and Gareth Unwin, Producers
Thomas Langmann, Producer
Grant Heslov, Ben Affleck and George Clooney, Producers
Brad Pitt, Dede Gardner, Jeremy Kleiner, Steve McQueen and Anthony Katagas, Producers
Alejandro G. Iñárritu, John Lesher and James W. Skotchdopole, Producers
Michael Sugar, Steve Golin, Nicole Rocklin and Blye Pagon Faust, Producers
Adele Romanski, Dede Gardner and Jeremy Kleiner, Producers
Guillermo del Toro and J. Miles Dale, Producers
Jim Burke, Charles B. Wessler, Brian Currie, Peter Farrelly and Nick Vallelonga, Producers
Kwak Sin Ae and Bong Joon Ho, Producers
Frances McDormand, Peter Spears, Mollye Asher, Dan Janvey and Chloé Zhao, Producers
Philippe Rousselet, Fabrice Gianfermi and Patrick Wachsberger, Producers
Daniel Kwan, Daniel Scheinert and Jonathan Wang, Producers
Emma Thomas, Charles Roven and Christopher Nolan, Producers
### Q: 
select nome_do_indicado,vencedor,categoria from indicados_ao_oscar where categoria like "%Best Picture%" and vencedor=1;
# 12- Bonus: Quais os filmes que ganharam o Oscar de Melhor Filme e Melhor Diretor na mesma cerimonia?
#### Resposta: 
Nenhum
#### Q :
select nome_do_filme, categoria, vencedor from indicados_ao_oscar where categoria like "%Directing%" and categoria like "%Best Picture%" and vencedor=1;
