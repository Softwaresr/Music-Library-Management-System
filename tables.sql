CREATE TABLE `user` (
 `user_id` int(11) NOT NULL AUTO_INCREMENT,
 `username` varchar(255) NOT NULL,
 `mobile_number` varchar(10) NOT NULL,
 `email_address` varchar(255) NOT NULL,
 `password` varchar(255) NOT NULL,
 `activation_code` varchar(255) NOT NULL DEFAULT '0',
 `confirm_status` int(1) DEFAULT '0',
 `contributions` int(11) NOT NULL DEFAULT '0',
 PRIMARY KEY (`user_id`)
);

CREATE TABLE `category` (
 `cat_id` int(11) NOT NULL,
 `cat_name` varchar(255) NOT NULL,
 primary key(`cat_id`)
);

CREATE TABLE `kannada_albums` (
 `song_id` int(100) NOT NULL AUTO_INCREMENT,
 `song_name` varchar(255) NOT NULL,
 `song_format` varchar(100) NOT NULL,
 `singer_name` varchar(100) NOT NULL,
 `movie_name` varchar(50) NOT NULL,
 `song_image` varchar(255) NOT NULL,
 `audio_file` varchar(255) NOT NULL,
 PRIMARY KEY (`song_id`)
);

CREATE TABLE `english_albums` (
 `song_id` int(100) NOT NULL AUTO_INCREMENT,
 `song_name` varchar(255) NOT NULL,
 `song_format` varchar(100) NOT NULL,
 `singer_name` varchar(100) NOT NULL,
 `movie_name` varchar(50) NOT NULL,
 `song_image` varchar(255) NOT NULL,
 `audio_file` varchar(255) NOT NULL,
 PRIMARY KEY (`song_id`)
);

CREATE TABLE `hindi_albums` (
 `song_id` int(100) NOT NULL AUTO_INCREMENT,
 `song_name` varchar(255) NOT NULL,
 `song_format` varchar(100) NOT NULL,
 `singer_name` varchar(100) NOT NULL,
 `movie_name` varchar(50) NOT NULL,
 `song_image` varchar(255) NOT NULL,
 `audio_file` varchar(255) NOT NULL,
 PRIMARY KEY (`song_id`)
);

CREATE TABLE `upload_albums` (
 `song_id` int(100) NOT NULL AUTO_INCREMENT,
 `singer_id` int(11) NOT NULL,
 `song_name` varchar(255) NOT NULL,
 `song_format` varchar(100) NOT NULL,
 `singer_name` varchar(100) NOT NULL,
 `song_image` varchar(255) NOT NULL,
 `audio_file` varchar(255) NOT NULL,
 PRIMARY KEY (`song_id`)
);

CREATE TABLE `favorite_songs` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `cat_id` int(11) NOT NULL references category(`cat_id`) on delete cascade,
 `song_id` int(11) NOT NULL,
 `user_id` int(11) NOT NULL references user(`user_id`) on delete cascade,
 `song_name` varchar(255) NOT NULL,
 `singer_name` varchar(255) NOT NULL,
 `song_image` varchar(255) NOT NULL,
 `audio_file` varchar(255) NOT NULL,
 PRIMARY KEY (`id`)
);
