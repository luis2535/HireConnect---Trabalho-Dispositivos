CREATE TABLE usuario (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(500),
  tipo_usuario_id INT NOT NULL,
  login VARCHAR(50) UNIQUE NOT NULL,
  senha VARCHAR(50) NOT NULL,

  FOREIGN KEY (tipo_usuario_id) REFERENCES tipo_usuario(id) ON DELETE CASCADE ON UPDATE CASCADE
);