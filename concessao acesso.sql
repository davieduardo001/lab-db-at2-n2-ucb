-- colocando a coluna de papel na usuario comunidade

ALTER TABLE Usuario_has_Comunidade
ADD COLUMN Papel ENUM('membro', 'administrador') NOT NULL DEFAULT 'membro';

-- dando papel de adminstrador 

UPDATE Usuario_has_Comunidade
SET Papel = 'administrador'
WHERE Usuario_ID_Usuario = 1 AND Comunidade_ID_Comunidade = 1;

-- teste p achar o papel da pessoa na comunidade 

SELECT * 
FROM Usuario_has_Comunidade
WHERE Usuario_ID_Usuario = 1 AND Comunidade_ID_Comunidade = 1;

select * from Usuario_has_Comunidade
