CREATE TABLE tests (
test_id serial4 NOT NULL,
test_subject VARCHAR(100),
CONSTRAINT test_pk PRIMARY KEY (test_id)
)

CREATE TABLE questions (
question_id serial4 NOT NULL,
test_id serial4 NOT NULL,
question_text VARCHAR(100),
CONSTRAINT question_pk PRIMARY KEY (question_id),
CONSTRAINT question_fk FOREIGN KEY (test_id) REFERENCES tests(test_id)
);

CREATE TABLE answers (
answer_id serial4 NOT NULL,
question_id int4 NOT NULL,
answer_number int4 NOT NULL,
answer_text VARCHAR(100) NOT NULL,
answer_correct boolean,
CONSTRAINT answer_pk PRIMARY KEY (answer_id),
CONSTRAINT answer_fk FOREIGN KEY (question_id) REFERENCES questions(question_id)
);
