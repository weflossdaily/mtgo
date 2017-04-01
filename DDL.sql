CREATE TABLE League(
    Id INTEGER PRIMARY KEY NOT NULL,
    Description VARCHAR(200) NOT NULL,
    StartDateTimeStamp VARCHAR(23) NOT NULL,
    CloseDateTimeStamp VARCHAR(23) NOT NULL,
    EndDateTimeStamp VARCHAR(23) NOT NULL,
    StructureDescription VARCHAR(200) NOT NULL,
    MatchStructureDescription VARCHAR(200) NOT NULL,
    TimeLimitsDescritpion VARCHAR(200)
);

CREATE TABLE Player(
    Id INTEGER PRIMARY KEY ASC NOT NULL,
    Name VARCHAR(50) NOT NULL,
    CONSTRAINT NameUnique UNIQUE (Name)
);

CREATE TABLE UndefeatedTrophySnapshot(
    LeagueId INTEGER NOT NULL,
    PlayerId INTEGER NOT NULL,
    DateTimeStamp VARCHAR(23) NOT NULL,
    UndefeatedTrophyCount UNSIGNED INTEGER NOT NULL,
    LastTrophyEarnedDateTimeStamp VARCHAR(23) NOT NULL,
    FOREIGN KEY(LeaugeId) REFERENCES League(Id),
    FOREIGN KEY(PlayerId) REFERENCES Player(Id)
);

CREATE TABLE ActivePlayerCountSnapshot(
    Id INTEGER PRIMARY KEY ASC NOT NULL,
    LeagueId INTEGER NOT NULL,
    PlayerCount INTEGER NOT NULL,
    DateTimeStamp VARCHAR(23) NOT NULL,
    FOREIGN KEY(LeagueId) REFERENCES League(Id)
);

CREATE TABLE Game(
    Id INTEGER PRIMARY KEY ASC NOT NULL
);

CREATE TABLE PlayerGameUtterance(
    Id INTEGER PRIMARY KEY ASC NOT NULL,
    SpeakingPlayerId INTEGER NOT NULL,
    GameId INTEGER NOT NULL,
    Utterance VARCHAR(200) NOT NULL,
    FOREIGN KEY(SpeakingPlayerId) REFERENCES Player(Id),
    FOREIGN KEY(GameId) REFERENCES Game(Id)
);

CREATE TABLE PlayerRatingSnapshot(
    Id INTEGER PRIMARY KEY ASC NOT NULL,
    PlayerId INTEGER NOT NULL,
    Rating INTEGER NOT NULL,
    DateTimeStamp VARCHAR(23) NOT NULL,
    FOREIGN KEY(PlayerId) REFERENCES Player(Id)
);

CREATE TABLE Match(
);

CREATE TABLE Format(
);

CREATE TABLE PlayerLeagueJoin(
);

CREATE TABLE Draft(
);