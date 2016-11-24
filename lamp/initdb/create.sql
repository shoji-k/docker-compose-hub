grant all privileges on sample.* to 'sampleuser'@'%' identified by 'password';
flush privileges;

connect sample;
CREATE TABLE m_users (
  id        integer auto_increment,
  username  varchar(255) DEFAULT '' COMMENT 'ユーザー名',
  password  varchar(255) DEFAULT '' COMMENT 'パスワード',
  email     varchar(255) DEFAULT '' COMMENT 'メール',
  created_user integer COMMENT '作成者',
  updated_user  integer COMMENT '更新者',
  PRIMARY KEY(id)
);

