CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "level" char(1) DEFAULT 'B',
  "teacher" varchar NOT NULL DEFAULT 'Acaddemlo'
);

CREATE TABLE "user_courses" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "courses_id" uuid,
  "quantity" int NOT NULL DEFAULT 0
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar UNIQUE NOT NULL,
  "url" text UNIQUE,
  "course_video_id" uuid
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "course_categories" (
  "id" uuid PRIMARY KEY,
  "courses_id" uuid,
  "categories_id" uuid
);

ALTER TABLE "courses_videos" ADD FOREIGN KEY ("course_video_id") REFERENCES "courses" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "user_courses" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "course_categories" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "course_categories" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");
