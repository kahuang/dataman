/*
Navicat PGSQL Data Transfer

Source Server         : local
Source Server Version : 90608
Source Host           : localhost:5432
Source Database       : dataman_router
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90608
File Encoding         : 65001

Date: 2018-04-13 11:04:14
*/


-- ----------------------------
-- Sequence structure for collection__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection__id_seq";
CREATE SEQUENCE "public"."collection__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7508
 CACHE 1;
SELECT setval('"public"."collection__id_seq"', 7508, true);

-- ----------------------------
-- Sequence structure for collection_field__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_field__id_seq";
CREATE SEQUENCE "public"."collection_field__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 29200
 CACHE 1;
SELECT setval('"public"."collection_field__id_seq"', 29200, true);

-- ----------------------------
-- Sequence structure for collection_field_relation__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_field_relation__id_seq";
CREATE SEQUENCE "public"."collection_field_relation__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3238
 CACHE 1;
SELECT setval('"public"."collection_field_relation__id_seq"', 3238, true);

-- ----------------------------
-- Sequence structure for collection_index__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_index__id_seq";
CREATE SEQUENCE "public"."collection_index__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10494
 CACHE 1;
SELECT setval('"public"."collection_index__id_seq"', 10494, true);

-- ----------------------------
-- Sequence structure for collection_index_item__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_index_item__id_seq";
CREATE SEQUENCE "public"."collection_index_item__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 95250
 CACHE 1;
SELECT setval('"public"."collection_index_item__id_seq"', 95250, true);

-- ----------------------------
-- Sequence structure for collection_keyspace__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_keyspace__id_seq";
CREATE SEQUENCE "public"."collection_keyspace__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3316
 CACHE 1;
SELECT setval('"public"."collection_keyspace__id_seq"', 3316, true);

-- ----------------------------
-- Sequence structure for collection_keyspace_item__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_keyspace_item__id_seq";
CREATE SEQUENCE "public"."collection_keyspace_item__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22682
 CACHE 1;
SELECT setval('"public"."collection_keyspace_item__id_seq"', 22682, true);

-- ----------------------------
-- Sequence structure for collection_keyspace_partition__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_keyspace_partition__id_seq";
CREATE SEQUENCE "public"."collection_keyspace_partition__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3282
 CACHE 1;
SELECT setval('"public"."collection_keyspace_partition__id_seq"', 3282, true);

-- ----------------------------
-- Sequence structure for collection_keyspace_partition_datastore_vshard__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."collection_keyspace_partition_datastore_vshard__id_seq";
CREATE SEQUENCE "public"."collection_keyspace_partition_datastore_vshard__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22912
 CACHE 1;
SELECT setval('"public"."collection_keyspace_partition_datastore_vshard__id_seq"', 22912, true);

-- ----------------------------
-- Sequence structure for database__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."database__id_seq";
CREATE SEQUENCE "public"."database__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3067
 CACHE 1;
SELECT setval('"public"."database__id_seq"', 3067, true);

-- ----------------------------
-- Sequence structure for database_datastore__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."database_datastore__id_seq";
CREATE SEQUENCE "public"."database_datastore__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3000
 CACHE 1;
SELECT setval('"public"."database_datastore__id_seq"', 3000, true);

-- ----------------------------
-- Sequence structure for datasource__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datasource__id_seq";
CREATE SEQUENCE "public"."datasource__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."datasource__id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for datasource_instance__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datasource_instance__id_seq";
CREATE SEQUENCE "public"."datasource_instance__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 120
 CACHE 1;
SELECT setval('"public"."datasource_instance__id_seq"', 120, true);

-- ----------------------------
-- Sequence structure for datasource_instance_shard_instance__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datasource_instance_shard_instance__id_seq";
CREATE SEQUENCE "public"."datasource_instance_shard_instance__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5724
 CACHE 1;
SELECT setval('"public"."datasource_instance_shard_instance__id_seq"', 5724, true);

-- ----------------------------
-- Sequence structure for datastore__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datastore__id_seq";
CREATE SEQUENCE "public"."datastore__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 57
 CACHE 1;
SELECT setval('"public"."datastore__id_seq"', 57, true);

-- ----------------------------
-- Sequence structure for datastore_shard__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datastore_shard__id_seq";
CREATE SEQUENCE "public"."datastore_shard__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 73
 CACHE 1;
SELECT setval('"public"."datastore_shard__id_seq"', 73, true);

-- ----------------------------
-- Sequence structure for datastore_shard_replica__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datastore_shard_replica__id_seq";
CREATE SEQUENCE "public"."datastore_shard_replica__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 72
 CACHE 1;
