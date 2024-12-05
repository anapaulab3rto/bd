CREATE TABLE automovel (
    placa_automovel char(7),
    cpf_dono char(11)
);

CREATE TABLE segurado (
    cpf char(11),
    nome varchar(40)
);

CREATE TABLE perito (
    n_perito integer,
    n_oficina integer,
    nome varchar(40),
);

CREATE TABLE oficina (
    n_oficina integer,
    cnpj char(14)
);

CREATE TABLE seguro (
    n_seguro integer,
    placa_automovel char(7),
    valor numeric,
    validade date
);

CREATE TABLE sinistro (
    n_sinistro integer,
    n_oficina integer,
    placa_automovel chat(7),
    data_hora timestamp
);

CREATE TABLE pericia (
    n_pericia integer,
    n_perito integer,
    n_sinistro integer,
    valor_dano numeric,
    perda_total boolean
);

CREATE TABLE reparo (
    n_reparo integer,
    n_pericia integer
);





