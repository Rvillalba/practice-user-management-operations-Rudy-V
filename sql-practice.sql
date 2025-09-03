INSERT INTO users (username, firstName, lastName, age)
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 SELECT * FROM users;
 SET SQL_SAFE_UPDATES = 0;
 UPDATE users SET firstName="Jane", lastName="Doe" WHERE username="jdoe";
 SET SQL_SAFE_UPDATES = 1;
 DELETE FROM users WHERE id=10;
 SELECT firstName, lastName FROM users WHERE lastName="doe";
 SELECT * FROM users WHERE lastName="lee" AND firstName="sam";
 SELECT * FROM users WHERE lastName="lee" OR firstName="sam";
SELECT * FROM users WHERE lastName="lee" AND NOT firstName="sam";
SELECT * FROM users WHERE lastName="lee" AND (firstName="sam" OR firstName="kevin");
SELECT firstName AS First, lastName AS Last FROM users;
SELECT username, age+10 AS ageIn10Years FROM users;
SELECT concat(firstName, " ", lastName) AS fullName FROM users;
SELECT * FROM users ORDER BY age DESC;
SELECT * FROM users ORDER BY lastName ASC, firstName ASC;
SELECT * FROM users LIMIT 5;
SELECT * FROM users LIMIT 5 OFFSET 5;
SELECT * FROM users ORDER BY lastName ASC LIMIT 10 OFFSET 20;