-- 1. Empresas
-- Exercícios de Inserção:

-- Adicione três empresas diferentes na tabela empresa.
CREATE TABLE empresa (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255)
);

INSERT INTO empresa (nome) VALUES
('Empresa 1'),
('Empresa 2'),
('Empresa 3');
-- Insira departamentos para cada uma dessas empresas na tabela departamento.
CREATE TABLE departamento (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (empresa_id) REFERENCES empresa(id)
);

INSERT INTO departamento (nome, empresa_id) VALUES
('Departamento 1', 1),
('Departamento 2', 1),
('Departamento 3', 2),
('Departamento 4', 3);
-- Adicione funcionários em diferentes departamentos na tabela funcionario.
CREATE TABLE funcionario (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);

INSERT INTO funcionario (nome, departamento_id) VALUES
('Funcionário 1', 1),
('Funcionário 2', 1),
('Funcionário 3', 2),
('Funcionário 4', 3),
('Funcionário 5', 4);
-- Exercícios de Seleção:

-- Selecione todos os funcionários de um determinado departamento.
SELECT * FROM funcionario WHERE departamento_id = 1;
-- Liste todos os departamentos de uma empresa específica.
SELECT * FROM departamento WHERE empresa_id = 1;
-- Encontre o número total de funcionários em cada empresa.
SELECT empresa.nome, COUNT(funcionario.id) AS numero_de_funcionarios FROM empresa
-- 2. Escolas
-- Exercícios de Inserção:

-- Insira duas escolas na tabela escola.

CREATE TABLE escola (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255)
);  

INSERT INTO escola (nome) VALUES
('Escola 1'),
('Escola 2');
-- Para cada escola, adicione várias classes na tabela classe.
CREATE TABLE classe (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (escola_id) REFERENCES escola(id)
);

INSERT INTO classe (nome, escola_id) VALUES
('Classe 1', 1),
('Classe 2', 1),
('Classe 3', 2);
-- Insira estudantes em diferentes classes na tabela estudante.
CREATE TABLE estudante (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (classe_id) REFERENCES classe(id)
);

INSERT INTO estudante (nome, classe_id) VALUES
('Estudante 1', 1),
('Estudante 2', 1),
('Estudante 3', 2),
('Estudante 4', 3);
-- Exercícios de Seleção:

-- Liste todos os estudantes em uma classe específica.
SELECT * FROM estudante WHERE classe_id = 1;
-- Conte o número de classes em cada escola.
SELECT escola.nome, COUNT(classe.id) AS numero_de_classes FROM escola
-- Selecione as escolas que têm mais de 10 classes.
SELECT escola.nome FROM escola WHERE (SELECT COUNT(classe.id) FROM classe WHERE classe.escola_id = escola.id) > 10;
-- 3. Hospitais
-- Exercícios de Inserção:

-- Adicione dois hospitais na tabela hospital.
CREATE TABLE hospital (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255)
);

INSERT INTO hospital (nome) VALUES
('Hospital 1'),
('Hospital 2');
-- Crie vários departamentos para cada hospital na tabela departamento_hospital.
CREATE TABLE departamento_hospital (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (hospital_id) REFERENCES hospital(id)
);

INSERT INTO departamento_hospital (nome, hospital_id) VALUES
('Departamento 1', 1),
('Departamento 2', 1),
('Departamento 3', 2);
-- Insira médicos nesses departamentos na tabela medico.
CREATE TABLE medico (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  especialidade VARCHAR(255),
  FOREIGN KEY (departamento_hospital_id) REFERENCES departamento_hospital(id)
);

INSERT INTO medico (nome, especialidade, departamento_hospital_id) VALUES
('Médico 1', 'Cardiologista', 1),
('Médico 2', 'Ortopedista', 1),
('Médico 3', 'Neurologista', 2),
('Médico 4', 'Oftalmologista', 3);
-- Exercícios de Seleção:

-- Encontre todos os médicos especializados em uma determinada especialidade.
SELECT * FROM medico WHERE especialidade = 'Cardiologista';
-- Liste todos os departamentos de um hospital específico.
SELECT * FROM departamento_hospital WHERE hospital_id = 1;
-- Conte o número de médicos em cada hospital.
SELECT hospital.nome, COUNT(medico.id) AS numero_de_medicos FROM hospital
-- 4. Organizações Governamentais
-- Exercícios de Inserção:

-- Insira duas organizações governamentais na tabela governo.
CREATE TABLE governo (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255)
);

INSERT INTO governo (nome) VALUES
('Governo 1'),
('Governo 2');
-- Adicione departamentos para essas organizações na tabela departamento_governo.
CREATE TABLE departamento_governo (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (governo_id) REFERENCES governo(id)
);

INSERT INTO departamento_governo (nome, governo_id) VALUES
('Departamento 1', 1),
('Departamento 2', 1),
('Departamento 3', 2);
-- Inclua funcionários nos departamentos na tabela funcionario_governo.

CREATE TABLE funcionario_governo (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (departamento_governo_id) REFERENCES departamento_governo(id)
);

INSERT INTO funcionario_governo (nome, departamento_governo_id) VALUES
('Funcionário 1', 1),
('Funcionário 2', 1),
('Funcionário 3', 2),
('Funcionário 4', 3);

-- Exercícios de Seleção:

-- Selecione todos os funcionários de um determinado departamento governamental.

SELECT * FROM funcionario_governo WHERE departamento_governo_id = 1;
-- Liste todos os departamentos em uma organização governamental específica.
SELECT * FROM departamento_governo WHERE governo_id = 1;
-- Encontre o número total de funcionários em cada organização governamental.
SELECT governo.nome, COUNT(funcionario_governo.id) AS numero_de_funcionarios FROM governo
-- 5. Clubes Esportivos
-- Exercícios de Inserção:

-- Adicione três clubes esportivos na tabela clube.
CREATE TABLE clube (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255)
);

INSERT INTO clube (nome) VALUES
('Clube 1'),
('Clube 2'),
('Clube 3');
-- Para cada clube, crie várias equipes na tabela equipe.

CREATE TABLE equipe (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  tipo_esporte VARCHAR(255),
  FOREIGN KEY (clube_id) REFERENCES clube(id)
);

INSERT INTO equipe (nome, tipo_esporte, clube_id) VALUES
('Equipe 1', 'Futebol', 1),
('Equipe 2', 'Basquete', 1),
('Equipe 3', 'Vôlei', 2),
('Equipe 4', 'Futebol', 3);
-- Adicione atletas nessas equipes na tabela atleta.

CREATE TABLE atleta (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  FOREIGN KEY (equipe_id) REFERENCES equipe(id)
);

INSERT INTO atleta (nome, equipe_id) VALUES
('Atleta 1', 1),
('Atleta 2', 1),
('Atleta 3', 2),
('Atleta 4', 3),
('Atleta 5', 4);
-- Exercícios de Seleção:

-- Liste todos os atletas de um clube específico.
SELECT * FROM atleta WHERE equipe_id = 1;
-- Conte quantas equipes existem em cada clube.
SELECT clube.nome, COUNT(equipe.id) AS numero_de_equipes FROM clube
-- Selecione clubes que possuem equipes em mais de um tipo de esporte.
SELECT clube.nome FROM clube WHERE (SELECT COUNT(DISTINCT equipe.tipo_esporte) FROM equipe WHERE equipe.clube_id = clube.id) > 1;