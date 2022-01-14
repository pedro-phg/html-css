USE projeto_oficina
--Criando as tabelas

drop table if exists tbl_Clientes;
CREATE TABLE tbl_Clientes (
	idCliente INT,
	nomeCliente VARCHAR(50), --Posso usar até 50 caracteres
	dataNascimento DATE,
	sexo CHAR(1) -- Preciso suar todos os caracteres

)

drop table if exists tbl_Carros
CREATE TABlE tbl_Carros (
	nomeFabricante VARCHAR(50),
	nomeModelo VARCHAR(50),
	anoModelo INT,
	idCliente INT
)

-- Inserindo dados

INSERT INTO tbl_Clientes(idCliente, nomeCliente, dataNascimento, sexo)
VALUES (1, 'José', '1985-01-13', 'M')

INSERT INTO tbl_Carros (nomeFabricante, nomeModelo, anoModelo,  idCliente)
VALUES ('Volkswagem', 'FOX', 2008, 1), ('Hyunday', 'Tucson', 2013, 1)

select* from tbl_Clientes

select* from tbl_Carros 

--JUnção dos selects

SELECT 
	C.nomeCliente,
	CA.nomeModelo,
	CA.nomeFabricante,
	CA.anoModelo
FROM
	tbl_Clientes C,
	tbl_Carros CA
WHERE
	C.idCliente = CA.idCliente