INSERT INTO Usuario (nome, login, senha, cargo)
VALUES ('Pedro Augusto Silva', 'Pedro', '123456', 'comum'),
('Gabriel', 'Gabe', '123456', 'admin'),
('João', 'joaozin', '123456', 'comum'),
('Wytheny', 'wemarinhoo', '123456', 'admin'),
('Cauã', 'cauãzin', '123456', 'admin'),
('Amanda', 'Amandx', '123456', 'comum'),
('Letícia', 'lê', '123456', 'comum'),
('Joaquim', 'joa', '123456', 'comum'),
('Arthur', 'thur', '123456', 'comum'),
('Guilherme', 'gui', '123456', 'comum');


INSERT INTO Mensagem (conteudo, topico, id_usuario_comum, id_usuario_admin)
VALUES ('Olá, como posso ajudá-lo?', 'Suporte', 1, 2),
('Olá, como posso ajudá-lo?', 'Suporte', 2, 5),
('Olá, como tenho acesso ao meu dashboard?', 'Suporte', 3, 4),
('Olá, não estou conseguindo acessar minha conta', 'Suporte', 4, 4),
('Olá, como posso ajudá-lo?', 'Suporte', 5, 2),
('Olá, não estou conseguindo acessar minha conta','Suporte', 6, 5),
('Olá, como tenho acesso ao meu dashboard?', 'Suporte', 7, 2),
('Olá, como posso ajudá-lo?', 'Suporte', 8, 5),
('Olá, como tenho acesso ao meu dashboard?', 'Suporte', 9, 4),
('Olá, como posso ajudá-lo?', 'Suporte', 10, 5);


INSERT INTO Notificacao (atualizacao, corpo_notificacao, horario)
VALUES ('Nova mensagem recebida', 'Você recebeu uma nova mensagem no tópico "Suporte".', '2023-12-01'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de alunos".', '2023-12-02'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de professores".', '2023-12-02'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de funcionarios".', '2023-12-02'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de empresas parceiras".', '2023-12-03'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de financeiro".', '2023-12-03'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de acadêmico".', '2023-12-03'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de disciplinas".', '2023-12-04'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de metas".', '2023-12-04'),
('Novo dashboard criado', 'Você criou um novo dashboard chamado "Dashboard de notas".', '2023-12-04');

INSERT INTO Notificacao_usuario (id_usuario, id_notificacao)
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


INSERT INTO Dashboard (tipo, nome)
VALUES ('Dados', 'Dashboard Dados'),
('Dados2', 'Dashboard Dados2'),
('Dados', 'Dados dos alunos'),
('Dados', 'Dados dos professores'),
('Dados', 'Dados dos funcionários'),
('Dados', 'Dados de empresas parceiras'),
('Dados', 'Dados do setor financeiro'),
('Dados', 'Dados do setor acadêmico'),
('Dados', 'Dados das notas'),
('Dados', 'Dados das disciplinas');

INSERT INTO graficos(tipo, cidade, nome, legenda)
VALUES ('Barra', 'Caruaru', 'Escolar', 'Acessibilidade nas escolas'),
('Coluna', 'Caruaru', 'Urbano', 'Acessibilidade nas ruas'),
('Linha', 'Recife', 'Escolar', 'Acessibilidade nas escolas'),
('Barra', 'Recife', 'Escolar', 'Acessibilidade nas escolas'),
('Linha', 'Recife', 'Trabalho', 'Acessibilidade no mercado de trabalho'),
('Setor', 'Petrolina', 'Escolar', 'Acessibilidade nas escolas'),
('Barra', 'Petrolina', 'Urbano', 'Acessibilidade nas ruas'),
('Setor', 'Petrolina', 'Trabalho', 'Acessibilidade no mercado de trabalho'),
('Setor', 'Petrolina', 'Turismo', 'Acessibilidade para turistas'),
('Barra', 'Gravatá', 'Turismo', 'Acessibilidade para turistas');

INSERT INTO dados(json, id_graficos)
VALUES (NULL, 1),
(NULL, 2),
(NULL, 3),
(NULL, 4),
(NULL, 5),
(NULL, 6),
(NULL, 7),
(NULL, 8),
(NULL, 9),
(NULL, 10);

INSERT INTO dashboard_graficos(id_graficos, id_dashboard)
VALUES(1,3),
(2,1),
(3,3),
(4,3),
(5,5),
(6,3),
(7,1),
(8,5),
(9,1),
(10,1);

INSERT INTO usuario_dashboard(id_usuario, id_dashboard)
VALUES(1,8),
(2,2),
(3,4),
(4,6),
(5,3),
(6,9),
(7,5),
(8,1),
(9,7),
(10,10);