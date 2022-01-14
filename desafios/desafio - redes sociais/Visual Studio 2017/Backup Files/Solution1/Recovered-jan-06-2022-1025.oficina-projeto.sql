USE projeto_oficina
--Criando as tabelas

drop table if exists tbl_Clientes;
CREATE TABLE tbl_Clientes (

	idCliente INT PRIMARY KEY, -- garante a UNICIDADE do código do cliente
	nomeCliente VARCHAR(50), --Posso usar até 50 caracteres
	dataNascimento DATE,
	sexo CHAR(1) -- Preciso suar todos os caracteres

)

drop table if exists tbl_Carros
CREATE TABLE tbl_Carros (
	nomeFabricante VARCHAR(50),
	nomeModelo VARCHAR(50),
	anoModelo INT,
	corModelo VARCHAR(20),
	placaCarro VARCHAR(8),
	idCliente INT
)

-- Inserindo dados

INSERT INTO tbl_Clientes(idCliente, nomeCliente, dataNascimento, sexo)
VALUES (1, 'José', '1985-01-13', 'M'), (2, 'Pedro', '2001-12-19', 'M')

INSERT INTO tbl_Carros (nomeFabricante, nomeModelo, anoModelo, corModelo, placaCarro, idCliente)
VALUES ('Volkswagem', 'FOX', 2008, 'preto', 'FRD-8843', 1), ('Hyundai', 'Tucson', 2013, 'prata', 'ABC-1234', 1)

--select* from tbl_Clientes

--select* from tbl_Carros 

--JUnção dos selects

SELECT 
	clientes.nomeCliente, --modo para selecionar coluna
	carros.nomeModelo,
	carros.nomeFabricante,
	carros.anoModelo,
	carros.corModelo,
	carros.placaCarro
FROM
	tbl_Clientes as clientes,
	tbl_Carros as carros
WHERE
	clientes.idCliente = carros.idCliente