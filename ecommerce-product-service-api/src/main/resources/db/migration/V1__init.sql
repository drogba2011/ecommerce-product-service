CREATE TABLE PRODUCT
(
  ID           VARCHAR(32) NOT NULL,
  JSON_CONTENT JSON        NOT NULL,
  NAME         VARCHAR(100) GENERATED ALWAYS AS (JSON_CONTENT ->> '$.name') VIRTUAL,
  PRICE        DECIMAL GENERATED ALWAYS AS (JSON_CONTENT ->> '$.price') VIRTUAL,
  DESCRIPTION  VARCHAR(500) GENERATED ALWAYS AS (JSON_CONTENT ->> '$.description') VIRTUAL,
  CATEGORY_ID  VARCHAR(32) GENERATED ALWAYS AS (JSON_CONTENT ->> '$.categoryId') VIRTUAL,
  CREATED_AT   BIGINT GENERATED ALWAYS AS (JSON_CONTENT ->> '$.createdAt') VIRTUAL,
  PRIMARY KEY (ID)
) CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
