--spotify data table creation.

create table spotify(
artist VARCHAR(255),
track VARCHAR(255),
album VARCHAR(255),
album_type VARCHAR(50),
danceability FLOAT,
energy FLOAT,
loudness FLOAT,
speechiness FLOAT,
acousticness FLOAT,
instrumentalness FLOAT,
liveness FLOAT,
valence FLOAT,
tempo FLOAT,
duration_min FLOAT,
title VARCHAR(255),
channel VARCHAR(255),
views FLOAT,
likes BIGINT,
comments BIGINT,
licensed BOOLEAN,
official_video BOOLEAN,
stream BIGINT,
energy_liveness FLOAT,
most_played_on VARCHAR(50)
);


-- Basic EDA

select * from spotify;
select count(*) from spotify;

select distinct artist from spotify;
select count(distinct artist) from spotify;

select distinct track from spotify;
select count(distinct track) from spotify;

select distinct album from spotify;
select count(distinct album) from spotify;

select distinct album_type from spotify;
select count(distinct album_type) from spotify;

select distinct title from spotify;
select count(distinct title) from spotify;

select distinct channel from spotify;
select count(distinct channel) from spotify;

select distinct most_played_on from spotify;
select count(distinct most_played_on) from spotify;

select min(energy) from spotify;
select max(energy) from spotify;

select min(duration_min) from spotify;
select max(duration_min) from spotify;

select count(*) from spotify where duration_min = 0;
delete from spotify where duration_min = 0
