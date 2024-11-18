--Data Analysis Business problems
-----------------------------------------

--1.Retrieve the names of all tracks that have more than 1 billion streams.

select * from spotify where stream > 1000000000;

--2.List all albums along with their respective artists.

select distinct album, artist from spotify;

--3.Get the total number of comments for tracks where licensed = TRUE.

select sum(comments) from spotify where licensed = 'true'

--4.Find all tracks that belong to the album type single.

select * from spotify where album_type = 'single'

--5.Count the total number of tracks by each artist.

select artist, count(*) from spotify group by 1 order by 2 desc;

--6.calculate the average danceability of tracks in each album.

select
album,
avg(danceability)
from spotify
group by 1
order by 2 desc;

--7.Find the top 5 tracks with the highest energy values.

select
track,
energy
from spotify
order by 2 desc
limit 5;

--8.List all tracks along with their views and likes where official_video = TRUE.

select 
track,
sum(views) as total_views,
sum(likes) as total_likes
from spotify
where official_video = 'true'
group by 1
order by 2 desc;

--9.For each album, calculate the total views of all associated tracks.

select
distinct album,
sum(views) as total_views
from spotify
group by 1
order by 2 desc;

--10.Retrieve the track names that have been streamed on Spotify more than YouTube.

select 
track
from spotify
where most_played_on = 'Spotify';

--11.Find the top 3 most—viewed tracks for each artist using window functions.

with ranking_artist
as
(
select
artist,
track,
sum(views),
dense_rank() over(partition by artist order by sum(views) desc) as rank
from spotify
group by 1, 2
order by 1, 3 desc
)
select * from ranking_artist
where rank <= 3;

--12.Write a query to find tracks where the liveness score is above the average.

select
track,
artist,
liveness
from spotify
where liveness > (select avg(liveness) from spotify);

--13.Use a WITH clause to calculate the difference between the highest and lowest energy values for tracks in each album.

with cte
as
(
select
album,
max(energy) as highest_energy,
min(energy) as lowest_energy
from spotify
group by 1
)
select
album,
(highest_energy - lowest_energy) as difference
from cte
order by 2 desc;

--14.Find tracks where the energy—to—liveness ratio is greater than 1.2.

select 
track,
energy / liveness AS energy_to_liveness_ratio
from Spotify 
where energy / liveness > 1.2;

--15.Calculate the cumulative sum of likes for tracks ordered by the number of views, using window functions.

select 
track,
views,
likes,
sum(likes) over(order by views desc) AS cumulative_likes
from spotify;

