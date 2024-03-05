CREATE TABLE cars (
  brand VARCHAR(255),
  model VARCHAR(255),
  year INT
);


INSERT INTO cars (brand, model, year) 
VALUES ('Volks', 'Fusca', 1983);

INSERT INTO cars (brand, model, year) 
VALUES ('Ford', 'Escort', 1992);

INSERT INTO cars (brand, model, year) 
VALUES ('Honda', 'Civic', 200);

INSERT INTO cars (brand, model, year) 
VALUES ('Volks', 'Kombi', 1998);

select * from cars;