SELECT * FROM app_user au 
SELECT * FROM category c 
SELECT * FROM flashcard f 
SELECT * FROM study_set ss 
SELECT * FROM study_set_card ssc 
SELECT * FROM user_role ur 

--Write a query that will find all user info related to users with a role of BASIC_USER
SELECT 
	au.username 
	,au."password" 
	,au.first_name 
	,au.last_name 
	,user_role.name
	,study_set."name" 
	,flashcard.answer 
	,flashcard.question 
	,category."name" 
FROM app_user au 
LEFT JOIN user_role ON au.role_id = user_role.role_id 
LEFT JOIN  study_set ON au.user_id = study_set.owner_id 
LEFT JOIN study_set_card ON study_set.study_set_id = study_set_card.study_set_id 
LEFT JOIN flashcard ON study_set_card.flashcard_id = flashcard.flashcard_id 
LEFT JOIN category ON flashcard.flashcard_id = category.category_id 
WHERE user_role."name" = 'BASIC_USER'

--Write a statement that will insert a new user into the APP_USER table with a role of PREMIUM_USER
INSERT INTO app_user (username, PASSWORD, first_name, last_name ,role_id )
VALUES ('skynetbot','theEndIsNear666','raddix','king',4)

--Write a query that will find all user and study set info related to the user with an id of 4
SELECT 
	au.username 
	,au."password" 
	,au.first_name 
	,au.last_name 
	,user_role.name
	,study_set."name" 
	,flashcard.answer 
	,flashcard.question 
	,category."name" 
FROM app_user au 
LEFT JOIN user_role ON au.role_id = user_role.role_id 
LEFT JOIN  study_set ON au.user_id = study_set.owner_id 
LEFT JOIN study_set_card ON study_set.study_set_id = study_set_card.study_set_id 
LEFT JOIN flashcard ON study_set_card.flashcard_id = flashcard.flashcard_id 
LEFT JOIN category ON flashcard.flashcard_id = category.category_id 
WHERE au.user_id = 4

--Write a query that will obtain the owner’s username and role name, as well 
--as the category name, questions, and answers of flashcard contained within 
--the study set with an id of 1
SELECT 
	au.username 
	,ur."name" 
	,c."name" 
	,f.question 
	,f.answer 
FROM study_set ss 
JOIN app_user au ON ss.owner_id = au.user_id 
JOIN user_role ur ON au.role_id = ur.role_id 
LEFT JOIN study_set_card ssc ON ss.study_set_id = ssc.study_set_id 
LEFT JOIN flashcard f ON ssc.flashcard_id = f.flashcard_id 
LEFT JOIN category c ON f.flashcard_id = c.category_id 
WHERE ss.study_set_id = 1


