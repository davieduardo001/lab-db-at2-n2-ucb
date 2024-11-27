-- usuario 

INSERT INTO Usuario (
    ID_Usuario, 
    Nome_Usuario, 
    Data_Nascimento, 
    Endereco_Email, 
    Foto_Perfil, 
    Senha, 
    Num_Seguidores, 
    Num_Seguindo
) 
VALUES
(1, 'João Silva', '1990-05-10', 'joao.silva@email.com', NULL, 'senha123', 150, 200),
(2, 'Maria Oliveira', '1985-08-22', 'maria.oliveira@email.com', NULL, 'senha456', 300, 250),
(3, 'Carlos Pereira', '1992-11-15', 'carlos.pereira@email.com', NULL, 'senha789', 100, 120),
(4, 'Ana Santos', '1995-07-30', 'ana.santos@email.com', NULL, 'senha321', 400, 380),
(5, 'Pedro Costa', '1988-03-12', 'pedro.costa@email.com', NULL, 'senha654', 50, 75),
(6, 'Fernanda Lima', '1991-09-25', 'fernanda.lima@email.com', NULL, 'senha987', 220, 180),
(7, 'Lucas Rocha', '1989-06-18', 'lucas.rocha@email.com', NULL, 'senha246', 90, 110),
(8, 'Juliana Almeida', '1993-12-05', 'juliana.almeida@email.com', NULL, 'senha135', 500, 450),
(9, 'Gustavo Ramos', '1996-01-20', 'gustavo.ramos@email.com', NULL, 'senha000', 800, 956),
(10, 'Beatriz Martins', '1994-02-08', 'beatriz.martins@email.com', NULL, 'senha135', 180, 160);

-- mensagem

INSERT INTO mydb.Mensagem (ID_Mensagem, Conteudo_Mensagem, Data_Hora_Mensagem) VALUES
(1, 'Olá, como você está? Este é um lembrete sobre a reunião de amanhã.', '2024-11-25 10:00:00'),
(2, 'Sua solicitação foi recebida e está sendo processada. Aguarde nossa resposta em breve.', '2024-11-25 11:00:00'),
(3, 'Temos uma promoção exclusiva para você! Não perca!', '2024-11-25 12:00:00'),
(4, 'Sua conta foi atualizada com sucesso. Obrigado por escolher nossos serviços.', '2024-11-25 13:00:00'),
(5, 'Lembrete: O prazo para envio do relatório final é hoje às 18h.', '2024-11-25 14:00:00'),
(6, 'Você recebeu uma nova mensagem de um colega. Acesse seu perfil para visualizar.', '2024-11-25 15:00:00'),
(7, 'Atenção! Sua assinatura será renovada automaticamente em breve.', '2024-11-25 16:00:00'),
(8, 'O sistema de pagamento está fora do ar. Pedimos desculpas pelo inconveniente.', '2024-11-25 17:00:00'),
(9, 'Agradecemos pelo seu feedback. Ele é muito importante para nós!', '2024-11-25 18:00:00'),
(10, 'Confirmação de inscrição no evento XYZ. Estamos ansiosos para vê-lo lá!', '2024-11-25 19:00:00');

-- comunidade 

INSERT INTO mydb.Comunidade (ID_Comunidade, Nome_Comunidade, Descricao_Comnidade, Data_Criacao, Funcao)
VALUES
(1, 'Amantes de Tecnologia', 'Comunidade para discussão de temas tecnológicos.', '2022-01-10', 'Discussão'),
(2, 'Leitores Ávidos', 'Grupo para compartilhar experiências de leitura.', '2020-05-22', 'Compartilhamento'),
(3, 'Cozinha Fácil', 'Receitas e dicas culinárias práticas.', '2019-03-15', 'Receitas'),
(4, 'Viajantes pelo Mundo', 'Experiências e dicas de viagens.', '2021-07-08', 'Turismo'),
(5, 'Fitness Club', 'Grupo para motivação e dicas de exercícios físicos.', '2022-09-01', 'Saúde'),
(6, 'Fotógrafos Iniciantes', 'Compartilhe e aprenda técnicas de fotografia.', '2020-11-12', 'Fotografia'),
(7, 'Cinema e Séries', 'Discussão sobre filmes e séries.', '2018-04-18', 'Entretenimento'),
(8, 'Jardim Encantado', 'Grupo para entusiastas de jardinagem.', '2021-06-30', 'Hobby'),
(9, 'Gamers Unidos', 'Jogadores compartilhando experiências de jogos.', '2019-02-20', 'Jogos'),
(10, 'Arte e Cultura', 'Explorando o mundo da arte e cultura.', '2020-08-10', 'Arte');

-- interesse

INSERT INTO mydb.Interesse (ID_Interesse, Nome_Interesse)
VALUES
(1, 'Tecnologia'),
(2, 'Leitura'),
(3, 'Culinária'),
(4, 'Viagem'),
(5, 'Fitness'),
(6, 'Fotografia'),
(7, 'Cinema'),
(8, 'Jardinagem'),
(9, 'Jogos'),
(10, 'Arte');

