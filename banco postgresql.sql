-- Table: tb_login

-- DROP TABLE tb_login;

CREATE TABLE tb_login
(
  login_id serial NOT NULL,
  login_nome character varying(255) NOT NULL,
  login_senha character varying(255) NOT NULL,
  CONSTRAINT tb_login_pkey PRIMARY KEY (login_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tb_login
  OWNER TO postgres;

----
-- Table: tb_marca

-- DROP TABLE tb_marca;

CREATE TABLE tb_marca
(
  marca_id serial NOT NULL,
  marca_nome character varying(255) NOT NULL,
  CONSTRAINT tb_marca_pkey PRIMARY KEY (marca_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tb_marca
  OWNER TO postgres;

----  
-- Table: tb_produto

-- DROP TABLE tb_produto;

CREATE TABLE tb_produto
(
  produto_id serial NOT NULL,
  produto_nome character varying(255) NOT NULL,
  produto_quantidade integer NOT NULL,
  produto_valor_venda real NOT NULL,
  produto_valor_custo real NOT NULL,
  produto_valor_promocao real,
  produto_licenciado character varying(255),
  produto_marca character varying(255),
  produto_codigo character varying(255),
  produto_grade character varying(255),
  produto_estacao character varying(255),
  produto_tipo character varying(255),
  produto_categoria character varying(255),
  CONSTRAINT tb_produto_pkey PRIMARY KEY (produto_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tb_produto
  OWNER TO postgres;

