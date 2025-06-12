CREATE DATABASE IF NOT EXISTS Impressionador;

use Impressionador;


CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_nascimento DATE,
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    cep VARCHAR(10),
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO clientes (nome, sobrenome, email, telefone, data_nascimento, endereco, cidade, estado, cep) VALUES
('João', 'Silva', 'joao.silva@email.com', '(11) 98765-4321', '1985-03-15', 'Rua das Flores, 123', 'São Paulo', 'SP', '01000-000'),
('Maria', 'Souza', 'maria.souza@email.com', '(21) 91234-5678', '1990-07-22', 'Av. Atlântica, 456', 'Rio de Janeiro', 'RJ', '20000-000'),
('Pedro', 'Oliveira', 'pedro.oliveira@email.com', '(31) 99876-1234', '1978-11-01', 'Rua da Liberdade, 789', 'Belo Horizonte', 'MG', '30000-000'),
('Ana', 'Costa', 'ana.costa@email.com', '(41) 92345-6789', '1995-01-05', 'Rua XV de Novembro, 101', 'Curitiba', 'PR', '80000-000'),
('Carlos', 'Ferreira', 'carlos.ferreira@email.com', '(51) 97654-3210', '1982-09-10', 'Av. Protásio Alves, 202', 'Porto Alegre', 'RS', '90000-000'),
('Laura', 'Pereira', 'laura.pereira@email.com', '(61) 91111-2222', '1998-04-20', 'Quadra 10, Bloco A, 303', 'Brasília', 'DF', '70000-000'),
('Fernando', 'Santos', 'fernando.santos@email.com', '(71) 93333-4444', '1975-06-30', 'Rua Chile, 505', 'Salvador', 'BA', '40000-000'),
('Beatriz', 'Almeida', 'beatriz.almeida@email.com', '(81) 95555-6666', '1992-02-28', 'Av. Boa Viagem, 606', 'Recife', 'PE', '50000-000'),
('Rafael', 'Gomes', 'rafael.gomes@email.com', '(85) 97777-8888', '1980-12-12', 'Av. Beira Mar, 707', 'Fortaleza', 'CE', '60000-000'),
('Camila', 'Martins', 'camila.martins@email.com', '(91) 99999-0000', '1993-08-08', 'Travessa 13 de Maio, 808', 'Belém', 'PA', '66000-000'),
('Thiago', 'Lima', 'thiago.lima@email.com', '(11) 91234-9876', '1987-01-25', 'Rua Augusta, 909', 'São Paulo', 'SP', '01300-000'),
('Patrícia', 'Rodrigues', 'patricia.rodrigues@email.com', '(21) 98765-1234', '1991-10-03', 'Av. Rio Branco, 111', 'Rio de Janeiro', 'RJ', '20090-000'),
('Marcelo', 'Barbosa', 'marcelo.barbosa@email.com', '(31) 92345-8765', '1970-05-18', 'Rua Piauí, 222', 'Belo Horizonte', 'MG', '30100-000'),
('Amanda', 'Dias', 'amanda.dias@email.com', '(41) 97654-0987', '1996-06-07', 'Rua Sete de Setembro, 333', 'Curitiba', 'PR', '80200-000'),
('Bruno', 'Nunes', 'bruno.nunes@email.com', '(51) 91122-3344', '1989-03-29', 'Av. Osvaldo Aranha, 444', 'Porto Alegre', 'RS', '90030-000'),
('Cristina', 'Carvalho', 'cristina.carvalho@email.com', '(61) 95566-7788', '1983-09-14', 'SQN 20, Bloco C, 555', 'Brasília', 'DF', '70800-000'),
('Diego', 'Mendes', 'diego.mendes@email.com', '(71) 99887-6655', '1994-11-21', 'Ladeira da Barra, 666', 'Salvador', 'BA', '40140-000'),
('Juliana', 'Castro', 'juliana.castro@email.com', '(81) 91212-3434', '1979-04-09', 'Rua do Sol, 777', 'Recife', 'PE', '50010-000'),
('Lucas', 'Rocha', 'lucas.rocha@email.com', '(85) 93434-5656', '1997-07-07', 'Av. Engenheiro Santana Júnior, 888', 'Fortaleza', 'CE', '60175-000'),
('Isabela', 'Freitas', 'isabela.freitas@email.com', '(91) 95656-7878', '1986-02-02', 'Av. Nazaré, 999', 'Belém', 'PA', '66040-000');


select nome from clientes;

