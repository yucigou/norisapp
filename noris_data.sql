DROP TABLE IF EXISTS Quotes, Authors;
CREATE TABLE IF NOT EXISTS Authors(Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(25)) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Quotes(Id INT PRIMARY KEY AUTO_INCREMENT, 
    AuthorId INT, Quote VARCHAR(100),
    FOREIGN KEY(AuthorId) REFERENCES Authors(Id) ON DELETE CASCADE) 
    ENGINE=InnoDB;

INSERT INTO Authors(Id, Name) VALUES(1, 'Bruce Lee');
INSERT INTO Authors(Id, Name) VALUES(2, 'Mr Miyagi');
INSERT INTO Authors(Id, Name) VALUES(3, 'Rocky Balboa');
INSERT INTO Authors(Id, Name) VALUES(4, 'Christie Brin');
INSERT INTO Authors(Id, Name) VALUES(5, 'Peter Griffen');

INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(1, 1, 'All arrays');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(2, 1, 'Chuck Norris arrays');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(3, 2, 'Chuck Norris all arrays');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(4, 2, 'Chuck Norris again');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(5, 3, 'Chuck Norris too');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(6, 4, 'Chuck Norris as well');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(7, 4, ' When chuck Norris');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(8, 5, 'Chuck Norris done');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(9, 5, 'The Chuck Norris Eclipse plugin made alien contact');
