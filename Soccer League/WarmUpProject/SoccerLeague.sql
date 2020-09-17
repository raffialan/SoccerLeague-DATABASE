CREATE TABLE team(
  Tid INT not null AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100),
	city VARCHAR(100)
);


CREATE TABLE player(
	Pid INT not null AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100),
	position VARCHAR(100),
	dob DATE,
	current_tid INT,
    FOREIGN KEY(current_tid) REFERENCES team(Tid),
	start_date DATE
);


CREATE TABLE team_captain(
	tid INT,
	FOREIGN KEY(tid) REFERENCES team(Tid),
	captain_id INT,
	FOREIGN KEY (captain_id) REFERENCES player(Pid)
);

CREATE TABLE previous_teams(
	tid INT,
	FOREIGN KEY(tid) REFERENCES team(Tid),
	pid INT,
	FOREIGN KEY (pid) REFERENCES player(Pid),
	start_date DATE,
	end_date DATE
);

CREATE TABLE matches(
	Mid INT AUTO_INCREMENT PRIMARY KEY,
	date_time DATETIME,
	stadium VARCHAR(100),
	home_tid INT,
	FOREIGN KEY(home_tid) REFERENCES team(Tid),
	home_goals INT,
	away_tid INT,
	FOREIGN KEY(away_tid) REFERENCES team(Tid),
	away_goals INT
);

CREATE TABLE played_in(
	tid INT,
	mid INT,
	pid INT,
	FOREIGN KEY(tid) REFERENCES team(Tid), 
	FOREIGN KEY(mid) REFERENCES matches(Mid),
	FOREIGN KEY(pid) REFERENCES player(Pid),
	goals INT,
	minutes INT
);
