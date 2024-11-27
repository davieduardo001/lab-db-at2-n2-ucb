-- criando a tabela de log do usuario

/*DROP TABLE IF EXISTS log_usuario;

CREATE TABLE log_usuario (
    ID_Log INT AUTO_INCREMENT PRIMARY KEY,
    Usuario_ID INT NOT NULL,
    Campo_Alterado VARCHAR(255),
    Valor_Antigo TEXT,
    Valor_Novo TEXT,
    Data_Hora_Alteracao DATETIME NOT NULL
);*/

-- criando o trigger 
/*
DELIMITER $$

CREATE TRIGGER after_usuario_update
AFTER UPDATE ON usuario
FOR EACH ROW
BEGIN
    -- Verifica se o Nome_Usuario foi alterado
    IF OLD.Nome_Usuario <> NEW.Nome_Usuario THEN
        INSERT INTO log_usuario (
            Usuario_ID,
            Campo_Alterado,
            Valor_Antigo,
            Valor_Novo,
            Data_Hora_Alteracao
        )
        VALUES (
            NEW.ID_Usuario,
            'Nome_Usuario',
            OLD.Nome_Usuario,
            NEW.Nome_Usuario,
            NOW()
        );
    END IF;

    -- Verifica se o Endereco_Email foi alterado
    IF OLD.Endereco_Email <> NEW.Endereco_Email THEN
        INSERT INTO log_usuario (
            Usuario_ID,
            Campo_Alterado,
            Valor_Antigo,
            Valor_Novo,
            Data_Hora_Alteracao
        )
        VALUES (
            NEW.ID_Usuario,
            'Endereco_Email',
            OLD.Endereco_Email,
            NEW.Endereco_Email,
            NOW()
        );
    END IF;
END $$

DELIMITER ;*/

-- fazendo uma atualização em um dos campos relevantes pro log

UPDATE usuario
SET Nome_Usuario = 'Maria Oliveira', Endereco_Email = 'maria.oliveira@email.com'
WHERE ID_Usuario = 1;


-- vendo se o trigger foi acionado 

SELECT * FROM log_usuario;


