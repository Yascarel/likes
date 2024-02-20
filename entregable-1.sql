create table users (
  id serial primary  key,
  firts_name varchar (50),
  last_name varchar (50),
  email varchar (100)
);

insert into users( firts_name, last_name, email)values 
('carlos', 'Diaz', 'carlos12@gmail.com' ),
('pedro', 'mejia', 'pedro45@gmail.com'),
('ruben', 'Nuñez', 'ruben04@gmail.com'),
('maria', 'Moya', 'mariam@gmail.com'),
('Alberto','Facenda','albertof@gmail.com');

create table post (
  id serial primary key,
  creator_id int references users(id),
  title varchar (250),
  texto text 
);

insert into post ( creator_id, title, texto)values
('2','primer post','Lorem Ipsum is simply dummy text of the printing and typesetting industry. L'),
('3','segundo post','Lorem Ipsum is simply dummy text of the printing and typesetting industry. L'),
('1','tercer post','Lorem Ipsum is simply dummy text of the printing and typesetting industry. L'),
('3','cuarto post','Lorem Ipsum is simply dummy text of the printing and typesetting industry. L'),
('2','quinto post','Lorem Ipsum is simply dummy text of the printing and typesetting industry. L');

create table likes (
  id serial primary key,
  user_id int references users(id),
  post_id int references post(id)
);

insert into likes (user_id, post_id )values
('2','1'),
('3','3'),
('1','2'),
('3','5'),
('2','4');

select * from users;

select * from post;

select * from likes;

