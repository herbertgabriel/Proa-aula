# Criar uma base de dados
# CREATE DATABASE escola;

# Tornar banco como padrão
USE escola;

# Criar tabela
/*CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  data_nascimento DATE,
  email VARCHAR(100) UNIQUE
  );*/

# UNIQUE = Valor unico

# Inserir valores na tabela
# INSERT INTO alunos (nome, data_nascimento, email) VALUES ('Everlyn Marques', '2003-12-10', 'everlyn@gmail.com');

# Retornar valores
# Query
# SELECT * FROM alunos; 

# * = tudo

# SELECT nome FROM alunos; #retornando apenas um elemento especifico

# Criar tabela com dados
/*CREATE TABLE eventos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  data_evento DATE,
  inicio TIME,
  data_hora_criacao DATETIME,
  ultima_modificacao TIMESTAMP,
  ano_fundacao YEAR
);*/

/* INSERT INTO eventos (nome, data_evento, inicio, data_hora_criacao, ano_fundacao)
VALUES ('EXPO TI', '2024-10-11', '11:30:00', '2024-10-01', 2024); */

# SELECT * FROM eventos;

# ADD
# Adicionar colunas em tabelas especificas
# ALTER TABLE alunos ADD cpf VARCHAR (20);

# UPDATE
# Modificar um elemento ja existente
# UPDATE alunos SET cpf = '12345678911' WHERE id = 1;

# CRUD - CREATE, READ, UPDATE, DELETE

# Deletar
# DELETE FROM alunos WHERE id = 1;
# SELECT * FROM alunos;

# DDL - Data Definition Language (Definicao do idioma dos dados)
# Create, Alter e Drop

#DQL - Data Query Language
#select

#relacionamentos
/* CREATE TABLE cursos(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR (50)
); */

# INSERT INTO cursos (nome) VALUES ('Python');
# SELECT nome FROM cursos;

/* CREATE TABLE matriculas (
  aluno_id INT,
  curso_id INT,
  FOREIGN KEY (aluno_id) REFERENCES alunos(id),
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
); */

# INSERT INTO matriculas (aluno_id, curso_id) VALUES (4, 1);
# SELECT * FROM matriculas;
