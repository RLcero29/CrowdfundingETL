CREATE TABLE "campaign" (
	"cf_id" int NOT NULL PRIMARY KEY,
	"contact_id" int NOT NULL,
	"company_name" VARCHAR(255) NOT NULL,
	"description" VARCHAR(255) NOT NULL,
	"goal" FLOAT NOT NULL,
	"pledged" FLOAT NOT NULL,
	"outcome" VARCHAR(255) NOT NULL,
	"backers_count" int NOT NULL,
	"country" VARCHAR(255) NOT NULL,
	"currency" VARCHAR(255) NOT NULL,
	"launched_date" DATE NOT NULL,
	"end_date" DATE NOT NULL,
	"category_id" VARCHAR(255) NOT NULL,
	"subcategory_id" VARCHAR(255) NOT NULL
)

CREATE TABLE "category" (
	"category_id" VARCHAR(255) NOT NULL PRIMARY KEY,
	"category" VARCHAR(255) NOT NULL
)

CREATE TABLE "contacts" (
	"contact_id" int NOT NULL PRIMARY KEY,
	"first_name" VARCHAR(255) NOT NULL,
	"last_name" VARCHAR(255) NOT NULL,
	"email" VARCHAR(255) NOT NULL
)

CREATE TABLE "subcategory" (
	"subcategory_id" VARCHAR(255) NOT NULL PRIMARY KEY,
	"subcategory" VARCHAR(255) NOT NULL
)

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY (category_id) REFERENCES category(category_id)

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)