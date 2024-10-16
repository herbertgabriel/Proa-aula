
CREATE TABLE Livro (
  IBSN INT PRIMARY KEY,
  Titulo VARCHAR(100),
  Genero VARCHAR(40),
  Ano YEAR,
  Exemplares INT,
  Disponibilidade BOOLEAN
);

CREATE TABLE Autores (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100),
  Nacionalidade TEXT,
  Escritos int
);

CREATE TABLE Leitor (
  Matricula INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(100),
  Telefone TEXT,
  Email TEXT,
  Quantidade INT
);

CREATE TABLE Alugados (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  Devolucao DATE,
  Aquisicao DATE,

  FOREIGN KEY (Livro_ID) REFERENCES Livro(IBSN),
  FOREIGN KEY (Leitor_ID) REFERENCES Leitor(Matricula)
);

CREATE TABLE Autores_Livros (
  Autor_ID INT,
  Livro_ID INT,
  PRIMARY KEY (Autor_ID, Livro_ID),
  FOREIGN KEY (Livro_ID) REFERENCES Livro(IBSN),
  FOREIGN KEY (Autor_ID) REFERENCES Autores(ID)
);

CREATE TABLE Livro_Leitor_Alugado (
  Livro_ID INT,
  Leitor_ID INT,
  Alugado_ID INT,
  Data_Aquisicao DATE,
  Data_Devolucao DATE,
  PRIMARY KEY (Livro_ID, Leitor_ID, Alugado_ID),
  FOREIGN KEY (Livro_ID) REFERENCES Livro(IBSN),
  FOREIGN KEY (Leitor_ID) REFERENCES Leitor(Matricula),
  FOREIGN KEY (Alugado_ID) REFERENCES Alugados(ID)
);