select distinct cidade from clientes;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO produtos (nome, descricao, preco, estoque) VALUES
('Notebook Gamer', 'Notebook de alta performance para jogos', 5500.00, 50),
('Smartphone X10', 'Celular de última geração com câmera 48MP', 2800.00, 120),
('Fone Bluetooth ANC', 'Fone de ouvido com cancelamento de ruído ativo', 450.00, 200),
('Monitor UltraWide', 'Monitor curvo 34 polegadas para produtividade', 1800.00, 70),
('Teclado Mecânico RGB', 'Teclado com switches mecânicos e iluminação RGB', 300.00, 150),
('Mouse Ergonômico', 'Mouse sem fio ergonômico para longas horas de uso', 120.00, 180),
('Webcam Full HD', 'Webcam com resolução 1080p para videoconferências', 250.00, 90),
('Impressora Multifuncional', 'Impressora a laser com scanner e copiadora', 900.00, 40),
('Roteador Wi-Fi 6', 'Roteador de alta velocidade com tecnologia Wi-Fi 6', 350.00, 100),
('SSD 1TB NVMe', 'Armazenamento rápido para notebooks e desktops', 700.00, 60),
('Smart TV 55 polegadas', 'TV 4K com sistema operacional inteligente', 3200.00, 30),
('Console de Videogame PS5', 'Última geração de console de videogame', 4000.00, 25),
('Câmera DSLR', 'Câmera profissional para fotografia e vídeo', 6000.00, 15),
('Drone com Câmera 4K', 'Drone para filmagens aéreas com câmera de alta resolução', 2500.00, 20),
('Tablet Android', 'Tablet versátil para estudo e entretenimento', 1200.00, 80);


-- Tabela: pedidos
-- Registra os pedidos feitos pelos clientes
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('pendente', 'processando', 'enviado', 'entregue', 'cancelado') DEFAULT 'pendente',
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO pedidos (cliente_id, data_pedido, status, valor_total) VALUES
(1, '2024-05-20 10:30:00', 'entregue', 5500.00), -- João Silva comprou Notebook Gamer
(2, '2024-05-21 11:00:00', 'enviado', 2800.00), -- Maria Souza comprou Smartphone X10
(3, '2024-05-21 14:15:00', 'processando', 450.00), -- Pedro Oliveira comprou Fone Bluetooth ANC
(1, '2024-05-22 09:00:00', 'pendente', 1800.00), -- João Silva comprou Monitor UltraWide
(4, '2024-05-22 16:45:00', 'entregue', 300.00), -- Ana Costa comprou Teclado Mecânico RGB
(5, '2024-05-23 10:00:00', 'enviado', 120.00), -- Carlos Ferreira comprou Mouse Ergonômico
(6, '2024-05-23 13:30:00', 'processando', 250.00), -- Laura Pereira comprou Webcam Full HD
(7, '2024-05-24 08:00:00', 'entregue', 900.00), -- Fernando Santos comprou Impressora Multifuncional
(8, '2024-05-24 11:30:00', 'enviado', 350.00), -- Beatriz Almeida comprou Roteador Wi-Fi 6
(9, '2024-05-25 15:00:00', 'pendente', 700.00), -- Rafael Gomes comprou SSD 1TB NVMe
(10, '2024-05-25 17:00:00', 'cancelado', 3200.00), -- Camila Martins cancelou Smart TV
(1, '2024-05-26 09:30:00', 'processando', 4000.00), -- João Silva comprou Console PS5
(11, '2024-05-26 12:00:00', 'enviado', 2800.00), -- Thiago Lima comprou Smartphone X10
(12, '2024-05-27 14:00:00', 'entregue', 450.00), -- Patrícia Rodrigues comprou Fone Bluetooth ANC
(13, '2024-05-27 16:00:00', 'pendente', 1800.00); -- Marcelo Barbosa comprou Monitor UltraWide


