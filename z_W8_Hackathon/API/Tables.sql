CREATE TABLE users (
    id SERIAL NOT NULL PRIMARY KEY, 
    email VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

CREATE TABLE hashpwd (
    id SERIAL NOT NULL PRIMARY KEY, 
    user_id INTEGER NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


CREATE TABLE income(
  id SERIAL NOT NULL PRIMARY KEY, 
  user_id INTEGER NOT NULL,
  monthly_income INTEGER NOT NULL,
  currency VARCHAR(3) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
   
);

CREATE TABLE budget (
  id SERIAL NOT NULL PRIMARY KEY, 
  user_id INTEGER NOT NULL,
  necessities_50 float NOT NULL, 
  entertainment_30 float NOT NULL,
  savings_20 float NOT NULL, 
  FOREIGN KEY (user_id) REFERENCES users(id)
);
