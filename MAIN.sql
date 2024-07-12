CREATE DATABASE IF NOT EXISTS cadastro_pessoal;
USE cadastro_pessoal;

CREATE TABLE IF NOT EXISTS pessoas
 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100),
    idade INT,
    genero VARCHAR(10),
    nacionalidade VARCHAR(50),
    email VARCHAR(100),
    estado_civil VARCHAR(20),
    nome_do_pai VARCHAR(100),
    nome_da_mae VARCHAR(100)
);

INSERT INTO pessoas (nome_completo, idade, genero, nacionalidade, email, estado_civil, nome_do_pai, nome_da_mae) VALUES
('Gabriel Meira', '18', 'Masculino', 'Brasileiro', 'gabriel@email', 'Solteiro', 'Marcio Cezar', 'Manuela Araujo'),
('Carlos Alexandre', '18', 'Masculino', 'Brasileiro', 'carlos@email', 'Solteiro', 'Correa', 'gildaci'),
('Lucas Oliveira', '19', 'Masculino', 'Brasileiro', 'lucas@email', 'Solteiro', 'Bomfim', 'Lidiane');

UPDATE pessoas
SET email = 'lucas.novo@email', estado_civil = 'Divorciado'
WHERE id = 2;

DELETE FROM pessoas WHERE id = 3;
