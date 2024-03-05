
-- Exercícios para cada um dos grupos:

-- Criação de tabelas (CREATE TABLE), 
-- Inserção de dados (INSERT) 
-- Consulta de dados (SELECT). 

-- Cada lista terá um cenário específico.

-- Lista 1: Biblioteca (a a b)
-- Exercício 1: Crie uma tabela Livros com colunas para ID, Titulo, Autor, e AnoPublicacao.
-- Exercício 2: Insira 5 registros diferentes na tabela Livros.
-- Exercício 3: Selecione todos os livros publicados após o ano 2000.
-- Exercício 4: Selecione todos os livros de um autor específico.
-- Exercício 5: Conte quantos livros existem na tabela.

-- Lista 2: Escola (e p r)
-- Exercício 1: Crie uma tabela Alunos com colunas para ID, Nome, Idade, e Turma.
-- Exercício 2: Insira 8 alunos com diferentes idades e turmas.
-- Exercício 3: Selecione todos os alunos da turma 'A'.
-- Exercício 4: Encontre a idade média dos alunos da turma 'B'.
-- Exercício 5: Selecione os nomes dos alunos com menos de 10 anos.

-- Lista 3: Empresa (j f l)
-- Exercício 1: Crie uma tabela Funcionarios com ID, Nome, Departamento, e Salario.
CREATE TABLE Funcionarios (
 ID SERIAL PRIMARY KEY,
 nome VARCHAR(255),
 departamento VARCHAR(255),
 salario NUMERIC(10,2) 
);
-- Exercício 2: Insira 6 funcionários em diferentes departamentos.
INSERT INTO Funcionarios (nome, departamento, salario)
VALUES
('JOAO', 'TI', 1000.00), 
('FRANCIANE', 'VENDAS', 6000.00),
('LUCCAS', 'TI', 3000.00),
('EDUARDO', 'VENDAS', 2000.00),
('GUILHERME', 'TI', 6000.00),
('ANDRE', 'VENDAS', 3000.00),
;
-- Exercício 3: Selecione todos os funcionários do departamento de 'Vendas'.
SELECT * FROM Funcionarios WHERE departamento = 'VENDAS';
-- Exercício 4: Calcule o salário médio dos funcionários do departamento de 'TI'.
SELECT AVG(SALARIO) AS salario_medio FROM Funcionarios WHERE departamento = 'TI';
-- Exercício 5: Selecione os funcionários que ganham mais de 5000.
SELECT * FROM Funcionarios WHERE salario > 5000.00;

-- Lista 4: Restaurante (g r j)
-- Exercício 1: Crie uma tabela Pratos com ID, NomePrato, Tipo (entrada, principal, sobremesa), e Preco.
-- Exercício 2: Insira 7 pratos variando os tipos e preços.
-- Exercício 3: Selecione todos os pratos que são sobremesas.
-- Exercício 4: Encontre o preço médio dos pratos principais.
-- Exercício 5: Selecione os pratos com preço acima de 30.

-- Lista 5: Loja Online (w w v)
-- Exercício 1: Crie uma tabela Produtos com ID, NomeProduto, Categoria, e Preco.
-- Exercício 2: Insira 10 produtos em diferentes categorias.
-- Exercício 3: Selecione todos os produtos da categoria 'Eletrônicos'.
-- Exercício 4: Calcule o valor total de todos os produtos da categoria 'Livros'.
-- Exercício 5: Conte quantos produtos têm preço superior a 100.