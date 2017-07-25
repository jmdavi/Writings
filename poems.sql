/*Top row will always be: 'You' and 'Now'*/
SELECT Name, MAX(Date)
AS Last_Thought_Of FROM My_Heart 
ORDER BY Importance DESC;

/*Maintenance query for your relationships, run regularly*/
SELECT Name,
'I love your'||LIST(DISTINCT Qualities, ' and ')
AS Proof_You_Are_Awesome
FROM EVERYTHING_I_WITNESS
WHERE Self_Recognition_Flag IS NULL;

/*What we share*/
SELECT DISTINCT *
FROM You INNER JOIN Me
ON You.Experiences = Me.Experiences;

/*Proposal*/
CREATE TABLE Will_You_Marry_Me AS
(
SELECT You.Qualities AS 'What You Give Me'
, Me.Qualities AS 'What You Get From Me'
FROM You JOIN Me
ON You.Qualities = Me.Wishlist
OR You.Wishlist = Me.Qualities
);

/*Error after meeting you: ORA-01401*/
ALTER TABLE My_Heart
MODIFY Happiness Number(MAX(Happiness)*2,1);

/*Never a bad anniversary yet*/
SELECT Year,
CASE WHEN My_love > Sum(Happiness) + Sum(Heartbreak) THEN 'Y' END AS 'Life Well Lived'
GROUP BY Year
