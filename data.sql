INSERT INTO author (first_name, last_name)
VALUES ('George', 'Orwell'),
       ('Jane', 'Austen'),
       ('Mark', 'Twain'),
       ('J.D.', 'Stalinger'),
       ('F. Scott', 'Fitzgerald'),
       ('J.R.R.', 'Tolkien'),
       ('Harper', 'Lee');

INSERT INTO publisher (name)
VALUES ('Cosmpolis'),
       ('Atlas WM'),
       ('Exxodus'),
       ('Cultural');

INSERT INTO category (name)
VALUES ('Dystopia'),
       ('English Literature'),
       ('American Literature'),
       ('Fantasy');

INSERT INTO book (title, description, num_pages, year, language, publisher_id, isbn)
VALUES ('1984', 'George Orwell’s dystopian work, 1984, is perhaps the most influential book of the 20th century, making famous Big Brother, Newspeak, and Room 101.', 416, '2023-09-14', 'English', 1, '7506796848'),

       ('Pride and Prejudice', 'Jane Austen’s beloved comedy of manners is one of the most enduring novels in English literature. Pride and Prejudice tells the story of Elizabeth Bennet, a sharp-witted young woman in Regency England.', 240, '2005-07-15', 'English', 2, '4414653833'),

       ('The Adventures of Huckleberry Finn', 'Mark Twain’s novel is known for its colorful depiction of people and places along the Mississippi River. Set in pre-Civil War Southern society, the story follows Huckleberry Finn and his friend Jim as they travel down the river.', 408, '1969-05-31', 'English', 3, '3348928303'),

       ('The Catcher in the Rye', 'J.D. Salinger’s masterpiece captures the existential angst of the teenage experience. First published in 1951, the novel remains widely read and controversial, influencing modern literature.', 256, '2000-10-12', 'English', 3, '1102601160'),

       ('The Great Gatsby', 'F. Scott Fitzgerald’s third book is the supreme achievement of his career. This exemplary Jazz Age novel has been acclaimed by generations of readers.', 224, '1980-12-21', 'English', 4, '7126129341'),

       ('The Hobbit', 'J.R.R. Tolkien’s charming prelude to The Lord of the Rings is widely considered a classic in its own right. The story follows the journey of the hobbit Bilbo Baggins and his companions.', 336, '1969-06-05', 'English', 1, '4841268102'),

       ('The Lord of the Rings', 'J.R.R. Tolkien’s epic fantasy trilogy follows the quest to destroy the One Ring and the battles against the dark lord Sauron. Considered one of the greatest works of fantasy literature.', 576, '1958-07-19', 'English', 4, '6264705602'),

       ('To Kill a Mockingbird', 'Harper Lee’s Pulitzer Prize-winning masterpiece about honor and injustice in the deep South—and one man’s heroism in the face of blind, violent hatred. One of the most beloved stories of all time.', 349, '1999-09-17', 'English', 1, '4295615111');

INSERT INTO member (first_name, last_name, email)
VALUES ('Dorise', 'Duiguid', 'dduiguid0@upenn.edu'),
       ('Wash', 'Budden', 'wbudden1@uol.com.br'),
       ('Lonnie', 'Dohrmann', 'ldohrmann2@usgs.gov'),
       ('Lee', 'Maffey', 'lmaffey3@myspace.com'),
       ('Cassie', 'Keave', 'ckeave4@jalbum.net'),
       ('Dugald', 'Toone', 'dtoone5@clickbank.net'),
       ('Carlynne', 'Sharvell', 'csharvell6@bbb.org'),
       ('Yorgo', 'Jedras', 'yjedras7@123-reg.co.uk'),
       ('Jecho', 'Billington', 'jbillington8@google.it'),
       ('Trip', 'Persehouse', 'tpersehouse9@bizjournals.com'),
       ('Babara', 'Cheeld', 'bcheelda@latimes.com'),
       ('Edyth', 'Fitchet', 'efitchetb@i2i.jp'),
       ('Joby', 'Dabs', null),
       ('Raff', 'Hardacre', 'rhardacred@slideshare.net'),
       ('Madison', 'Antoney', 'mantoneye@odnoklassniki.ru');

INSERT INTO member_address (zip, street, city, state, member_id)
VALUES ('10022', '5th Avenue', 'New York', 'New York', 1),
       ('30303', 'Peachtree Street', 'Atlanta', 'Georgia', 2),
       ('33131', 'Biscayne Boulevard', 'Miami', 'Florida', 3),
       ('30312', 'Central Avenue', 'Atlanta', 'Georgia', 4),
       ('02101', 'Beacon Street', 'Boston', 'Massachusetts', 5),
       ('30309', 'West Peachtree Street', 'Atlanta', 'Georgia', 6),
       ('30310', 'Spring Street', 'Atlanta', 'Georgia', 7),
       ('02108', 'Newbury Street', 'Boston', 'Massachusetts', 8),
       ('30319', 'Howell Mill Road', 'Atlanta', 'Georgia', 9),
       ('02109', 'Boylston Street', 'Boston', 'Massachusetts', 10),
       ('30308', 'Monroe Drive', 'Atlanta', 'Georgia', 11),
       ('02116', 'Massachusetts Avenue', 'Boston', 'Massachusetts', 12),
       ('30313', 'Ponce de Leon Avenue', 'Atlanta', 'Georgia', 13),
       ('02118', 'Tremont Street', 'Boston', 'Massachusetts', 14),
       ('30307', 'North Avenue', 'Atlanta', 'Georgia', 15);

INSERT INTO phone_type(name)
VALUES ('cell_phone'),
       ('landline');

INSERT INTO member_phone (phone_num, phone_type_id, member_id)
VALUES ('2125551234', 1, 1),
       ('4045551234', 1, 2),
       ('2155551234', 1, 3),
       ('2165551234', 1, 4),
       ('3175551234', 1, 5),
       ('3185551234', 1, 6),
       ('4195551234', 1, 7),
       ('4105551234', 1, 8),
       ('5135551234', 1, 9),
       ('5125551234', 1, 10),
       ('6145551234', 1, 11),
       ('6155551234', 1, 12),
       ('7165551234', 1, 13),
       ('7175551234', 1, 14),
       ('8185551234', 1, 15);

INSERT INTO book_category (book_id, category_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 3),
       (5, 3),
       (6, 4),
       (7, 4),
       (8, 3);

INSERT INTO book_author (book_id, author_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 6),
       (8, 7);

