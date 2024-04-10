CREATE TABLE publisher (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE book (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    num_pages INT NOT NULL,
    year DATE NOT NULL,
    language VARCHAR(20) NOT NULL,
    isbn VARCHAR(13) NOT NULL,
    availability BOOLEAN NOT NULL DEFAULT TRUE,
    hold BOOLEAN NOT NULL DEFAULT FALSE,
    publisher_id INT REFERENCES publisher(id)
);

CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE book_category (
    book_id INT REFERENCES book(id),
    category_id INT REFERENCES category(id),
    PRIMARY KEY (book_id, category_id)
);

CREATE TABLE author (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE book_author (
    book_id INT REFERENCES book(id),
    author_id INT REFERENCES author(id),
    PRIMARY KEY (book_id, author_id)
);

CREATE TABLE member (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE member_address (
    id SERIAL PRIMARY KEY,
    zip VARCHAR(8) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(30) NOT NULL,
    state VARCHAR(30) NOT NULL,
    member_id INT REFERENCES member(id)
);

CREATE TABLE phone_type (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE member_phone (
    id SERIAL PRIMARY KEY,
    phone_num VARCHAR(50),
    phone_type_id INT REFERENCES phone_type(id),
    member_id INT REFERENCES member(id)
);

CREATE TABLE loan (
    id SERIAL PRIMARY KEY,
    loan_date DATE NOT NULL,
    deadline DATE NOT NULL,
    return_date DATE NULL,
    returned BOOLEAN NOT NULL DEFAULT FALSE,
    book_id INT REFERENCES book(id),
    member_id INT REFERENCES member(id)
);

CREATE TABLE reservation (
    id SERIAL PRIMARY KEY,
    reservation_date DATE NOT NULL,
    exp_date DATE NOT NULL,
    book_id INT REFERENCES book(id),
    member_id INT REFERENCES member(id)
);

CREATE TABLE issue (
    id SERIAL PRIMARY KEY,
    amount INT NOT NULL,
    paid BOOLEAN NOT NULL,
    reservation_id INT REFERENCES reservation(id),
    member_id INT REFERENCES member(id)
);

CREATE TABLE payment (
    id SERIAL PRIMARY KEY,
    amount INT NOT NULL,
    issue_id INT REFERENCES issue(id),
    member_id INT REFERENCES member(id)
);