-- postagem 
INSERT INTO mydb.Postagem (ID_Postagem, Texto, Midia, Data_Hora_Postagem, Usuario_ID_Usuario) VALUES
(1, 'Texto da postagem 1', NULL, '2023-01-01 10:00:00', 1),
(2, 'Texto da postagem 2', NULL, '2023-01-02 11:00:00', 2),
(3, 'Texto da postagem 3', NULL, '2023-01-03 12:00:00', 3),
(4, 'Texto da postagem 4', NULL, '2023-01-04 13:00:00', 4),
(5, 'Texto da postagem 5', NULL, '2023-01-05 14:00:00', 5),
(6, 'Texto da postagem 6', NULL, '2023-01-06 15:00:00', 6),
(7, 'Texto da postagem 7', NULL, '2023-01-07 16:00:00', 7),
(8, 'Texto da postagem 8', NULL, '2023-01-08 17:00:00', 8),
(9, 'Texto da postagem 9', NULL, '2023-01-09 18:00:00', 9),
(10, 'Texto da postagem 10', NULL, '2023-01-10 19:00:00', 10);

-- interacao

INSERT INTO mydb.Interacao (ID_Interacao, Tipo_Interacao, Data_Hora_Interacao, Postagem_ID_Postagem, Postagem_Usuario_ID_Usuario) VALUES
(1, 'Like', '2023-01-01 11:00:00', 1, 1),
(2, 'Comentário', '2023-01-02 11:30:00', 2, 2),
(3, 'Compartilhar', '2023-01-03 12:00:00', 3, 3),
(4, 'Like', '2023-01-04 12:30:00', 4, 4),
(5, 'Comentário', '2023-01-05 13:00:00', 5, 5),
(6, 'Compartilhar', '2023-01-06 13:30:00', 6, 6),
(7, 'Like', '2023-01-07 14:00:00', 7, 7),
(8, 'Comentário', '2023-01-08 14:30:00', 8, 8),
(9, 'Compartilhar', '2023-01-09 15:00:00', 9, 9),
(10, 'Like', '2023-01-10 15:30:00', 10, 10);

-- comentario

INSERT INTO mydb.Comentario (ID_Comentario, Conteudo_Comentario, Data_Hora_Comentario, Postagem_ID_Postagem, Postagem_Usuario_ID_Usuario) VALUES
(1, 'Comentário 1', '2023-01-01 11:15:00', 1, 1),
(2, 'Comentário 2', '2023-01-02 12:15:00', 2, 2),
(3, 'Comentário 3', '2023-01-03 13:15:00', 3, 3),
(4, 'Comentário 4', '2023-01-04 14:15:00', 4, 4),
(5, 'Comentário 5', '2023-01-05 15:15:00', 5, 5),
(6, 'Comentário 6', '2023-01-06 16:15:00', 6, 6),
(7, 'Comentário 7', '2023-01-07 17:15:00', 7, 7),
(8, 'Comentário 8', '2023-01-08 18:15:00', 8, 8),
(9, 'Comentário 9', '2023-01-09 19:15:00', 9, 9),
(10, 'Comentário 10', '2023-01-10 20:15:00', 10, 10);

-- tabelas consequencia 

INSERT INTO mydb.Usuario_has_Comunidade (Usuario_ID_Usuario, Comunidade_ID_Comunidade) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- tabela consequencia 

INSERT INTO mydb.Usuario_has_Mensagem (Usuario_ID_Usuario, Mensagem_ID_Mensagem) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);


-- notificacao 

INSERT INTO notificacao (
    ID_Notificacao, 
    Tipo_Notificacao, 
    Conteudo_Notificacao, 
    Data_Hora_Notificacao, 
    Interacao_ID_Interacao, 
    IDdaPostagemInteragida, 
    IDdoUsuarioQueInteragiu, 
    Postagem_ID_Postagem, 
    IDdoUsuarioQueFezPost, 
    Comentario_ID_Comentario, 
    IDdoPostComentado, 
    IDdoUsuarioQueComentou, 
    Mensagem_ID_Mensagem
)
VALUES
(2, 'Comentário', 'Você tem um novo comentário em sua postagem.', '2024-11-26 10:00:00', 2, 2, 2, 2, 2, 2, 2, 2, 2),
(3, 'Curtida', 'Seu post recebeu uma nova curtida.', '2024-11-27 10:00:00', 3, 3, 3, 3, 3, 3, 3, 3, 3),
(4, 'Comentário', 'Você tem um novo comentário em sua postagem.', '2024-11-28 10:00:00', 4, 4, 4, 4, 4, 4, 4, 4, 4),
(5, 'Curtida', 'Seu post recebeu uma nova curtida.', '2024-11-29 10:00:00', 5, 5, 5, 5, 5, 5, 5, 5, 5),
(6, 'Comentário', 'Você tem um novo comentário em sua postagem.', '2024-11-30 10:00:00', 6, 6, 6, 6, 6, 6, 6, 6, 6),
(7, 'Curtida', 'Seu post recebeu uma nova curtida.', '2024-12-01 10:00:00', 7, 7, 7, 7, 7, 7, 7, 7, 7),
(8, 'Comentário', 'Você tem um novo comentário em sua postagem.', '2024-12-02 10:00:00', 8, 8, 8, 8, 8, 8, 8, 8, 8),
(9, 'Curtida', 'Seu post recebeu uma nova curtida.', '2024-12-03 10:00:00', 9, 9, 9, 9, 9, 9, 9, 9, 9),
(10, 'Comentário', 'Você tem um novo comentário em sua postagem.', '2024-12-04 10:00:00', 10, 10, 10, 10, 10, 10, 10, 10, 10);