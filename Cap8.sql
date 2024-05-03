
CREATE TABLE TB_Aluno (
    AlunoID INT PRIMARY KEY IDENTITY,
    Nome NVARCHAR(50),
    Sobrenome NVARCHAR(50),
    Idade INT,
    DataNascimento DATE,
    Serie NVARCHAR(20),
);


INSERT INTO TB_Aluno (Nome, Sobrenome, Idade, DataNascimento, Serie) 
VALUES
('Maria', 'Ferreira', 17, '2005-08-20', '11º ano'),
('Pedro', 'Santos', 16, '2006-04-10', '10º ano'),
('Ana', 'Silveira', 18, '2004-11-30', '12º ano');


/* Selecionando todas as colunas, linhas e dados */
SELECT * FROM [TB_Aluno];

/* Selecionando dados das colunas que eu especifiquei */
SELECT AlunoID, Nome, Sobrenome, Idade, DataNascimento, Serie FROM [TB_Aluno];

/* Selecionando todos os dados em todas as colunas nas primeiras 100 linhas da tabela */
SELECT TOP 100 * FROM [TB_Aluno];



CREATE TABLE TB_Turma (
    TurmaID INT PRIMARY KEY,
    Nome NVARCHAR(50),
    Ano INT
);

CREATE TABLE TB_Matricula (
    MatriculaID INT PRIMARY KEY,
    AlunoID INT,
    TurmaID INT,
    FOREIGN KEY (AlunoID) REFERENCES TB_Aluno(AlunoID),
    FOREIGN KEY (TurmaID) REFERENCES TB_Turma(TurmaID)
);



CREATE TABLE TB_Disciplina (
    DisciplinaID INT PRIMARY KEY,
    Nome NVARCHAR(50)
);

CREATE TABLE TB_Notas (
    NotaID INT PRIMARY KEY,
    AlunoID INT,
    DisciplinaID INT,
    Nota FLOAT,
    FOREIGN KEY (AlunoID) REFERENCES TB_Aluno(AlunoID),
    FOREIGN KEY (DisciplinaID) REFERENCES TB_Disciplina(DisciplinaID)
);

