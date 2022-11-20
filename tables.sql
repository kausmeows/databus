CREATE TABLE "new__info_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "first_name" varchar(30) NOT NULL, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL);
INSERT INTO "new__info_user" ("id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name") SELECT "id", "password", "last_login", "is_superuser", "username", "last_name", "email", "is_staff", "is_active", "date_joined", "first_name" FROM "info_user";
DROP TABLE "info_user";
ALTER TABLE "new__info_user" RENAME TO "info_user";
COMMIT;
