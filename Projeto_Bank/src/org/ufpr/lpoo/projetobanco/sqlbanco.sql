CREATE TABLE cliente
(
  idcliente integer NOT NULL,
  nome character varying(50),
  rg integer,
  cpf integer,
  sobrenome character varying(60),
  CONSTRAINT cliente_pkey PRIMARY KEY (idcliente)
)

CREATE TABLE conta
(
  idcliente integer,
  conta integer NOT NULL,
  saldo numeric(11,2),
  depositoinicial numeric(11,2),
  CONSTRAINT conta_pkey PRIMARY KEY (conta),
  CONSTRAINT conta_idcliente_fkey FOREIGN KEY (idcliente)
      REFERENCES cliente (idcliente) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE contacorrente
(
  idcorrente integer NOT NULL,
  conta integer,
  limite numeric(11,2),
  CONSTRAINT pkcorrent PRIMARY KEY (idcorrente),
  CONSTRAINT fkconta FOREIGN KEY (conta)
      REFERENCES conta (conta) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE containvestimento
(
  idinvestimento integer NOT NULL,
  montanteminimo numeric(11,2),
  conta integer,
  depositominimo numeric(11,2),
  CONSTRAINT pkinvestimento PRIMARY KEY (idinvestimento),
  CONSTRAINT fkinvestimento FOREIGN KEY (conta)
      REFERENCES conta (conta) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE endereco
(
  idcliente integer,
  cidade character varying(50),
  cep integer,
  bairro character varying(30),
  uf character varying(2),
  complemento character varying(70),
  CONSTRAINT endereco_idcliente_fkey FOREIGN KEY (idcliente)
      REFERENCES cliente (idcliente) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE SEQUENCE seqcliente
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1

CREATE SEQUENCE seqconta
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1

CREATE SEQUENCE seqcontacorrent
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1

CREATE SEQUENCE seqcontainvestimento
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1