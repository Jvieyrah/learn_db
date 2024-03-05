Biblioteca
Introdução:
Neste cenário, estamos criando um sistema de gerenciamento de biblioteca. A tabela Livros armazenará informações sobre os livros disponíveis, incluindo título, autor e ano de publicação.

Criação da Tabela:

CREATE TABLE Livros (
    ID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor VARCHAR(100),
    AnoPublicacao INT
);
Exemplos de Transações:

Adicionar novos livros ao catálogo.
Atualizar informações de livros existentes, como mudar um autor.
Excluir livros antigos ou danificados.

Escola
Introdução:
Este cenário envolve a criação de um sistema para gerenciar informações de alunos. A tabela Alunos incluirá detalhes como nome, idade e a turma à qual pertencem.

Criação da Tabela:

CREATE TABLE Alunos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT,
    Turma CHAR(1)
);
Exemplos de Transações:

Inserir dados de novos alunos.
Atualizar informações, como a idade dos alunos a cada ano.
Excluir registros de alunos que se formaram ou transferiram.

Empresa
Introdução:
Aqui, estamos desenvolvendo um sistema para gerenciar funcionários de uma empresa. A tabela Funcionarios conterá informações como nome, departamento e salário.

Criação da Tabela:

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Departamento VARCHAR(50),
    Salario DECIMAL(10, 2)
);
Exemplos de Transações:

Adicionar novos funcionários ao sistema.
Atualizar dados, como salários durante revisões salariais.
Excluir funcionários que deixaram a empresa.

Restaurante
Introdução:
Este cenário trata da gestão de um restaurante, especificamente o controle do menu. A tabela Pratos incluirá informações como nome do prato, tipo (entrada, prato principal, sobremesa) e preço.

Criação da Tabela:

CREATE TABLE Pratos (
    ID INT PRIMARY KEY,
    NomePrato VARCHAR(100),
    Tipo VARCHAR(50),
    Preco DECIMAL(5, 2)
);
Exemplos de Transações:

Inserir novos pratos no menu.
Atualizar preços dos pratos devido a mudanças nos custos dos ingredientes.
Excluir pratos que foram retirados do menu.

Loja Online
Introdução:
Este cenário envolve a criação de um sistema para uma loja online, gerenciando o inventário de produtos. A tabela Produtos armazenará detalhes como nome do produto, categoria e preço.

Criação da Tabela:


CREATE TABLE Produtos (
    ID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2)
);
Exemplos de Transações:

Adicionar novos produtos ao inventário.
Atualizar preços dos produtos durante promoções.
Excluir produtos que não estão mais disponíveis.
Essas introduções e exemplos de transações ajudam a contextualizar a importância das operações de banco de dados em cenários do mundo real.



CREATE TABLE Produtos (
    ID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2)
);

CREATE TABLE Pratos (
    ID INT PRIMARY KEY,
    NomePrato VARCHAR(100),
    Tipo VARCHAR(50),
    Preco DECIMAL(5, 2)
);

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Departamento VARCHAR(50),
    Salario DECIMAL(10, 2)
);

CREATE TABLE Alunos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT,
    Turma CHAR(1)
);

CREATE TABLE Livros (
    ID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor VARCHAR(100),
    AnoPublicacao INT
);
