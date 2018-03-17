CREATE role admin nologin;
GRANT admin TO postgres;

CREATE role anon nologin;

CREATE ROLE "rw-equipment" LOGIN;

CREATE TABLE users (
   UserId   SERIAL PRIMARY KEY,
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
    trainrepetitions int4 NOT NULL,
    trainsets int4 NOT  NULL,
    trainuserId int4 NOT NULL,
    trainequipmentId int4 NOT NULL,
    trainexerciseId int4 NOT NULL,
    CONSTRAINT fk_train_user foreign key (trainuserId) REFERENCES users (UserId),
    CONSTRAINT fk_train_equipment foreign key (trainequipmentId) REFERENCES equipment (equipmentId),
    CONSTRAINT fk_train_exercise foreign key (trainexerciseid) REFERENCES exercise (exerciseId)
);

GRANT USAGE ON SCHEMA public TO admin;
GRANT ALL ON public.users TO admin;
GRANT ALL ON public.equipment TO admin;
GRANT ALL ON public.exercise TO admin;
GRANT ALL ON public.train TO admin;
GRANT USAGE, SELECT ON SEQUENCE public.users_UserId_seq TO admin;

GRANT Insert, Select ON TABLE "public"."equipment" TO "rw-equipment";
GRANT Usage, Select ON TABLE "public"."equipment_equipmentid_seq" TO "rw-equipment";


BEGIN;
INSERT INTO "public"."users" VALUES ('1', 'Samuel', 'Baruffi');
INSERT INTO "public"."users" VALUES ('2', 'Nicolas', 'Agostini Baruffi');
INSERT INTO "public"."equipment" VALUES ('1', 'Chest Bench', 'Bench');
INSERT INTO "public"."equipment" VALUES ('2', 'Barbell', 'Barbell');
INSERT INTO "public"."equipment" VALUES ('3', 'Dumbbells', 'Dumbbells');
INSERT INTO "public"."exercise" VALUES ('1', 'Chest Press', 'Chest');
INSERT INTO "public"."exercise" VALUES ('2', 'Incline Dumbbell Hammer Curl', 'Biceps');
INSERT INTO "public"."exercise" VALUES ('3', 'Deadlift', 'Legs');
INSERT INTO "public"."train" VALUES ('1', 'Chest Press', '8', '3', '1', '1', '1');
INSERT INTO "public"."train" VALUES ('2', 'Incline Dumbbell Hammer Curl', '8', '3', '2', '2', '2');
INSERT INTO "public"."train" VALUES ('3', 'Deadlift', '8', '3', '1', '3', '3');
COMMIT;