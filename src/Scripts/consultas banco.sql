-- usuario com maior engajamento 

SELECT 
    u.ID_Usuario,
    u.Nome_Usuario,
    COUNT(DISTINCT p.ID_Postagem) AS Total_Postagens,
    COUNT(DISTINCT c.ID_Comentario) AS Total_Comentarios,
    COUNT(DISTINCT n.ID_Notificacao) AS Total_Interacoes,
    (COUNT(DISTINCT p.ID_Postagem) + COUNT(DISTINCT c.ID_Comentario) + COUNT(DISTINCT n.ID_Notificacao)) AS Total_Engajamento
FROM 
    usuario u
LEFT JOIN postagem p ON u.ID_Usuario = p.Usuario_ID_Usuario
LEFT JOIN comentario c ON u.ID_Usuario = c.Postagem_Usuario_ID_Usuario
LEFT JOIN notificacao n ON u.ID_Usuario = n.IDdoUsuarioQueInteragiu
GROUP BY 
    u.ID_Usuario, u.Nome_Usuario
ORDER BY 
    Total_Engajamento DESC
LIMIT 1;

-- comunidade mais ativa 

SELECT 
    c.ID_Comunidade,
    c.Nome_Comunidade,
    COUNT(p.ID_Postagem) AS Total_Postagens
FROM 
    Comunidade c
INNER JOIN Usuario_has_Comunidade uhc 
    ON c.ID_Comunidade = uhc.Comunidade_ID_Comunidade
INNER JOIN Usuario u 
    ON uhc.Usuario_ID_Usuario = u.ID_Usuario
INNER JOIN Postagem p 
    ON u.ID_Usuario = p.Usuario_ID_Usuario
GROUP BY 
    c.ID_Comunidade, c.Nome_Comunidade
ORDER BY 
    Total_Postagens DESC
LIMIT 1;

-- usuario mais engajado na comunidade amantes da tecnologia

SELECT 
    u.Nome_Usuario,
    COUNT(DISTINCT c.ID_Comentario) AS Total_Comentarios,
    COUNT(DISTINCT p.ID_Postagem) AS Total_Postagens,
    (COUNT(DISTINCT c.ID_Comentario) + COUNT(DISTINCT p.ID_Postagem)) AS Total_Engajamento
FROM 
    Usuario u
INNER JOIN Usuario_has_Comunidade uhc 
    ON u.ID_Usuario = uhc.Usuario_ID_Usuario
INNER JOIN Comunidade com 
    ON uhc.Comunidade_ID_Comunidade = com.ID_Comunidade
LEFT JOIN Postagem p 
    ON u.ID_Usuario = p.Usuario_ID_Usuario
LEFT JOIN Comentario c 
    ON p.ID_Postagem = c.Postagem_ID_Postagem
WHERE 
    com.Nome_Comunidade = 'Amantes de Tecnologia'
GROUP BY 
    u.Nome_Usuario
ORDER BY 
    Total_Engajamento DESC
LIMIT 5;

-- numero medio de interações por postagem

SELECT 
    p.ID_Postagem,
    u.Nome_Usuario,
    (COUNT(DISTINCT c.ID_Comentario) + COUNT(DISTINCT n.ID_Notificacao)) AS Total_Interacoes,
    COUNT(DISTINCT c.ID_Comentario) / NULLIF(COUNT(DISTINCT p.ID_Postagem), 0) AS Media_Interacoes
FROM 
    postagem p
LEFT JOIN comentario c ON p.ID_Postagem = c.Postagem_ID_Postagem
LEFT JOIN notificacao n ON p.ID_Postagem = n.Postagem_ID_Postagem
INNER JOIN usuario u ON p.Usuario_ID_Usuario = u.ID_Usuario
GROUP BY 
    p.ID_Postagem, u.Nome_Usuario
ORDER BY 
    Media_Interacoes DESC;

-- top 3 comunidades com maior engajamento

SELECT 
    com.Nome_Comunidade,
    COUNT(DISTINCT p.ID_Postagem) AS Total_Postagens,
    COUNT(DISTINCT c.ID_Comentario) AS Total_Comentarios,
    COUNT(DISTINCT n.ID_Notificacao) AS Total_Notificacoes,
    (COUNT(DISTINCT p.ID_Postagem) + COUNT(DISTINCT c.ID_Comentario) + COUNT(DISTINCT n.ID_Notificacao)) AS Total_Engajamento
FROM 
    Comunidade com
INNER JOIN Usuario_has_Comunidade uhc 
    ON com.ID_Comunidade = uhc.Comunidade_ID_Comunidade
INNER JOIN Usuario u 
    ON uhc.Usuario_ID_Usuario = u.ID_Usuario
LEFT JOIN Postagem p 
    ON u.ID_Usuario = p.Usuario_ID_Usuario
LEFT JOIN Comentario c 
    ON p.ID_Postagem = c.Postagem_ID_Postagem
LEFT JOIN Notificacao n 
    ON p.ID_Postagem = n.Postagem_ID_Postagem
GROUP BY 
    com.Nome_Comunidade
ORDER BY 
    Total_Engajamento DESC
LIMIT 3;

-- postagem mais comentada e curtida 

SELECT 
    p.ID_Postagem,
    u.Nome_Usuario,
    COUNT(DISTINCT c.ID_Comentario) AS Total_Comentarios,
    COUNT(DISTINCT n.ID_Notificacao) AS Total_Curtidas,
    (COUNT(DISTINCT c.ID_Comentario) + COUNT(DISTINCT n.ID_Notificacao)) AS Total_Interacoes
FROM 
    postagem p
LEFT JOIN comentario c ON p.ID_Postagem = c.Postagem_ID_Postagem
LEFT JOIN notificacao n ON p.ID_Postagem = n.Postagem_ID_Postagem AND n.Tipo_Notificacao = 'Curtida'
INNER JOIN usuario u ON p.Usuario_ID_Usuario = u.ID_Usuario
GROUP BY 
    p.ID_Postagem, u.Nome_Usuario
ORDER BY 
    Total_Interacoes DESC
LIMIT 1;

-- quantas interações tem de cada tipo

SELECT 
    Tipo_Notificacao,
    COUNT(*) AS Total_Interacoes
FROM 
    notificacao
GROUP BY 
    Tipo_Notificacao
ORDER BY 
    Total_Interacoes DESC;
    
    
-- usuario mais ativo por dia

SELECT 
    DATE(p.Data_Hora_Postagem) AS Dia,
    u.Nome_Usuario,
    COUNT(DISTINCT p.ID_Postagem) AS Total_Postagens,
    COUNT(DISTINCT c.ID_Comentario) AS Total_Comentarios,
    (COUNT(DISTINCT p.ID_Postagem) + COUNT(DISTINCT c.ID_Comentario)) AS Total_Interacoes
FROM 
    usuario u
LEFT JOIN postagem p ON u.ID_Usuario = p.Usuario_ID_Usuario
LEFT JOIN comentario c ON u.ID_Usuario = c.Postagem_Usuario_ID_Usuario
GROUP BY 
    Dia, u.Nome_Usuario
ORDER BY 
    Dia ASC, Total_Interacoes DESC;






