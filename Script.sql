insert into courses  
(
    id,
    title, 
    description, 
    "level", 
    teacher
) VALUES (
    'bae683c2-b6d6-41b7-a891-e910182fd26a',
    'React.js',
    'Curso de frontend con la libreria de React',
    'B',
    'Bejanmin'
),(
    '695e1a9c-12e4-492b-b5b3-06898500b821',
    'Node.js',
    'Curso de backend con la libreria de Node.js',
    'I',
    'Sahid'
);

insert into users 
(
    id,
    name, 
    email, 
    "password", 
    age 
    
) VALUES (
    'c2ce9bdc-0bc7-4d5e-9ccd-aa7086d62f9b',
    'Jesus',
    'bionelectronic@gmail.com',
    'root',
    21
),(
    '030dba17-2109-4e83-bd7f-1ae2748da8c2',
  	'Luis',
    'tygreluis@gmail.com',
    'root',
    33
);

insert into courses_videos  
(
    id,
    title , 
    url , 
    course_video_id
    
) VALUES (
    'a877ec81-641e-4185-a28d-a8123de8d35b',
    'Props',
    'www.all.com',
	'bae683c2-b6d6-41b7-a891-e910182fd26a'
),(
    'ee6dc67d-80e0-443c-bc42-bc4b3f317211',
  	'Express',
  	'www.not.com',
	'bae683c2-b6d6-41b7-a891-e910182fd26a'
);

insert into categories  
(
    id,
    "name"
  
    
) VALUES (
    'c0cc956b-1b2c-4b7e-add1-20b565e24c9c',
    'frontend'
),(
    'f0364ac1-5831-4167-894e-966b4bb73c93',
  	'backend'

);

insert into course_categories  
(
    id,
    courses_id,
    categories_id
  
    
) VALUES (
    '6d748631-64f5-48a8-bf98-3071bde65758',
    'bae683c2-b6d6-41b7-a891-e910182fd26a',
    'c0cc956b-1b2c-4b7e-add1-20b565e24c9c'
),(
    '63eed1c9-20bb-4745-b808-d9253556897f',
  	'695e1a9c-12e4-492b-b5b3-06898500b821',
  	'f0364ac1-5831-4167-894e-966b4bb73c93'

);

insert into user_courses  
(
    id,
    user_id ,
    courses_id,
    quantity 
  
    
) VALUES (
    'd161c1d0-174a-40a3-9ac2-9d81e278c392',
    'c2ce9bdc-0bc7-4d5e-9ccd-aa7086d62f9b',
    'bae683c2-b6d6-41b7-a891-e910182fd26a',
    1
),(
    'd9da2c6e-7f7f-4c9d-b528-b33f824cfff7',
  	'030dba17-2109-4e83-bd7f-1ae2748da8c2',
  	'695e1a9c-12e4-492b-b5b3-06898500b821',
  	1

);
