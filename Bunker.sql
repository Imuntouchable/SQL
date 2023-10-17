CREATE SCHEMA Bunker


CREATE TABLE Bunker.skills (
	Id_Players INT NOT NULL,
    Jobs VARCHAR(45) NOT NULL,
    PRIMARY KEY (Id_Players));
INSERT INTO Bunker.skills (Id_Players, Jobs) VALUES ('1', 'Плотник');
INSERT INTO Bunker.skills (Id_Players, Jobs) VALUES ('2', 'Специалист по терраформированию');
INSERT INTO Bunker.skills (Id_Players, Jobs) VALUES ('3', 'Дегустатор');
INSERT INTO Bunker.skills (Id_Players, Jobs) VALUES ('4', 'Геолог');
INSERT INTO Bunker.skills (Id_Players, Jobs) VALUES ('5', 'Иммунолог');

CREATE TABLE Bunker.characters (
	Id_Players INT NOT NULL,
    Biology VARCHAR(45) NOT NULL,
    Health VARCHAR(45) NOT NULL,
    Hobby VARCHAR(45) NOT NULL,
    Phobia VARCHAR(256) NOT NULL,
	Mood VARCHAR(256) NOT NULL,
    First_Fact VARCHAR(256) NOT NULL,
	Knowlege VARCHAR(256) NOT NULL,
	Bagage VARCHAR(256) NOT NULL,
	First_Card VARCHAR(256) NOT NULL,
	Second_Card VARCHAR(256) NOT NULL,
	PRIMARY KEY (Id_Players)
);
INSERT INTO Bunker.characters (Id_Players, Biology, Health, Hobby, Phobia, Mood, First_Fact, Knowlege, Bagage, First_Card, Second_Card) VALUES ('1', 'Женщина, 30 лет', 'Подагра', 'Плетение ковров', 'Нет', 'Хладнокровный', 'Умышленно убил человека', 'Около бункера находится строительный магазин', 'GPS - навигатор', 'Раскройте фобию одного игрока', 'Если вы проходите в бункер, команда находит в нем три заряженных автомата Калашникова');
INSERT INTO Bunker.characters (Id_Players, Biology, Health, Hobby, Phobia, Mood, First_Fact, Knowlege, Bagage, First_Card, Second_Card) VALUES ('2', 'Женщина, 68 лет', 'Идеально здоров', 'Вандализм', 'Неофобия', 'Инфантильный', 'Учился в мед. университете 4 года', 'Координаты бункера с 2 биохимиками', 'Химические средства от насекомых', 'Выбранный игрок не вскрывает характеристику на следующем ходу', 'В случае вашего выбывания вы выбираете игрока, на котором будет посмертно отмечен ваш голос на всех след. голосованиях');
INSERT INTO Bunker.characters (Id_Players, Biology, Health, Hobby, Phobia, Mood, First_Fact, Knowlege, Bagage, First_Card, Second_Card) VALUES ('3', 'Женщина, 47 лет', 'Бесплодие', 'Изучение топографических карт', 'Ксантофобия', 'Подлая', 'Знает азбуку Морзе', 'Координаты мед. бункера с сертифицированными врачами', 'Ингалятор', 'Запретите игроку голосовать', 'Если вы проходите в бункер, команда находит в нем запас антибиотиков и бинтов');
INSERT INTO Bunker.characters (Id_Players, Biology, Health, Hobby, Phobia, Mood, First_Fact, Knowlege, Bagage, First_Card, Second_Card) VALUES ('4', 'Женщина, 25 лет, беременна', 'Болезнь Паркинсона ', 'Игра на губной гармошке', 'Мусофобия', 'Аскетичный', 'Имел кличку \"Крысиный король\"', 'Координаты бункера с 4 фертильными женщинами', 'Револьвер с 1 патроном', 'Выбранный человек избавляется от фобии', 'В случае вашей смерти отдайте ваш багаж одному из игроков');
INSERT INTO Bunker.characters (Id_Players, Biology, Health, Hobby, Phobia, Mood, First_Fact, Knowlege, Bagage, First_Card, Second_Card) VALUES ('5', 'Мужчина, 63 года', 'Малярия', 'Боевые искусства', 'Гинекофобия', 'Волевой', 'Мастер на все руки', 'Уоординаты роддома', 'Калоши', 'Раскройте фобию одного игрока', 'В случае вашего выбывания заведутся вредители: пауки');

CREATE TABLE Bunker.notes(
    Id_Players INT NOT NULL,
    Namess VARCHAR(45) NOT NULL,
    Note VARCHAR(45) NOT NULL,
    PRIMARY KEY (Id_Players)
);

INSERT INTO Bunker.notes (Id_Players, Namess, Note) VALUES ('1', 'Вадим', 'Не вскрывал здоровье');
INSERT INTO Bunker.notes (Id_Players, Namess, Note) VALUES ('2', 'Вова', 'Рыжий');
INSERT INTO Bunker.notes (Id_Players, Namess, Note) VALUES ('3', 'Саша', 'Высокий интеллект');
INSERT INTO Bunker.notes (Id_Players, Namess, Note) VALUES ('4', 'Миша', 'Рыжий');
INSERT INTO Bunker.notes (Id_Players, Namess, Note) VALUES ('5', 'Саша', 'А когда не леее');

ALTER TABLE Bunker.skills 
ADD CONSTRAINT nam1
    FOREIGN KEY (Id_Players)
    REFERENCES Bunker.characters (Id_Players)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE Bunker.skills 
ADD CONSTRAINT nam2
    FOREIGN KEY (Id_Players)
    REFERENCES Bunker.notes (Id_Players)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
  
select Note from Bunker.notes where Note = 'Рыжий';
select Biology, Bagage from Bunker.characters where Biology like '%Женщина%';