Here's the MySQL code to create the database tables for Fagid website :

CREATE TABLE users (
    user_id INT(10) PRIMARY KEY,
    fullname VARCHAR(50),
    username VARCHAR(20),
    email VARCHAR(40),
    password CHAR(60),
    phone INT(10),
    subscriptionDate DATE,
    last_login DATETIME,
    profile_image VARCHAR(255)
);

CREATE TABLE users_link (
    user_id INT(10),
    facebook_link VARCHAR(250),
    twitter_link VARCHAR(250),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE users_log (
    user_id INT(10),
    log VARCHAR(255),
    time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE users_noti (
    user_id INT(10),
    fullname VARCHAR(50),
    profile_image VARCHAR(255),
    content VARCHAR(255),
    time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE post (
    post_id INT(10) PRIMARY KEY,
    user_id INT(10),
    title VARCHAR(25),
    content VARCHAR(250),
    status VARCHAR(10),
    location VARCHAR(20),
    categorie VARCHAR(40),
    serial VARCHAR(20),
    dateOfItem DATE,
    post_created_date DATETIME,
    img1 VARCHAR(255),
    img2 VARCHAR(255),
    img3 VARCHAR(255),
    img4 VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE post_image (
    post_id INT(10),
    img1 VARCHAR(50),
    img2 VARCHAR(50),
    img3 VARCHAR(50),
    img4 VARCHAR(50),
    FOREIGN KEY (post_id) REFERENCES post(post_id)
);

CREATE TABLE comments (
    post_id INT(10),
    user_id INT(10),
    content VARCHAR(250),
    comment_date_created DATE,
    FOREIGN KEY (post_id) REFERENCES post(post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

