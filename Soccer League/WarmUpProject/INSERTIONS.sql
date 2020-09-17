INSERT INTO team (name, city)
  VALUES ('FC Barcelona', 'Catalonia'),
  ('Real Madrid', 'Madrid'),
  ('Getafe', 'Madrid'),
  ('Atletico Madrid', 'Madrid'),
  ('Sevilla', 'Andalusia'),
  ('Real Sociedad', 'San Sebastian'),
  ('Valencia', 'Valencia'),
  ('Villareal', 'Villareal'),
  ('Athletic Bilbao', 'Bilbao'),
  ('Granada CF', 'Granada');


INSERT INTO player (name, position, dob, current_tid, start_date)
  VALUES ('Lionel Messi', 'Forward', 19870623, 1, 20000101),
  ('Hector Herrera', 'Midfielder', 19900418, 4, 20190101),
  ('Sergio Ramos', 'Defender', 19860329, 2, 20050622),
  ('Yangel Herrera', 'Midfielder', 19980606, 10, 20190101),
  ('Alexander Isak', 'Forward', 19900920, 6, 20170202),
  ('Luis Suarez', 'Forward', 19870321, 1, 20140808),
  ('Thomas Lemar', 'Midfielder', 19951111, 4, 20180719),
  ('Ter Stegen', 'GoalKeeper', 19920429, 1, 20140101),
  ('Rodrigo Moreno', 'Forward', 19910503, 7, 20160622),
  ('Gerard Moreno', 'Forward', 19920101, 8, 20120101),
  ('Karim Benzema', 'Forward', 19871218, 2, 20090829),
  ('Unai Simon', 'GoalKeeper', 19970610, 9, 20190617),
  ('Sergio Escudero', 'Defender', 19890901, 5, 20150101),
  ('Angel Rodriguez', 'Forward', 19870425, 3, 20170101),
  ('Gerard Pique', 'Defender', 19870201, 1, 20080527)
;

INSERT INTO team_captain (tid, captain_id)
  VALUES (1, 1),
  (4, 2),
  (2, 3),
  (10, 4),
  (6, 5),
  (7, 9),
  (8, 10),
  (9, 12),
  (5, 13),
  (3, 14);


INSERT INTO previous_teams (tid, pid, start_date, end_date)
  VALUES (10, 2, 20170101, 20180101),
  (7, 12, 20130101, 20140101),
  (1, 11, 20060101, 20080101),
  (2, 1, 19980101, 19990101),
  (1, 3, 20030101, 20040101),
  (1, 5, 20150101, 20160202),
  (2, 6, 20000101, 20020101),
  (6, 7, 20020101, 20030101),
  (2, 8, 20000101, 20020101),
  (3, 9, 20010101, 20020101),
  (1, 13, 20060202, 20080101),
  (1, 14, 20070101, 20080101),
  (2, 15, 19980101, 19990101)


;

INSERT INTO matches (date_time, stadium, home_tid, home_goals, away_tid, away_goals)
  VALUES (20190608140000, 'San Mames', 9, 1, 1, 0),
  (20190817180000, 'Mestalla', 7, 1, 6, 1),
  (20190817150000, 'Estadio Ceramica', 8, 4, 10, 4),
  (20190818210000, 'Wanda Metropolitano', 4, 1, 3, 0),
  (20190918170000, 'Santiago Bernabeu', 2, 2, 5, 1),
  (20191119193000, 'Camp Nou', 1, 1, 10, 0),
  (20191023200000, 'Anoeta', 6, 2, 2, 2),
  (20191123213000, 'Ramon Sanchez', 5, 1, 9, 1),
  (20191124210000, 'Coliseum Alfonso', 3, 3, 7, 0),
  (20191124190000, 'Los Carmenes', 10, 1, 4, 1)
;

INSERT INTO played_in (tid, mid, pid, goals, minutes)
  VALUES (1, 1, 1, 0, 90),
  (4, 4, 7, 1, 80),
  (1, 6, 6, 1, 70),
  (9, 1, 12, 1, 80),
  (2, 5, 11, 1, 90),
  (3, 4, 14, 0, 90),
  (8, 3, 10, 3, 90),
  (4, 4, 2, 0, 90),
  (1, 1, 15, 0, 90),
  (1, 1, 8, 0, 90),
  (7, 2, 9, 1, 90),
  (2, 7, 3, 1, 90),
  (1, 6, 1, 2, 70),
  (3, 9, 14, 0, 90)
;