-- Tabela: pedidos_produtos (Tabela de Junção/Intermediária)
-- Relaciona pedidos a produtos (um pedido pode ter vários produtos, um produto pode estar em vários pedidos)
CREATE TABLE pedidos_produtos (
    pedido_id INT NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (pedido_id, produto_id), -- Chave primária composta
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo itens nos pedidos
INSERT INTO pedidos_produtos (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 5500.00), -- João Silva: Notebook Gamer
(2, 2, 1, 2800.00), -- Maria Souza: Smartphone X10
(3, 3, 1, 450.00), -- Pedro Oliveira: Fone Bluetooth ANC
(4, 4, 1, 1800.00), -- João Silva: Monitor UltraWide
(5, 5, 1, 300.00), -- Ana Costa: Teclado Mecânico RGB
(6, 6, 1, 120.00), -- Carlos Ferreira: Mouse Ergonômico
(7, 7, 1, 250.00), -- Laura Pereira: Webcam Full HD
(8, 8, 1, 900.00), -- Fernando Santos: Impressora Multifuncional
(9, 9, 1, 350.00), -- Beatriz Almeida: Roteador Wi-Fi 6
(10, 10, 1, 700.00), -- Rafael Gomes: SSD 1TB NVMe
(11, 11, 1, 3200.00), -- Camila Martins: Smart TV (cancelado)
(12, 12, 1, 4000.00), -- João Silva: Console PS5
(13, 2, 1, 2800.00), -- Thiago Lima: Smartphone X10
(14, 3, 1, 450.00), -- Patrícia Rodrigues: Fone Bluetooth ANC
(15, 4, 1, 1800.00), -- Marcelo Barbosa: Monitor UltraWide
(1, 5, 2, 300.00), -- João Silva (novo item): 2x Teclado Mecânico RGB (Total: 600)
(2, 6, 3, 120.00), -- Maria Souza (novo item): 3x Mouse Ergonômico (Total: 360)
(3, 1, 1, 5500.00), -- Pedro Oliveira (novo item): Notebook Gamer
(4, 7, 1, 250.00); -- João Silva (novo item): Webcam Full HD

-- ATUALIZAR VALOR_TOTAL DOS PEDIDOS APÓS INSERIR ITENS MÚLTIPLOS (EXEMPLO)
-- Note: O valor_total inicial no INSERT INTO pedidos pode não refletir a soma exata dos produtos se houver mais de um item por pedido.
-- Para garantir a consistência, você pode recalcular:
UPDATE pedidos p
SET valor_total = (SELECT SUM(pp.quantidade * pp.preco_unitario) FROM pedidos_produtos pp WHERE pp.pedido_id = p.id)
WHERE p.id IN (1, 2, 3, 4); -- Atualiza os pedidos que tiveram itens adicionados.
-- Você pode rodar este comando para todos os pedidos se quiser garantir que o valor_total seja sempre a soma dos itens:
-- UPDATE pedidos p SET valor_total = (SELECT SUM(pp.quantidade * pp.preco_unitario) FROM pedidos_produtos pp WHERE pp.pedido_id = p.id);

select * from pedidos
    where valor_total > 1000;

select nome as 'nome do produto', preco as 'preço do produto', estoque as 'quantidade em estoque' from produtos;

INSERT INTO clientes (nome, sobrenome, email, telefone, data_nascimento, endereco, cidade, estado, cep) VALUES
('Gabriel', 'Monteiro', 'gabriel.monteiro@email.com', '(12) 93456-7890', '1981-07-13', 'Rua das Palmeiras, 321', 'Campinas', 'SP', '13000-000'),
('Luana', 'Cardoso', 'luana.cardoso@email.com', '(32) 96543-2109', '1999-05-25', 'Av. Brasil, 654', 'Juiz de Fora', 'MG', '36000-000'),
('Ricardo', 'Vieira', 'ricardo.vieira@email.com', '(92) 97865-4321', '1984-09-02', 'Travessa do Comércio, 12', 'Manaus', 'AM', '69000-000'),
('Tatiane', 'Lopes', 'tatiane.lopes@email.com', '(44) 91987-6543', '1993-11-17', 'Rua Dom Pedro II, 876', 'Maringá', 'PR', '87000-000'),
('Eduardo', 'Moraes', 'eduardo.moraes@email.com', '(55) 93321-6789', '1976-08-30', 'Av. Bento Gonçalves, 543', 'Pelotas', 'RS', '96000-000'),
('Vanessa', 'Rezende', 'vanessa.rezende@email.com', '(62) 95544-7777', '1988-02-14', 'Rua Goiás, 321', 'Goiânia', 'GO', '74000-000'),
('Henrique', 'Batista', 'henrique.batista@email.com', '(73) 97766-5432', '1992-06-05', 'Praça da Sé, 909', 'Ilhéus', 'BA', '45600-000'),
('Carolina', 'Teixeira', 'carolina.teixeira@email.com', '(83) 98765-1010', '1983-04-22', 'Rua das Acácias, 789', 'João Pessoa', 'PB', '58000-000'),
('Gustavo', 'Silveira', 'gustavo.silveira@email.com', '(84) 96788-9999', '1979-12-19', 'Av. Rio Grande, 678', 'Natal', 'RN', '59000-000'),
('Bruna', 'Fonseca', 'bruna.fonseca@email.com', '(95) 91234-5678', '1997-10-07', 'Travessa São Francisco, 234', 'Boa Vista', 'RR', '69300-000'),
('Roberto', 'Cavalcanti', 'roberto.cavalcanti@email.com', '(46) 93456-6543', '1985-09-11', 'Rua Paranaíba, 333', 'Ponta Grossa', 'PR', '84000-000'),
('Nathalia', 'Ferraz', 'nathalia.ferraz@email.com', '(74) 98765-6789', '1990-07-31', 'Alameda das Rosas, 111', 'Feira de Santana', 'BA', '44000-000'),
('Marcos', 'Tavares', 'marcos.tavares@email.com', '(65) 93232-4343', '1986-05-16', 'Rua das Pedras, 555', 'Cuiabá', 'MT', '78000-000'),
('Cristiane', 'Borges', 'cristiane.borges@email.com', '(87) 94444-2222', '1994-03-26', 'Av. Sete de Setembro, 666', 'Petrolina', 'PE', '56300-000'),
('Samuel', 'Menezes', 'samuel.menezes@email.com', '(96) 98888-1111', '1982-11-09', 'Rua do Comércio, 777', 'Macapá', 'AP', '68900-000');

select * from clientes;

INSERT INTO pedidos (cliente_id, data_pedido, status, valor_total) VALUES
(21, '2025-06-10 09:30:00', 'entregue', 1200.00), -- Gabriel Monteiro comprou um Tablet Android
(22, '2025-06-10 11:45:00', 'enviado', 350.00), -- Luana Cardoso comprou um Roteador Wi-Fi 6
(23, '2025-06-10 14:00:00', 'processando', 450.00), -- Ricardo Vieira comprou um Fone Bluetooth ANC
(24, '2025-06-11 08:15:00', 'pendente', 6000.00), -- Tatiane Lopes comprou uma Câmera DSLR
(25, '2025-06-11 13:00:00', 'cancelado', 5500.00), -- Eduardo Moraes cancelou um Notebook Gamer
(26, '2025-06-12 09:30:00', 'entregue', 1800.00), -- Vanessa Rezende comprou um Monitor UltraWide
(27, '2025-06-12 15:30:00', 'processando', 2500.00), -- Henrique Batista comprou um Drone com Câmera 4K
(28, '2025-06-13 10:00:00', 'pendente', 3200.00), -- Carolina Teixeira comprou uma Smart TV 55"
(29, '2025-06-13 14:30:00', 'enviado', 120.00), -- Gustavo Silveira comprou um Mouse Ergonômico
(30, '2025-06-14 11:00:00', 'entregue', 300.00), -- Bruna Fonseca comprou um Teclado Mecânico RGB
(31, '2025-06-14 15:45:00', 'processando', 900.00), -- Roberto Cavalcanti comprou uma Impressora Multifuncional
(32, '2025-06-15 10:30:00', 'enviado', 700.00), -- Nathalia Ferraz comprou um SSD 1TB NVMe
(33, '2025-06-15 12:00:00', 'entregue', 2800.00), -- Marcos Tavares comprou um Smartphone X10
(34, '2025-06-16 08:45:00', 'pendente', 4000.00), -- Cristiane Borges comprou um Console PS5
(35, '2025-06-16 14:15:00', 'entregue', 250.00); -- Samuel Menezes comprou uma Webcam Full HD

select  * from pedidos;

INSERT INTO pedidos_produtos (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(21, 15, 1, 1200.00), -- Gabriel Monteiro: Tablet Android
(22, 9, 1, 350.00), -- Luana Cardoso: Roteador Wi-Fi 6
(23, 3, 1, 450.00), -- Ricardo Vieira: Fone Bluetooth ANC
(24, 13, 1, 6000.00), -- Tatiane Lopes: Câmera DSLR
(25, 1, 1, 5500.00), -- Eduardo Moraes: Notebook Gamer (cancelado)
(26, 4, 1, 1800.00), -- Vanessa Rezende: Monitor UltraWide
(27, 14, 1, 2500.00), -- Henrique Batista: Drone com Câmera 4K
(28, 11, 1, 3200.00), -- Carolina Teixeira: Smart TV 55"
(29, 6, 1, 120.00), -- Gustavo Silveira: Mouse Ergonômico
(30, 5, 1, 300.00), -- Bruna Fonseca: Teclado Mecânico RGB
(31, 8, 1, 900.00), -- Roberto Cavalcanti: Impressora Multifuncional
(32, 10, 1, 700.00), -- Nathalia Ferraz: SSD 1TB NVMe
(33, 2, 1, 2800.00), -- Marcos Tavares: Smartphone X10
(34, 12, 1, 4000.00), -- Cristiane Borges: Console PS5
(35, 7, 1, 250.00); -- Samuel Menezes: Webcam Full HD

select * from pedidos_produtos;

UPDATE pedidos p
SET valor_total = (SELECT SUM(pp.quantidade * pp.preco_unitario) FROM pedidos_produtos pp WHERE pp.pedido_id = p.id)
WHERE p.id BETWEEN 21 AND 35;

select * from pedidos;








































