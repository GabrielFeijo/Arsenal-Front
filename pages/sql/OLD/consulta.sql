SELECT name,nivel,modulo
FROM users
INNER JOIN trilha
ON users.id = trilha.userid;


select count(nivel) from trilha where nivel ="Ideação"; 

SELECT COUNT(id) AS  TotalUsuários FROM users;

SELECT COUNT(nivel) AS Ideação FROM trilha WHERE nivel='Ideação';

