create database chat_app_db;
use chat_app_db;
CREATE TABLE chats (
  chat_id INT(11) NOT NULL AUTO_INCREMENT,
  from_id INT(11) NOT NULL,
  to_id INT(11) NOT NULL,
  message TEXT NOT NULL,
  opened TINYINT(1) NOT NULL DEFAULT 0,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (chat_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

CREATE TABLE conversations (
  conversation_id INT(11) NOT NULL AUTO_INCREMENT,
  user_1 INT(11) NOT NULL,
  user_2 INT(11) NOT NULL,
  PRIMARY KEY (conversation_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

CREATE TABLE users (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(1000) NOT NULL,
  p_p VARCHAR(255) DEFAULT 'user-default.png',
  last_seen DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

COMMIT;