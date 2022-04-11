create database sportgames;



use sportgames;


CREATE TABLE results (
   id   INT NOT NULL AUTO_INCREMENT ,
   teamA varchar(50) NOT NULL,
   teamB varchar(50) NOT NULL,
   scoreA int(10) NOT NULL,
   scoreB int(10) NOT NULL,
   time datetime NOT NULL,
    category varchar(50) NOT NULL,
    primary key (Id)
    );
    
    
INSERT INTO results (teamA, teamB, scoreA, scoreB, time, category) VALUES
( 'FC Barcelona', 'Real-Madrid', 3, 1, '2020-02-05 18:05:40', 'Football'),
( 'Chelsea', 'Man United', 2, 2, '2020-02-06 18:05:40', 'Football'),
('Maccabi Tel-Aviv', 'Maccabi-Haifa', 2, 0, '2020-02-19 18:07:22', 'Football'),
( 'Maccabi Tel-Aviv', 'cska Moscow', 82, 61, '2020-02-23 18:07:22', 'Basketball'),
( 'Maccabi Tel-Aviv', 'Real-Madrid', 88, 91, '2020-02-11 18:08:38', 'Basketball'),
( 'FC Barcelona', 'Real-Madrid', 80, 81, '2020-02-16 18:08:38', 'Basketball');
    
    


CREATE TABLE  comments (
   id   INT NOT NULL AUTO_INCREMENT ,
   time datetime NOT NULL,
   note varchar(200) NOT NULL, 
   PRIMARY KEY (id),
   resultId int Not null,
   FOREIGN KEY(resultId) REFERENCES results(id)
);

INSERT INTO comments (time, note, resultId) VALUES
( '2020-02-12 19:21:57', 'test!',1),
('2020-02-26 19:36:56', 'test#2', 2),
('2020-02-26 19:47:30', 'new comment !',3),
('2020-02-26 19:48:25', 'comment', 1),
('2020-02-26 19:52:57', 'new comment!',4),
( '2020-02-26 19:54:07', 'hey !',5),
('2020-02-26 19:56:01', 'test',6),
( '2020-02-26 19:56:55', 'weldone',5),
( '2020-02-26 19:57:50', 'no comments',4),
( '2020-02-26 19:57:54', '11 good player',5),
('2020-02-26 19:57:57', '2 not well',5),
('2020-02-26 19:58:45', 'congratulations',6);

select * from results;

select * from comments; 
