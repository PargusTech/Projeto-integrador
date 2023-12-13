SELECT * FROM Usuario;

SELECT * FROM mensagem WHERE topico = 'Suporte';

SELECT * FROM notificacao WHERE horario > '2023-12-02';

SELECT * FROM dashboard WHERE nome = 'Dashboard Dados';

SELECT * FROM graficos WHERE tipo = 'Barra';

SELECT Usuario.nome, Dashboard.nome
FROM Usuario
JOIN usuario_dashboard ON Usuario.id = usuario_dashboard.id_usuario
JOIN Dashboard ON usuario_dashboard.id_dashboard = Dashboard.id;

SELECT Usuario.nome, COUNT(notificacao_usuario.id_notificacao) AS total_notificacoes
FROM Usuario
LEFT JOIN notificacao_usuario ON Usuario.id = notificacao_usuario.id_usuario
GROUP BY Usuario.nome;

SELECT Dashboard.nome, graficos.nome AS nome_grafico
FROM Dashboard
JOIN dashboard_graficos ON Dashboard.id = dashboard_graficos.id_dashboard
JOIN graficos ON dashboard_graficos.id_graficos = graficos.id;

SELECT mensagem.conteudo, Usuario.nome, Usuario.cargo
FROM mensagem
JOIN Usuario ON mensagem.id_usuario_comum = Usuario.id OR mensagem.id_usuario_admin = Usuario.id;

SELECT graficos.nome AS nome_grafico, dados.json
FROM graficos
LEFT JOIN dados ON graficos.id = dados.id_graficos;