-- 1- Quantas vezes Natalie Portman foi indicada ao Oscar? 3
/*
SELECT count(*)
from indicados_ao_oscar
WHERE nome_do_indicado = 'Natalie Portman';
*/

-- 2- Quantos Oscars Natalie Portman ganhou? 1
/*
SELECT count(*)
from indicados_ao_oscar
WHERE nome_do_indicado = 'Natalie Portman' and vencedor = 'true';
*/


-- 3- Amy Adams já ganhou algum Oscar? 0
/*
select count(*)
from indicados_ao_oscar
where nome_do_indicado = 'Amy Adams' and vencedor = 'true';
*/


-- 4- A série de filmes Toy Story ganhou um Oscar em quais anos? 2011 e 2020
/*
select nome_do_filme, ano_cerimonia, vencedor
from indicados_ao_oscar
where nome_do_filme like '%Toy Story%' and vencedor = 'true';
*/
 
 -- 5- A partir de que ano que a categoria "Actress" deixa de existir? 1976
/*
select ano_cerimonia, categoria
from indicados_ao_oscar
where categoria = 'Actress'
order by ano_cerimonia desc
limit 1;
*/

-- 6- O primeiro Oscar para melhor Atriz foi para quem? Em que ano? Janet Gaynor, no ano de 1928
/*
select nome_do_indicado, ano_cerimonia
from indicados_ao_oscar
where categoria = 'ACTRESS' AND vencedor = 'true'
order by ano_cerimonia asc
limit 1;
*/

-- 7- Na coluna/campo "Vencedor", altere todos os valores com "Sim" para 1 e todos os valores "Não" para 0.
/*
update indicados_ao_oscar 
set vencedor = '1'
where vencedor = 'true';
 
update indicados_ao_oscar
set vencedor = '0'
where vencedor = 'false';
*/
-- select vencedor from indicados_ao_oscar;

 
-- 8- Em qual edição do Oscar "Crash" concorreu ao Oscar? 78
/*
SELECT nome_do_filme, cerimonia
FROM indicados_ao_oscar
WHERE nome_do_filme = 'Crash';
*/


-- 9- Bom... dê um Oscar para um filme que merece muito, mas não ganhou.
/*
update indicados_ao_oscar
set vencedor = '1'
where nome_do_filme = 'Morocco' AND categoria = 'CINEMATOGRAPHY';
 */
-- select * from indicados_ao_oscar where nome_do_filme = 'Morocco';

 

-- 10- O filme Central do Brasil aparece no Oscar? 1999
/*
select nome_do_filme, ano_cerimonia
from indicados_ao_oscar
where nome_do_filme like '%Central%';
*/

-- 11- Inclua no banco 3 filmes que nunca foram nem nomeados ao Oscar, mas que merecem ser. 

/*
INSERT INTO indicados_ao_oscar(ano_filmagem,ano_cerimonia,cerimonia,categoria,nome_do_indicado,nome_do_filme,vencedor)
VALUES 
('2017', '2017', '93', 'MUSIC (Original Score)', 'Mamam Coco', 'Viva – A Vida é uma Festa', '1'),
('2014', '2014', '93', 'DIRECTING', 'Joaquin', 'Festa no Céu', '1'),
('2016', '2016', '93', 'CINEMATOGRAPHY', 'Poppy', 'Trolls', '1');
*/

 
/*
select *
from indicados_ao_oscar
-- where nome_do_filme = 'Viva – A Vida é uma Festa';
-- where nome_do_filme = 'Festa no Céu';
-- where nome_do_filme = 'Trolls';
-- where cerimonia = '93' and vencedor = '1';
where id_registro >= '10890';

*/



-- 14 - Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?
-- (ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_do_indicado, nome_filme, vencedor)

/*Oscar melhor filme: Chicago  film editing */
/*Oscar melhor atriz: Nicole Kidman actress in a leading role */
/*Oscar melhor ator: Adrien Brody actor in a leading role */
/*Oscar de melhor diretor: Roman Polanski directing*/
/*
SELECT ano_cerimonia, nome_do_filme, nome_do_indicado, categoria, vencedor
FROM indicados_ao_oscar
WHERE ano_cerimonia = '2003' 
AND vencedor = 'true' 
AND (categoria = 'actress in a leading role' OR categoria = 'actor in a leading role' OR categoria = 'film editing' OR categoria = 'DIRECTING');
*/


-- DESCRIBE indicados_ao_oscar;
-- describe filmes;

 