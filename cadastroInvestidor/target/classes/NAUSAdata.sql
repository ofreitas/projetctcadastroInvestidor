--@Inheritance(strategy = InheritanceType.JOINED)
INSERT INTO INVESTIDOR(id, nome) 
VALUES(1, 'Tiringa');

INSERT INTO INVESTIDOR(id, nome) 
VALUES(2, 'TiringaEmpresa');

INSERT INTO INVESTIDORPF(id, data_Nascimento, cpf, sexo, documento) 
VALUES(1, '2019-05-05', '1111111111', 'M', 'doc123');

INSERT INTO INVESTIDORPJ(id, cnpj, inscricao, razao_Social) 
VALUES(2, '222222222222', '123123', 'EmpresaDoTiringa');

INSERT INTO ENDERECO(logradouro, numero, cidade, estado, investidor_id) 
VALUES('rua a', '123', 'Amparo', 'SP', 1);

INSERT INTO ENDERECO(logradouro, numero, cidade, estado, investidor_id) 
VALUES('rua b', '222', 'Amparo', 'SP', 2);

--@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
--INSERT INTO INVESTIDORPF(id, nome, data_Nascimento, cpf, sexo, documento) 
--VALUES('1', 'Tiringa', '2019-05-05', '1111111111', 'M', 'doc123');
--
--INSERT INTO INVESTIDORPJ(id, nome, cnpj, inscricao, razao_Social) 
--VALUES('2', 'TiringaEmpresa', '222222222222', '123123', 'EmpresaDoTiringa');

-- @Inheritance(strategy = InheritanceType.SINGLE_TABLE)
--INSERT INTO INVESTIDOR(dtype, nome, endereco, data_Nascimento, cpf, sexo, documento,
--cnpj, inscricao, razao_Social) 
--VALUES('InvestidorPF', 'Tiringa', 'rua a, 123 - Amparo-SP', '2019-05-05', '1111111111', 'M', 'doc123',
--null, null, null);
--
--INSERT INTO INVESTIDOR(dtype, nome, endereco, data_Nascimento, cpf, sexo, documento,
--cnpj, inscricao, razao_Social) 
--VALUES('InvestidorPJ', 'TiringaEmpresa', 'rua b, 222 - Amparo-SP', null, null, null, null,
--'222222222222', '123123', 'EmpresaDoTiringa');

INSERT INTO CONTA_CORRENTE(nome, banco, agencia, numero, digito, investidor_id)
VALUES('Tiringa', 'senta andré', '0012', '0123421', '4', 1);

INSERT INTO CONTA_CORRENTE(nome, banco, agencia, numero, digito, investidor_id)
VALUES('Tiringa', 'will', '1111', '4545451', '1', 1);

INSERT INTO CONTA_CORRENTE(nome, banco, agencia, numero, digito, investidor_id)
VALUES('TiringaEmpresa', 'JP Morgan', '0001', '1123421', '5', 2);