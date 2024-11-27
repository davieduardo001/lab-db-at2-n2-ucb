SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8 ;
USE mydb ;

-- -----------------------------------------------------
-- Table mydb.Usuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Usuario (
  ID_Usuario INT NOT NULL,
  Nome_Usuario VARCHAR(100) NOT NULL,
  Data_Nascimento DATETIME NOT NULL,
  Endereco_Email VARCHAR(50) NOT NULL,
  Foto_Perfil LONGBLOB NULL,
  Senha VARCHAR(20) NOT NULL,
  Num_Seguidores INT NOT NULL,
  Num_Seguindo INT NOT NULL,
  PRIMARY KEY (ID_Usuario),
  UNIQUE INDEX ID_Usuario_UNIQUE (ID_Usuario ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.Comunidade
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Comunidade (
  ID_Comunidade INT NOT NULL,
  Nome_Comunidade VARCHAR(60) NOT NULL,
  Descricao_Comnidade TEXT(650) NOT NULL,
  Data_Criacao DATETIME NOT NULL,
  Funcao VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_Comunidade),
  UNIQUE INDEX ID_Comunidade_UNIQUE (ID_Comunidade ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.Mensagem
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Mensagem (
  ID_Mensagem INT NOT NULL,
  Conteudo_Mensagem TEXT(650) NOT NULL,
  Data_Hora_Mensagem DATETIME NOT NULL,
  PRIMARY KEY (ID_Mensagem),
  UNIQUE INDEX ID_Mensagem_UNIQUE (ID_Mensagem ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.Interesse
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Interesse (
  ID_Interesse INT NOT NULL,
  Nome_Interesse VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_Interesse),
  UNIQUE INDEX ID_Interesse_UNIQUE (ID_Interesse ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.Postagem
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Postagem (
  ID_Postagem INT NOT NULL,
  Texto TEXT(650) NOT NULL,
  Midia LONGBLOB NULL,
  Data_Hora_Postagem DATETIME NOT NULL,
  Usuario_ID_Usuario INT NOT NULL,
  PRIMARY KEY (ID_Postagem, Usuario_ID_Usuario),
  UNIQUE INDEX ID_Postagem_UNIQUE (ID_Postagem ASC) VISIBLE,
  INDEX fk_Postagem_Ususario1_idx (Usuario_ID_Usuario ASC) VISIBLE,
  CONSTRAINT fk_Postagem_Ususario1
    FOREIGN KEY (Usuario_ID_Usuario)
    REFERENCES mydb.Usuario (ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.Interacao
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Interacao (
  ID_Interacao INT NOT NULL,
  Tipo_Interacao VARCHAR(45) NOT NULL,
  Data_Hora_Interacao DATETIME NOT NULL,
  Postagem_ID_Postagem INT NOT NULL,
  Postagem_Usuario_ID_Usuario INT NOT NULL,
  PRIMARY KEY (ID_Interacao, Postagem_ID_Postagem, Postagem_Usuario_ID_Usuario),
  UNIQUE INDEX ID_Interacao_UNIQUE (ID_Interacao ASC) VISIBLE,
  INDEX fk_Interacao_Postagem1_idx (Postagem_ID_Postagem ASC, Postagem_Usuario_ID_Usuario ASC) VISIBLE,
  CONSTRAINT fk_Interacao_Postagem1
    FOREIGN KEY (Postagem_ID_Postagem , Postagem_Usuario_ID_Usuario)
    REFERENCES mydb.Postagem (ID_Postagem , Usuario_ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table mydb.Comentario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Comentario (
  ID_Comentario INT NOT NULL,
  Conteudo_Comentario TEXT(650) NOT NULL,
  Data_Hora_Comentario DATETIME NOT NULL,
  Postagem_ID_Postagem INT NOT NULL,
  Postagem_Usuario_ID_Usuario INT NOT NULL,
  PRIMARY KEY (ID_Comentario, Postagem_ID_Postagem, Postagem_Usuario_ID_Usuario),
  UNIQUE INDEX ID_Comentario_UNIQUE (ID_Comentario ASC) VISIBLE,
  INDEX fk_Comentario_Postagem1_idx (Postagem_ID_Postagem ASC, Postagem_Usuario_ID_Usuario ASC) VISIBLE,
  CONSTRAINT fk_Comentario_Postagem1
    FOREIGN KEY (Postagem_ID_Postagem , Postagem_Usuario_ID_Usuario)
    REFERENCES mydb.Postagem (ID_Postagem , Usuario_ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table mydb.Notificacao
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Notificacao (
  ID_Notificacao INT NOT NULL,
  Tipo_Notificacao VARCHAR(45) NOT NULL,
  Conteudo_Notificacao VARCHAR(70) NOT NULL,
  Data_Hora_Notificacao DATETIME NOT NULL,
  Interacao_ID_Interacao INT NOT NULL,
  IDdaPostagemInteragida INT NOT NULL,
  IDdoUsuarioQueInteragiu INT NOT NULL,
  Postagem_ID_Postagem INT NOT NULL,
  IDdoUsuarioQueFezPost INT NOT NULL,
  Comentario_ID_Comentario INT NOT NULL,
  IDdoPostComentado INT NOT NULL,
  IDdoUsuarioQueComentou INT NOT NULL,
  Mensagem_ID_Mensagem INT NOT NULL,
  PRIMARY KEY (ID_Notificacao, Interacao_ID_Interacao, IDdaPostagemInteragida, IDdoUsuarioQueInteragiu, Postagem_ID_Postagem, IDdoUsuarioQueFezPost, Comentario_ID_Comentario, IDdoPostComentado, IDdoUsuarioQueComentou, Mensagem_ID_Mensagem),
  UNIQUE INDEX ID_Notificacao_UNIQUE (ID_Notificacao ASC) VISIBLE,
  INDEX fk_Notificacao_Interacao1_idx (Interacao_ID_Interacao ASC, IDdaPostagemInteragida ASC, IDdoUsuarioQueInteragiu ASC) VISIBLE,
  INDEX fk_Notificacao_Postagem1_idx (Postagem_ID_Postagem ASC, IDdoUsuarioQueFezPost ASC) VISIBLE,
  INDEX fk_Notificacao_Comentario1_idx (Comentario_ID_Comentario ASC, IDdoPostComentado ASC, IDdoUsuarioQueComentou ASC) VISIBLE,
  INDEX fk_Notificacao_Mensagem1_idx (Mensagem_ID_Mensagem ASC) VISIBLE,
  CONSTRAINT fk_Notificacao_Interacao1
    FOREIGN KEY (Interacao_ID_Interacao , IDdaPostagemInteragida , IDdoUsuarioQueInteragiu)
    REFERENCES mydb.Interacao (ID_Interacao , Postagem_ID_Postagem , Postagem_Usuario_ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Notificacao_Postagem1
    FOREIGN KEY (Postagem_ID_Postagem , IDdoUsuarioQueFezPost)
    REFERENCES mydb.Postagem (ID_Postagem , Usuario_ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Notificacao_Comentario1
    FOREIGN KEY (Comentario_ID_Comentario , IDdoPostComentado , IDdoUsuarioQueComentou)
    REFERENCES mydb.Comentario (ID_Comentario , Postagem_ID_Postagem , Postagem_Usuario_ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Notificacao_Mensagem1
    FOREIGN KEY (Mensagem_ID_Mensagem)
    REFERENCES mydb.Mensagem (ID_Mensagem)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table mydb.Usuario_has_Comunidade
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Usuario_has_Comunidade (
  Usuario_ID_Usuario INT NOT NULL,
  Comunidade_ID_Comunidade INT NOT NULL,
  PRIMARY KEY (Usuario_ID_Usuario, Comunidade_ID_Comunidade),
  INDEX fk_Ususario_has_Comunidade_Comunidade1_idx (Comunidade_ID_Comunidade ASC) VISIBLE,
  INDEX fk_Ususario_has_Comunidade_Ususario_idx (Usuario_ID_Usuario ASC) VISIBLE,
  CONSTRAINT fk_Ususario_has_Comunidade_Ususario
    FOREIGN KEY (Usuario_ID_Usuario)
    REFERENCES mydb.Usuario (ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Ususario_has_Comunidade_Comunidade1
    FOREIGN KEY (Comunidade_ID_Comunidade)
    REFERENCES mydb.Comunidade (ID_Comunidade)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table mydb.Usuario_has_Mensagem
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Usuario_has_Mensagem (
  Usuario_ID_Usuario INT NOT NULL,
  Mensagem_ID_Mensagem INT NOT NULL,
  PRIMARY KEY (Usuario_ID_Usuario, Mensagem_ID_Mensagem),
  INDEX fk_Ususario_has_Mensagem_Mensagem1_idx (Mensagem_ID_Mensagem ASC) VISIBLE,
  INDEX fk_Ususario_has_Mensagem_Ususario1_idx (Usuario_ID_Usuario ASC) VISIBLE,
  CONSTRAINT fk_Ususario_has_Mensagem_Ususario1
    FOREIGN KEY (Usuario_ID_Usuario)
    REFERENCES mydb.Usuario (ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Ususario_has_Mensagem_Mensagem1
    FOREIGN KEY (Mensagem_ID_Mensagem)
    REFERENCES mydb.Mensagem (ID_Mensagem)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table mydb.Usuario_has_Interesse
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Usuario_has_Interesse (
  Usuario_ID_Usuario INT NOT NULL,
  Interesse_ID_Interesse INT NOT NULL,
  PRIMARY KEY (Usuario_ID_Usuario, Interesse_ID_Interesse),
  INDEX fk_Ususario_has_Interesse_Interesse1_idx (Interesse_ID_Interesse ASC) VISIBLE,
  INDEX fk_Ususario_has_Interesse_Ususario1_idx (Usuario_ID_Usuario ASC) VISIBLE,
  CONSTRAINT fk_Ususario_has_Interesse_Ususario1
    FOREIGN KEY (Usuario_ID_Usuario)
    REFERENCES mydb.Usuario (ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Ususario_has_Interesse_Interesse1
    FOREIGN KEY (Interesse_ID_Interesse)
    REFERENCES mydb.Interesse (ID_Interesse)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table mydb.Usuario_has_Usuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS mydb.Usuario_has_Usuario (
  Usuario_ID_Usuario INT NOT NULL,
  Usuario_ID_Usuario1 INT NOT NULL,
  PRIMARY KEY (Usuario_ID_Usuario, Usuario_ID_Usuario1),
  INDEX fk_Usuario_has_Usuario_Usuario2_idx (Usuario_ID_Usuario1 ASC) VISIBLE,
  INDEX fk_Usuario_has_Usuario_Usuario1_idx (Usuario_ID_Usuario ASC) VISIBLE,
  CONSTRAINT fk_Usuario_has_Usuario_Usuario1
    FOREIGN KEY (Usuario_ID_Usuario)
    REFERENCES mydb.Usuario (ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Usuario_has_Usuario_Usuario2
    FOREIGN KEY (Usuario_ID_Usuario1)
    REFERENCES mydb.Usuario (ID_Usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
