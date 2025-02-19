CREATE TABLE tests (
id serial4 NOT NULL,
test_subject VARCHAR(100),
CONSTRAINT test_pk PRIMARY KEY (id)
)

CREATE TABLE questions (
id serial4 NOT NULL,
test_id serial4 NOT NULL,
question_text VARCHAR(100),
CONSTRAINT question_pk PRIMARY KEY (id),
CONSTRAINT question_fk FOREIGN KEY (test_id) REFERENCES tests(id)
);

CREATE TABLE answers (
id serial4 NOT NULL,
question_id int4 NOT NULL,
answer_number int4 NOT NULL,
answer_text VARCHAR(100) NOT NULL,
answer_correct boolean,
CONSTRAINT answer_pk PRIMARY KEY (id),
CONSTRAINT answer_fk FOREIGN KEY (question_id) REFERENCES questions(id)
);