SELECT setval('"public"."datastore_shard_replica__id_seq"', 72, true);

-- ----------------------------
-- Sequence structure for datastore_vshard__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datastore_vshard__id_seq";
CREATE SEQUENCE "public"."datastore_vshard__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"public"."datastore_vshard__id_seq"', 8, true);

-- ----------------------------
-- Sequence structure for datastore_vshard_instance__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."datastore_vshard_instance__id_seq";
CREATE SEQUENCE "public"."datastore_vshard_instance__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 18
 CACHE 1;
SELECT setval('"public"."datastore_vshard_instance__id_seq"', 18, true);

-- ----------------------------
-- Sequence structure for field_type__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."field_type__id_seq";
CREATE SEQUENCE "public"."field_type__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"public"."field_type__id_seq"', 4, true);

-- ----------------------------
-- Sequence structure for field_type_constraint__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."field_type_constraint__id_seq";
CREATE SEQUENCE "public"."field_type_constraint__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Sequence structure for storage_node_type__id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."storage_node_type__id_seq";
CREATE SEQUENCE "public"."storage_node_type__id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 140
 CACHE 1;
SELECT setval('"public"."storage_node_type__id_seq"', 140, true);

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection";
CREATE TABLE "public"."collection" (
"_id" int4 DEFAULT nextval('collection__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"database_id" int4,
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO "public"."collection" VALUES ('7506', 'user', '3067', '0');
INSERT INTO "public"."collection" VALUES ('7507', 'thread', '3067', '0');
INSERT INTO "public"."collection" VALUES ('7508', 'message', '3067', '0');

-- ----------------------------
-- Table structure for collection_field
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_field";
CREATE TABLE "public"."collection_field" (
"_id" int4 DEFAULT nextval('collection_field__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"collection_id" int4,
"field_type" varchar(255) COLLATE "default",
"not_null" bool NOT NULL,
"parent_collection_field_id" int4,
"provision_state" int4 NOT NULL,
"default" varchar(255) COLLATE "default",
"function_default" varchar(255) COLLATE "default",
"function_default_args" jsonb
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_field
-- ----------------------------
INSERT INTO "public"."collection_field" VALUES ('29189', 'username', '7506', '_string', 't', '0', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29190', 'ksuid', '7507', '_string', 't', '0', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29191', 'data', '7507', '_document', 'f', '0', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29192', 'created', '7507', '_int', 't', '29191', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29193', 'created_by', '7507', '_string', 't', '29191', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29194', 'title', '7507', '_string', 't', '29191', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29195', 'ksuid', '7508', '_string', 't', '0', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29196', 'data', '7508', '_document', 'f', '0', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29197', 'content', '7508', '_string', 't', '29196', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29198', 'thread_ksuid', '7508', '_string', 't', '29196', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29199', 'created_by', '7508', '_string', 't', '29196', '0', null, null, null);
INSERT INTO "public"."collection_field" VALUES ('29200', 'created', '7508', '_int', 't', '29196', '0', null, null, null);

-- ----------------------------
-- Table structure for collection_field_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_field_relation";
CREATE TABLE "public"."collection_field_relation" (
"_id" int4 DEFAULT nextval('collection_field_relation__id_seq'::regclass) NOT NULL,
"collection_field_id" int4 NOT NULL,
"relation_collection_field_id" int4 NOT NULL,
"cascade_on_delete" bool NOT NULL,
"foreign_key" bool DEFAULT false NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_field_relation
-- ----------------------------
INSERT INTO "public"."collection_field_relation" VALUES ('3236', '29193', '29189', 'f', 't');
INSERT INTO "public"."collection_field_relation" VALUES ('3237', '29198', '29190', 'f', 't');
INSERT INTO "public"."collection_field_relation" VALUES ('3238', '29199', '29189', 'f', 't');

-- ----------------------------
-- Table structure for collection_index
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_index";
CREATE TABLE "public"."collection_index" (
"_id" int4 DEFAULT nextval('collection_index__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"collection_id" int4,
"unique" bool,
"provision_state" int4 NOT NULL,
"primary" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_index
-- ----------------------------
INSERT INTO "public"."collection_index" VALUES ('10489', 'username', '7506', 't', '0', 't');
INSERT INTO "public"."collection_index" VALUES ('10490', 'created', '7507', 'f', '0', null);
INSERT INTO "public"."collection_index" VALUES ('10491', 'ksuid', '7507', 't', '0', 't');
INSERT INTO "public"."collection_index" VALUES ('10492', 'title', '7507', 't', '0', null);
INSERT INTO "public"."collection_index" VALUES ('10493', 'created', '7508', 'f', '0', null);
INSERT INTO "public"."collection_index" VALUES ('10494', 'ksuid', '7508', 't', '0', 't');

-- ----------------------------
-- Table structure for collection_index_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_index_item";
CREATE TABLE "public"."collection_index_item" (
"_id" int4 DEFAULT nextval('collection_index_item__id_seq'::regclass) NOT NULL,
"collection_index_id" int4 NOT NULL,
"collection_field_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_index_item
-- ----------------------------
INSERT INTO "public"."collection_index_item" VALUES ('95239', '10489', '29189');
INSERT INTO "public"."collection_index_item" VALUES ('95240', '10490', '29192');
INSERT INTO "public"."collection_index_item" VALUES ('95241', '10491', '29190');
INSERT INTO "public"."collection_index_item" VALUES ('95242', '10492', '29194');
INSERT INTO "public"."collection_index_item" VALUES ('95244', '10493', '29200');
INSERT INTO "public"."collection_index_item" VALUES ('95245', '10494', '29195');

-- ----------------------------
-- Table structure for collection_keyspace
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_keyspace";
CREATE TABLE "public"."collection_keyspace" (
"_id" int4 DEFAULT nextval('collection_keyspace__id_seq'::regclass) NOT NULL,
"collection_id" int4 NOT NULL,
"hash_method" varchar(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_keyspace
-- ----------------------------
INSERT INTO "public"."collection_keyspace" VALUES ('3314', '7506', 'sha256');
INSERT INTO "public"."collection_keyspace" VALUES ('3315', '7507', 'sha256');
INSERT INTO "public"."collection_keyspace" VALUES ('3316', '7508', 'sha256');

-- ----------------------------
-- Table structure for collection_keyspace_partition
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_keyspace_partition";
CREATE TABLE "public"."collection_keyspace_partition" (
"_id" int4 DEFAULT nextval('collection_keyspace_partition__id_seq'::regclass) NOT NULL,
"collection_keyspace_id" int4 NOT NULL,
"start_id" int8 NOT NULL,
"end_id" int8,
"shard_method" varchar(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_keyspace_partition
-- ----------------------------
INSERT INTO "public"."collection_keyspace_partition" VALUES ('3280', '3314', '0', '0', 'mod');
INSERT INTO "public"."collection_keyspace_partition" VALUES ('3281', '3315', '0', '0', 'mod');
INSERT INTO "public"."collection_keyspace_partition" VALUES ('3282', '3316', '0', '0', 'mod');

-- ----------------------------
-- Table structure for collection_keyspace_partition_datastore_vshard
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_keyspace_partition_datastore_vshard";
CREATE TABLE "public"."collection_keyspace_partition_datastore_vshard" (
"_id" int4 DEFAULT nextval('collection_keyspace_partition_datastore_vshard__id_seq'::regclass) NOT NULL,
"collection_keyspace_partition_id" int4 NOT NULL,
"datastore_vshard_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_keyspace_partition_datastore_vshard
-- ----------------------------
INSERT INTO "public"."collection_keyspace_partition_datastore_vshard" VALUES ('22899', '3280', '9');
INSERT INTO "public"."collection_keyspace_partition_datastore_vshard" VALUES ('22900', '3280', '10');
INSERT INTO "public"."collection_keyspace_partition_datastore_vshard" VALUES ('22901', '3281', '9');
INSERT INTO "public"."collection_keyspace_partition_datastore_vshard" VALUES ('22902', '3281', '10');
INSERT INTO "public"."collection_keyspace_partition_datastore_vshard" VALUES ('22905', '3282', '9');
INSERT INTO "public"."collection_keyspace_partition_datastore_vshard" VALUES ('22906', '3282', '10');

-- ----------------------------
-- Table structure for collection_keyspace_shardkey
-- ----------------------------
DROP TABLE IF EXISTS "public"."collection_keyspace_shardkey";
CREATE TABLE "public"."collection_keyspace_shardkey" (
"_id" int4 DEFAULT nextval('collection_keyspace_item__id_seq'::regclass) NOT NULL,
"collection_keyspace_id" int4 NOT NULL,
"collection_field_id" int4 NOT NULL,
"order" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of collection_keyspace_shardkey
-- ----------------------------
INSERT INTO "public"."collection_keyspace_shardkey" VALUES ('22676', '3314', '29189', '0');
INSERT INTO "public"."collection_keyspace_shardkey" VALUES ('22677', '3315', '29190', '0');
INSERT INTO "public"."collection_keyspace_shardkey" VALUES ('22679', '3316', '29195', '0');

-- ----------------------------
-- Table structure for database
-- ----------------------------
DROP TABLE IF EXISTS "public"."database";
CREATE TABLE "public"."database" (
"_id" int4 DEFAULT nextval('database__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of database
-- ----------------------------
INSERT INTO "public"."database" VALUES ('3067', 'test1', '1');

-- ----------------------------
-- Table structure for database_datastore
-- ----------------------------
DROP TABLE IF EXISTS "public"."database_datastore";
CREATE TABLE "public"."database_datastore" (
"_id" int4 DEFAULT nextval('database_datastore__id_seq'::regclass) NOT NULL,
"database_id" int4,
"datastore_id" int4,
"read" bool,
"write" bool,
"required" bool,
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of database_datastore
-- ----------------------------
INSERT INTO "public"."database_datastore" VALUES ('3000', '3067', '57', 't', 't', 't', '0');

-- ----------------------------
-- Table structure for datasource
-- ----------------------------
DROP TABLE IF EXISTS "public"."datasource";
CREATE TABLE "public"."datasource" (
"_id" int4 DEFAULT nextval('datasource__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datasource
-- ----------------------------
INSERT INTO "public"."datasource" VALUES ('1', 'postgres');

-- ----------------------------
-- Table structure for datasource_instance
-- ----------------------------
DROP TABLE IF EXISTS "public"."datasource_instance";
CREATE TABLE "public"."datasource_instance" (
"_id" int4 DEFAULT nextval('datasource_instance__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"datasource_id" int4 NOT NULL,
"storage_node_id" int4 NOT NULL,
"config_json" jsonb,
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datasource_instance
-- ----------------------------
INSERT INTO "public"."datasource_instance" VALUES ('120', 'postgres1', '1', '140', 'null', '3');

-- ----------------------------
-- Table structure for datasource_instance_shard_instance
-- ----------------------------
DROP TABLE IF EXISTS "public"."datasource_instance_shard_instance";
CREATE TABLE "public"."datasource_instance_shard_instance" (
"_id" int4 DEFAULT nextval('datasource_instance_shard_instance__id_seq'::regclass) NOT NULL,
"datasource_instance_id" int4,
"datastore_vshard_instance_id" int4,
"name" varchar(255) COLLATE "default",
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datasource_instance_shard_instance
-- ----------------------------
INSERT INTO "public"."datasource_instance_shard_instance" VALUES ('5723', '120', '17', 'dbshard_test1_9_1', '1');
INSERT INTO "public"."datasource_instance_shard_instance" VALUES ('5724', '120', '18', 'dbshard_test1_10_1', '1');

-- ----------------------------
-- Table structure for datastore
-- ----------------------------
DROP TABLE IF EXISTS "public"."datastore";
CREATE TABLE "public"."datastore" (
"_id" int4 DEFAULT nextval('datastore__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datastore
-- ----------------------------
INSERT INTO "public"."datastore" VALUES ('57', 'test_datastore', '3');

-- ----------------------------
-- Table structure for datastore_shard
-- ----------------------------
DROP TABLE IF EXISTS "public"."datastore_shard";
CREATE TABLE "public"."datastore_shard" (
"_id" int4 DEFAULT nextval('datastore_shard__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"datastore_id" int4,
"shard_instance" int4 NOT NULL,
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datastore_shard
-- ----------------------------
INSERT INTO "public"."datastore_shard" VALUES ('72', 'datastore_test-shard1', '57', '1', '3');
INSERT INTO "public"."datastore_shard" VALUES ('73', 'test-shard2', '57', '2', '3');

-- ----------------------------
-- Table structure for datastore_shard_replica
-- ----------------------------
DROP TABLE IF EXISTS "public"."datastore_shard_replica";
CREATE TABLE "public"."datastore_shard_replica" (
"_id" int4 DEFAULT nextval('datastore_shard_replica__id_seq'::regclass) NOT NULL,
"datastore_shard_id" int4,
"datasource_instance_id" int4,
"master" bool NOT NULL,
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datastore_shard_replica
-- ----------------------------
INSERT INTO "public"."datastore_shard_replica" VALUES ('71', '72', '120', 't', '3');
INSERT INTO "public"."datastore_shard_replica" VALUES ('72', '73', '120', 't', '3');

-- ----------------------------
-- Table structure for datastore_vshard
-- ----------------------------
DROP TABLE IF EXISTS "public"."datastore_vshard";
CREATE TABLE "public"."datastore_vshard" (
"_id" int4 DEFAULT nextval('datastore_vshard__id_seq'::regclass) NOT NULL,
"datastore_id" int4 NOT NULL,
"shard_count" int4 NOT NULL,
"database_id" int4,
"name" varchar(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datastore_vshard
-- ----------------------------
INSERT INTO "public"."datastore_vshard" VALUES ('8', '57', '2', null, 'example_forum_vshard');
INSERT INTO "public"."datastore_vshard" VALUES ('9', '57', '1', '3067', 'singleshard');
INSERT INTO "public"."datastore_vshard" VALUES ('10', '57', '1', '3067', 'second singlleshard');

-- ----------------------------
-- Table structure for datastore_vshard_instance
-- ----------------------------
DROP TABLE IF EXISTS "public"."datastore_vshard_instance";
CREATE TABLE "public"."datastore_vshard_instance" (
"_id" int4 DEFAULT nextval('datastore_vshard_instance__id_seq'::regclass) NOT NULL,
"datastore_vshard_id" int4 NOT NULL,
"shard_instance" int4 NOT NULL,
"datastore_shard_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of datastore_vshard_instance
-- ----------------------------
INSERT INTO "public"."datastore_vshard_instance" VALUES ('15', '8', '1', '72');
INSERT INTO "public"."datastore_vshard_instance" VALUES ('16', '8', '2', '73');
INSERT INTO "public"."datastore_vshard_instance" VALUES ('17', '9', '1', '72');
INSERT INTO "public"."datastore_vshard_instance" VALUES ('18', '10', '1', '73');

-- ----------------------------
-- Table structure for field_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."field_type";
CREATE TABLE "public"."field_type" (
"_id" int4 DEFAULT nextval('field_type__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"dataman_type" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of field_type
-- ----------------------------

-- ----------------------------
-- Table structure for field_type_constraint
-- ----------------------------
DROP TABLE IF EXISTS "public"."field_type_constraint";
CREATE TABLE "public"."field_type_constraint" (
"_id" int4 DEFAULT nextval('field_type_constraint__id_seq'::regclass) NOT NULL,
"field_type_id" int4 NOT NULL,
"constraint" varchar(255) COLLATE "default" NOT NULL,
"args" jsonb,
"validation_error" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of field_type_constraint
-- ----------------------------

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS "public"."sequence";
CREATE TABLE "public"."sequence" (
"name" varchar(255) COLLATE "default" NOT NULL,
"last_id" int8 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sequence
-- ----------------------------

-- ----------------------------
-- Table structure for storage_node
-- ----------------------------
DROP TABLE IF EXISTS "public"."storage_node";
CREATE TABLE "public"."storage_node" (
"_id" int4 DEFAULT nextval('storage_node_type__id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"ip" varchar(255) COLLATE "default",
"port" int4,
"provision_state" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of storage_node
-- ----------------------------
INSERT INTO "public"."storage_node" VALUES ('140', 'local', '127.0.0.1', '8081', '3');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."collection__id_seq" OWNED BY "collection"."_id";
ALTER SEQUENCE "public"."collection_field__id_seq" OWNED BY "collection_field"."_id";
ALTER SEQUENCE "public"."collection_field_relation__id_seq" OWNED BY "collection_field_relation"."_id";
ALTER SEQUENCE "public"."collection_index__id_seq" OWNED BY "collection_index"."_id";
ALTER SEQUENCE "public"."collection_index_item__id_seq" OWNED BY "collection_index_item"."_id";
ALTER SEQUENCE "public"."collection_keyspace__id_seq" OWNED BY "collection_keyspace"."_id";
ALTER SEQUENCE "public"."collection_keyspace_item__id_seq" OWNED BY "collection_keyspace_shardkey"."_id";
ALTER SEQUENCE "public"."collection_keyspace_partition__id_seq" OWNED BY "collection_keyspace_partition"."_id";
ALTER SEQUENCE "public"."collection_keyspace_partition_datastore_vshard__id_seq" OWNED BY "collection_keyspace_partition_datastore_vshard"."_id";
ALTER SEQUENCE "public"."database__id_seq" OWNED BY "database"."_id";
ALTER SEQUENCE "public"."database_datastore__id_seq" OWNED BY "database_datastore"."_id";
ALTER SEQUENCE "public"."datasource__id_seq" OWNED BY "datasource"."_id";
ALTER SEQUENCE "public"."datasource_instance__id_seq" OWNED BY "datasource_instance"."_id";
ALTER SEQUENCE "public"."datasource_instance_shard_instance__id_seq" OWNED BY "datasource_instance_shard_instance"."_id";
ALTER SEQUENCE "public"."datastore__id_seq" OWNED BY "datastore"."_id";
ALTER SEQUENCE "public"."datastore_shard__id_seq" OWNED BY "datastore_shard"."_id";
ALTER SEQUENCE "public"."datastore_shard_replica__id_seq" OWNED BY "datastore_shard_replica"."_id";
ALTER SEQUENCE "public"."datastore_vshard__id_seq" OWNED BY "datastore_vshard"."_id";
ALTER SEQUENCE "public"."datastore_vshard_instance__id_seq" OWNED BY "datastore_vshard_instance"."_id";
ALTER SEQUENCE "public"."storage_node_type__id_seq" OWNED BY "storage_node"."_id";

-- ----------------------------
-- Indexes structure for table collection
-- ----------------------------
CREATE UNIQUE INDEX "index_index_collection_collection_name" ON "public"."collection" USING btree ("name", "database_id");

-- ----------------------------
-- Primary Key structure for table collection
-- ----------------------------
ALTER TABLE "public"."collection" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_field
-- ----------------------------
CREATE UNIQUE INDEX "collection_field_name_collection_id_parent_collection_field_idx" ON "public"."collection_field" USING btree ("name", "collection_id", "parent_collection_field_id");

-- ----------------------------
-- Primary Key structure for table collection_field
-- ----------------------------
ALTER TABLE "public"."collection_field" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_field_relation
-- ----------------------------
CREATE UNIQUE INDEX "collection_field_relation_collection_field_id_idx" ON "public"."collection_field_relation" USING btree ("collection_field_id");

-- ----------------------------
-- Primary Key structure for table collection_field_relation
-- ----------------------------
ALTER TABLE "public"."collection_field_relation" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_index
-- ----------------------------
CREATE UNIQUE INDEX "index_collection_index_name" ON "public"."collection_index" USING btree ("name", "collection_id");
CREATE UNIQUE INDEX "collection_index_collection_id_primary_idx" ON "public"."collection_index" USING btree ("collection_id", "primary");

-- ----------------------------
-- Primary Key structure for table collection_index
-- ----------------------------
ALTER TABLE "public"."collection_index" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_index_item
-- ----------------------------
CREATE UNIQUE INDEX "collection_index_item_collection_index_id_collection_field__idx" ON "public"."collection_index_item" USING btree ("collection_index_id", "collection_field_id");

-- ----------------------------
-- Primary Key structure for table collection_index_item
-- ----------------------------
ALTER TABLE "public"."collection_index_item" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_keyspace
-- ----------------------------
CREATE UNIQUE INDEX "collection_keyspace_TOREMOVE" ON "public"."collection_keyspace" USING btree ("collection_id");

-- ----------------------------
-- Primary Key structure for table collection_keyspace
-- ----------------------------
ALTER TABLE "public"."collection_keyspace" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_keyspace_partition
-- ----------------------------
CREATE UNIQUE INDEX "collection_keyspace_partition_TOREMOVE" ON "public"."collection_keyspace_partition" USING btree ("collection_keyspace_id");

-- ----------------------------
-- Primary Key structure for table collection_keyspace_partition
-- ----------------------------
ALTER TABLE "public"."collection_keyspace_partition" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_keyspace_partition_datastore_vshard
-- ----------------------------
CREATE UNIQUE INDEX "TO_REVISIT" ON "public"."collection_keyspace_partition_datastore_vshard" USING btree ("collection_keyspace_partition_id", "datastore_vshard_id");

-- ----------------------------
-- Primary Key structure for table collection_keyspace_partition_datastore_vshard
-- ----------------------------
ALTER TABLE "public"."collection_keyspace_partition_datastore_vshard" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table collection_keyspace_shardkey
-- ----------------------------
CREATE UNIQUE INDEX "collection_keyspace_item_collection_keyspace_id_order_idx" ON "public"."collection_keyspace_shardkey" USING btree ("collection_keyspace_id", "order");

-- ----------------------------
-- Primary Key structure for table collection_keyspace_shardkey
-- ----------------------------
ALTER TABLE "public"."collection_keyspace_shardkey" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table database
-- ----------------------------
CREATE UNIQUE INDEX "index_index_database_name" ON "public"."database" USING btree ("name");

-- ----------------------------
-- Primary Key structure for table database
-- ----------------------------
ALTER TABLE "public"."database" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table database_datastore
-- ----------------------------
CREATE UNIQUE INDEX "database_datastore_database_id_datastore_id_idx" ON "public"."database_datastore" USING btree ("database_id", "datastore_id");
CREATE INDEX "database_id_idx" ON "public"."database_datastore" USING btree ("database_id");

-- ----------------------------
-- Primary Key structure for table database_datastore
-- ----------------------------
ALTER TABLE "public"."database_datastore" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datasource
-- ----------------------------
CREATE UNIQUE INDEX "datasource_name_idx" ON "public"."datasource" USING btree ("name");

-- ----------------------------
-- Primary Key structure for table datasource
-- ----------------------------
ALTER TABLE "public"."datasource" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datasource_instance
-- ----------------------------
CREATE UNIQUE INDEX "datasource_instance_name_storage_node_id_idx" ON "public"."datasource_instance" USING btree ("name", "storage_node_id");

-- ----------------------------
-- Primary Key structure for table datasource_instance
-- ----------------------------
ALTER TABLE "public"."datasource_instance" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datasource_instance_shard_instance
-- ----------------------------
CREATE UNIQUE INDEX "datasource_instance_shard_insta_datasource_instance_id_name_idx" ON "public"."datasource_instance_shard_instance" USING btree ("datasource_instance_id", "name");

-- ----------------------------
-- Primary Key structure for table datasource_instance_shard_instance
-- ----------------------------
ALTER TABLE "public"."datasource_instance_shard_instance" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datastore
-- ----------------------------
CREATE UNIQUE INDEX "datastore_name_idx" ON "public"."datastore" USING btree ("name");

-- ----------------------------
-- Primary Key structure for table datastore
-- ----------------------------
ALTER TABLE "public"."datastore" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datastore_shard
-- ----------------------------
CREATE UNIQUE INDEX "datastore_shard_name_datastore_id_idx" ON "public"."datastore_shard" USING btree ("name", "datastore_id");
CREATE UNIQUE INDEX "datastore_shard_number" ON "public"."datastore_shard" USING btree ("datastore_id", "shard_instance");

-- ----------------------------
-- Primary Key structure for table datastore_shard
-- ----------------------------
ALTER TABLE "public"."datastore_shard" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datastore_shard_replica
-- ----------------------------
CREATE UNIQUE INDEX "datastore_shard_replica_datastore_shard_id_datasource_insta_idx" ON "public"."datastore_shard_replica" USING btree ("datastore_shard_id", "datasource_instance_id");

-- ----------------------------
-- Primary Key structure for table datastore_shard_replica
-- ----------------------------
ALTER TABLE "public"."datastore_shard_replica" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datastore_vshard
-- ----------------------------
CREATE UNIQUE INDEX "datastore_vshard_datastore_id_name_idx" ON "public"."datastore_vshard" USING btree ("datastore_id", "name");

-- ----------------------------
-- Primary Key structure for table datastore_vshard
-- ----------------------------
ALTER TABLE "public"."datastore_vshard" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table datastore_vshard_instance
-- ----------------------------
CREATE UNIQUE INDEX "datastore_vshard_instance_datastore_vshard_id_shard_instanc_idx" ON "public"."datastore_vshard_instance" USING btree ("datastore_vshard_id", "shard_instance");

-- ----------------------------
-- Primary Key structure for table datastore_vshard_instance
-- ----------------------------
ALTER TABLE "public"."datastore_vshard_instance" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table field_type
-- ----------------------------
CREATE UNIQUE INDEX "field_type_name_idx" ON "public"."field_type" USING btree ("name");

-- ----------------------------
-- Primary Key structure for table field_type
-- ----------------------------
ALTER TABLE "public"."field_type" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table field_type_constraint
-- ----------------------------
CREATE INDEX "field_type_constraint_field_type_id_constraint_id_idx" ON "public"."field_type_constraint" USING btree ("field_type_id", "constraint");

-- ----------------------------
-- Primary Key structure for table field_type_constraint
-- ----------------------------
ALTER TABLE "public"."field_type_constraint" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Indexes structure for table sequence
-- ----------------------------
CREATE UNIQUE INDEX "sequence_name_idx" ON "public"."sequence" USING btree ("name");

-- ----------------------------
-- Primary Key structure for table sequence
-- ----------------------------
ALTER TABLE "public"."sequence" ADD PRIMARY KEY ("name");

-- ----------------------------
-- Indexes structure for table storage_node
-- ----------------------------
CREATE UNIQUE INDEX "storage_node_ip_port_idx" ON "public"."storage_node" USING btree ("ip", "port");
CREATE UNIQUE INDEX "storage_node_name_idx" ON "public"."storage_node" USING btree ("name");

-- ----------------------------
-- Primary Key structure for table storage_node
-- ----------------------------
ALTER TABLE "public"."storage_node" ADD PRIMARY KEY ("_id");

-- ----------------------------
-- Foreign Key structure for table "public"."collection"
-- ----------------------------
ALTER TABLE "public"."collection" ADD FOREIGN KEY ("database_id") REFERENCES "public"."database" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_field"
-- ----------------------------
ALTER TABLE "public"."collection_field" ADD FOREIGN KEY ("collection_id") REFERENCES "public"."collection" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_field_relation"
-- ----------------------------
ALTER TABLE "public"."collection_field_relation" ADD FOREIGN KEY ("relation_collection_field_id") REFERENCES "public"."collection_field" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."collection_field_relation" ADD FOREIGN KEY ("collection_field_id") REFERENCES "public"."collection_field" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_index"
-- ----------------------------
ALTER TABLE "public"."collection_index" ADD FOREIGN KEY ("collection_id") REFERENCES "public"."collection" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_index_item"
-- ----------------------------
ALTER TABLE "public"."collection_index_item" ADD FOREIGN KEY ("collection_index_id") REFERENCES "public"."collection_index" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."collection_index_item" ADD FOREIGN KEY ("collection_field_id") REFERENCES "public"."collection_field" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_keyspace"
-- ----------------------------
ALTER TABLE "public"."collection_keyspace" ADD FOREIGN KEY ("collection_id") REFERENCES "public"."collection" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_keyspace_partition"
-- ----------------------------
ALTER TABLE "public"."collection_keyspace_partition" ADD FOREIGN KEY ("collection_keyspace_id") REFERENCES "public"."collection_keyspace" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_keyspace_partition_datastore_vshard"
-- ----------------------------
ALTER TABLE "public"."collection_keyspace_partition_datastore_vshard" ADD FOREIGN KEY ("datastore_vshard_id") REFERENCES "public"."datastore_vshard" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."collection_keyspace_partition_datastore_vshard" ADD FOREIGN KEY ("collection_keyspace_partition_id") REFERENCES "public"."collection_keyspace_partition" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."collection_keyspace_shardkey"
-- ----------------------------
ALTER TABLE "public"."collection_keyspace_shardkey" ADD FOREIGN KEY ("collection_keyspace_id") REFERENCES "public"."collection_keyspace" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."collection_keyspace_shardkey" ADD FOREIGN KEY ("collection_field_id") REFERENCES "public"."collection_field" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."database_datastore"
-- ----------------------------
ALTER TABLE "public"."database_datastore" ADD FOREIGN KEY ("datastore_id") REFERENCES "public"."datastore" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."database_datastore" ADD FOREIGN KEY ("database_id") REFERENCES "public"."database" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."datasource_instance"
-- ----------------------------
ALTER TABLE "public"."datasource_instance" ADD FOREIGN KEY ("storage_node_id") REFERENCES "public"."storage_node" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."datasource_instance" ADD FOREIGN KEY ("datasource_id") REFERENCES "public"."datasource" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."datasource_instance_shard_instance"
-- ----------------------------
ALTER TABLE "public"."datasource_instance_shard_instance" ADD FOREIGN KEY ("datastore_vshard_instance_id") REFERENCES "public"."datastore_vshard_instance" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."datasource_instance_shard_instance" ADD FOREIGN KEY ("datasource_instance_id") REFERENCES "public"."datasource_instance" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."datastore_shard"
-- ----------------------------
ALTER TABLE "public"."datastore_shard" ADD FOREIGN KEY ("datastore_id") REFERENCES "public"."datastore" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."datastore_shard_replica"
-- ----------------------------
ALTER TABLE "public"."datastore_shard_replica" ADD FOREIGN KEY ("datastore_shard_id") REFERENCES "public"."datastore_shard" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."datastore_shard_replica" ADD FOREIGN KEY ("datasource_instance_id") REFERENCES "public"."datasource_instance" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."datastore_vshard"
-- ----------------------------
ALTER TABLE "public"."datastore_vshard" ADD FOREIGN KEY ("datastore_id") REFERENCES "public"."datastore" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."datastore_vshard" ADD FOREIGN KEY ("database_id") REFERENCES "public"."database" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."datastore_vshard_instance"
-- ----------------------------
ALTER TABLE "public"."datastore_vshard_instance" ADD FOREIGN KEY ("datastore_shard_id") REFERENCES "public"."datastore_shard" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."datastore_vshard_instance" ADD FOREIGN KEY ("datastore_vshard_id") REFERENCES "public"."datastore_vshard" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."field_type_constraint"
-- ----------------------------
ALTER TABLE "public"."field_type_constraint" ADD FOREIGN KEY ("field_type_id") REFERENCES "public"."field_type" ("_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
