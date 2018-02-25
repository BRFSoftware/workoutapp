CREATE TABLE Users(
   Id   SERIAL PRIMARY KEY,
   FirstName    VARCHAR(50) NOT NUlL,
   LastName     VARCHAR(50) NOT NUlL
);
CREATE TABLE equipment (
	equipmentId SERIAL PRIMARY KEY NOT NULL,
	equipmentName VARCHAR(254) NOT NULL,
	equipmentType VARCHAR(254) NOT NULL
);
CREATE TABLE exercise (
	exerciseId SERIAL PRIMARY KEY NOT NULL,
	exerciseName VARCHAR(254) NOT NULL,
	exerciseType VARCHAR(254) NOT NULL
);
CREATE TABLE train (
	trainid SERIAL PRIMARY KEY NOT NULL ,
	trainname varchar(254) NOT NULL,
	traintype varchar(254) NOT NULL,
	trainexercisetype varchar(254) NOT NULL,
	trainrepetitions int4 NOT NULL,
	trainequipmentid int4 NOT NULL,
	trainuserid int4 NOT NULL
);

CREATE ROLE admin NOLOGIN;
grant admin to postgres;

grant usage on schema public to admin;
grant all on public.users to admin;
grant usage, select on sequence public.users_id_seq to admin;

create role anon nologin;
grant anon to postgres;
grant usage on schema public to anon;

grant select on public.users to anon;
grant select on public.equipment to anon;
grant select on public.exercise to anon;
grant select on public.train to anon;
