/*
 Navicat PostgreSQL Data Transfer

 Source Server         : workoutapp
 Source Server Version : 100200
 Source Host           : 127.0.0.1
 Source Database       : postgres
 Source Schema         : public

 Target Server Version : 100200
 File Encoding         : utf-8

 Date: 02/16/2018 13:58:07 PM
*/

-- ----------------------------
--  Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
	"id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
	"name" varchar COLLATE "default"
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."users" OWNER TO "postgres";

-- ----------------------------
--  Records of users
-- ----------------------------
BEGIN;
INSERT INTO "public"."users" VALUES ('1', 'samuel');
COMMIT;

-- ----------------------------
--  Primary key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

