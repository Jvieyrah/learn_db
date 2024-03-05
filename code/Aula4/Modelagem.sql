-- Criação da tabela Cliente
CREATE TABLE Cliente (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(50)
);

-- Criação da tabela Contrato
CREATE TABLE Contrato (
    contrato_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    valor DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id)
);

-- Criação da tabela Equipamento
CREATE TABLE Equipamento (
    equipamento_id SERIAL PRIMARY KEY,
    contrato_id INT,
    descricao VARCHAR(255) NOT NULL,
    modelo VARCHAR(100),
    FOREIGN KEY (contrato_id) REFERENCES Contrato(contrato_id)
);