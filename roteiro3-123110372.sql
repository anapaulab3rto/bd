CREATE TABLE farmacias {
    id_farmacia SERIAL PRIMARY KEY,
    bairro varchar(50) UNIQUE,
    id_gerente integer,
    id_sede integer REFERENCES farmacias (id_farmacia)
};

CREATE TABLE funcionarios {
    id_funcionaro SERIAL,
    nome VARCHAR(80),
    id_farmacia INTEGER REFERENCES farmacias (id_farmacia),
    funcao VARCHAR(40)
};

ALTER TABLE farmacias ADD CONSTRAINT fk_id_gerente FOREIGN KEY (id_gerente) REFERENCES funcionarios (id_funcionaro);

CREATE TABLE clientes {
    cpf CHAR(11) PRIMARY KEY, 
    nome VARCHAR(80)
};

CREATE TABLE enderecos_clientes {
    id_endereco SERIAL,
    cliente CHAR(11) REFERENCES clientes (cpf),
    tipo VARCHAR(15),
    rua VARCHAR(50),
    bairro VARCHAR(50)
};

CREATE TABLE vendas {
    id_vendas SERIAL,
    id_funcionaro INTEGER,
    cliente CHAR(11),
    valor NUMERIC
};

CREATE TABLE entregas {
    id_vendas INTEGER,
    id_endereco INTEGER
};

CREATE TABLE medicamentos {
    id_medicamento SERIAL,
    nome VARCHAR(50),
    venda_com_receita BOOLEAN,
    valor NUMERIC
};

