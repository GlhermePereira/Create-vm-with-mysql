CREATE DATABASE Escola;
USE Escola;

-- Tabela de alunos
CREATE TABLE Alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    turma VARCHAR(10)
);

-- Tabela de professores
CREATE TABLE Professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    materia VARCHAR(50)
);

-- Tabela de disciplinas
CREATE TABLE Disciplinas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id)
);



INSERT INTO Alunos (nome, idade, turma) VALUES 
('Alice', 14, '8A'),
('Bruno', 15, '9B'),
('Carla', 13, '7C');

INSERT INTO Professores (nome, materia) VALUES 
('Professor João', 'Matemática'),
('Professora Maria', 'História');

INSERT INTO Disciplinas (nome, professor_id) VALUES 
('Matemática', 1),
('História', 2);


SELECT A.nome AS Aluno, A.turma, D.nome AS Disciplina, P.nome AS Professor
FROM Alunos A
JOIN Disciplinas D ON D.id = A.id % 2 + 1
JOIN Professores P ON D.professor_id = P.id;

