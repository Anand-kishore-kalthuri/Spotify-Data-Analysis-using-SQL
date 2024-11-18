# Spotify-Data-Analysis-using-SQL
Spotify Data Analysis Project
This project focuses on exploring, cleaning, and analyzing a Spotify dataset using SQL. 
The analysis uncovers insights into tracks, artists, albums, and user interactions such
as streams, likes, and views. The project demonstrates various SQL techniques including
aggregations, window functions, and common table expressions (CTEs) to solve real-world
business problems.
________________________________________
Table of Contents
1.	Data Structure
2.	Exploratory Data Analysis (EDA)
3.	Business Problems Analyzed
4.	SQL Techniques Used
5.	How to Run the Project
________________________________________
Data Structure
The dataset is stored in a SQL table named spotify. Below is the structure of the table:
Column Name	Data Type	Description
artist	VARCHAR(255)	Name of the artist.
track	VARCHAR(255)	Name of the track.
album	VARCHAR(255)	Name of the album.
album_type	VARCHAR(50)	Type of album (e.g., single, album).
danceability	FLOAT	Measure of how suitable a track is for dancing (0.0 to 1.0).
energy	FLOAT	Measure of intensity and activity of a track (0.0 to 1.0).
loudness	FLOAT	Loudness of the track in decibels (dB).
speechiness	FLOAT	Presence of spoken words in the track (0.0 to 1.0).
acousticness	FLOAT	Confidence measure of the track being acoustic (0.0 to 1.0).
instrumentalness	FLOAT	Probability of the track being instrumental (0.0 to 1.0).
liveness	FLOAT	Measure of the likelihood of the track being performed live (0.0 to 1.0).
valence	FLOAT	Measure of musical positivity (0.0 to 1.0).
tempo	FLOAT	Estimated tempo of the track in beats per minute (BPM).
duration_min	FLOAT	Duration of the track in minutes.
title	VARCHAR(255)	Title of the track's associated content.
channel	VARCHAR(255)	Channel name where the track is featured.
views	FLOAT	Total views of the track's content.
likes	BIGINT	Total likes received by the track's content.
comments	BIGINT	Total comments received by the track's content.
licensed	BOOLEAN	Indicates whether the track is licensed (TRUE/FALSE).
official_video	BOOLEAN	Indicates whether the track has an official video (TRUE/FALSE).
stream	BIGINT	Total streams of the track.
energy_liveness	FLOAT	Computed value: energy divided by liveness.
most_played_on	VARCHAR(50)	Platform where the track is most played (e.g., Spotify, YouTube).
________________________________________
Exploratory Data Analysis (EDA)
Basic EDA was performed to understand the dataset and clean any anomalies:
1.	Counted total records and unique values for key fields like artist, track, album, and channel.
2.	Calculated minimum and maximum values for energy and duration_min.
3.	Identified and removed records with duration_min = 0.
________________________________________
Business Problems Analyzed
The following business problems were analyzed using SQL:
1.	Track Popularity: Retrieved tracks with more than 1 billion streams.
2.	Album Insights: Listed all albums along with their respective artists.
3.	Engagement Metrics: Calculated the total number of comments for licensed tracks.
4.	Album Type Analysis: Identified tracks belonging to the album type "single."
5.	Artist Productivity: Counted the total number of tracks by each artist.
6.	Danceability Insights: Calculated the average danceability of tracks in each album.
7.	Energy Ranking: Found the top 5 tracks with the highest energy values.
8.	Official Video Metrics: Listed views and likes for tracks with official videos.
9.	Album Performance: Calculated total views of tracks associated with each album.
10.	Streaming Platforms: Retrieved tracks streamed more on Spotify than YouTube.
11.	Top Tracks by Artist: Used window functions to find the top 3 most-viewed tracks for each artist.
12.	Liveness Analysis: Identified tracks where the liveness score is above average.
13.	Energy Range Analysis: Calculated the difference between highest and lowest energy values for each album using a WITH clause.
14.	Energy-Liveness Ratio: Found tracks where the energy-to-liveness ratio exceeds 1.2.
15.	Cumulative Likes: Calculated cumulative likes for tracks ordered by views using window functions.



__________________________________________________________________________________________
SQL Techniques Used
1.	Basic Queries: SELECT, WHERE, DISTINCT, GROUP BY, ORDER BY, and LIMIT.
2.	Aggregations: COUNT, SUM, AVG, MIN, and MAX.
3.	Window Functions: DENSE_RANK, SUM with OVER clause for cumulative sums and ranking.
4.	Common Table Expressions (CTEs): Used for intermediate calculations like energy range analysis.
5.	Subqueries: Utilized for comparative calculations such as finding above-average liveness scores.
_______________________________________________________________________________________________________
How to Run the Project
1.	Load the dataset into your SQL environment.
2.	Execute the CREATE TABLE query to define the table schema.
3.	Insert the data into the Spotify table.
4.	Run the queries in the provided order to replicate the analysis and gain insights.

