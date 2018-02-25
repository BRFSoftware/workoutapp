CREATE role admin nologin;
GRANT admin TO postgres;

CREATE role anon nologin;
GRANT anon TO postgres;
GRANT USAGE ON SCHEMA public TO anon;

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
	trainrepetitiONs int4 NOT NULL,
	trainequipmentid int4 NOT NULL,
	trainuserid int4 NOT NULL
);

GRANT USAGE ON SCHEMA public TO admin;
GRANT ALL ON public.users TO admin;
GRANT ALL ON public.equipment TO admin;
GRANT ALL ON public.exercise TO admin;
GRANT ALL ON public.train TO admin;
GRANT USAGE, SELECT ON  sequence public.users_id_seq TO admin;

GRANT SELECT ON public.users TO anon;
GRANT SELECT ON public.equipment TO anon;
GRANT SELECT ON public.exercise TO anon;
GRANT SELECT ON public.train TO anon;