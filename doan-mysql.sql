create database Library;

create table Categories(
category_id int primary key auto_increment,
category_name text
);

create table Authors(
author_id int primary key auto_increment,
author_name text
);

create table Books(
book_id int primary key auto_increment,
book_title text,
descreption text
);

create table Users(
user_id int primary key auto_increment,
user_username text unique,
user_password text
);

create table Admins(
admin_id int primary key auto_increment,
admin_username text unique,
admin_password text
);

create table Borrowing(
borrowing_id int primary key auto_increment,
user_id int,
foreign key (user_id) references Users(user_id),
book_id int,
foreign key (book_id) references Books(book_id),
borrow_date date,
return_date date
);

create table BookHaveRed(
red_book_id int primary key auto_increment,
user_id int,
foreign key (user_id) references Users(user_id),
borrowing_id int,
foreign key (borrowing_id) references Borrowing(borrowing_id)
);

create table BookInfo(
book_info int primary key auto_increment,
book_id int,
foreign key (book_id) references Books(book_id),
category_id int ,
foreign key (category_id) references Categories(category_id),
author_id int,
foreign key (author_id) references Authors(author_id),
page_number int,
release_year int,
status text
);

create table UserInfo(
user_info_id int primary key auto_increment,
user_id int,
foreign key (user_id) references Users(user_id),
borrowing_id int,
foreign key (borrowing_id) references Borrowing(borrowing_id),
red_book_id int,
foreign key (red_book_id) references BookHaveRed(red_book_id)
);


insert into Categories(category_name) values ('Action');
insert into Categories(category_name) values ('Drama');
insert into Categories(category_name) values ('Romance');
insert into Categories(category_name) values ('War');
insert into Categories(category_name) values ('Crime');
insert into Categories(category_name) values ('Comedy');
insert into Categories(category_name) values ('Horror');
insert into Categories(category_name) values ('Mystery');
select*from Categories;

insert into Authors(author_name) values('Shawn Calvey');
insert into Authors(author_name) values('Daisi Richold');
insert into Authors(author_name) values('Chauncey Antrobus');
insert into Authors(author_name) values('Marina Barnicott');
insert into Authors(author_name) values('Casar Danes');
insert into Authors(author_name) values('Trix Drennan');
insert into Authors(author_name) values('Beck Sneaker');
insert into Authors(author_name) values('Charla Durtnel');
select*from Authors;

insert into Books(book_title,descreption) values('Operator 13','dsfaeewfasdc');
insert into Books(book_title,descreption) values('The African','dsfaeewfasdc');
insert into Books(book_title,descreption) values('House on Sorority Row','dsfaeewfasdc');
insert into Books(book_title,descreption) values('The Bone Snatcher','dsfaeewfasdc');
insert into Books(book_title,descreption) values('Mummy','dsfaeewfasdc');
insert into Books(book_title,descreption) values('Hope Springs','dsfaeewfasdc');
insert into Books(book_title,descreption) values('Masseurs and a Woman, The (Anma to onna)','dsfaeewfasdc');
select*from Books;

insert into Users(user_username,user_password) values('dsfsdf','123');
insert into Users(user_username,user_password) values('dsdfcsdsfsdf','123');
insert into Users(user_username,user_password) values('dsacw','123');
insert into Users(user_username,user_password) values('dsc','123');
insert into Users(user_username,user_password) values('sd','123');
insert into Users(user_username,user_password) values('dsfqwsdf','123');
insert into Users(user_username,user_password) values('few','123');
insert into Users(user_username,user_password) values('qwd','123');
select*from Users;

insert into Admins(admin_username,admin_password) values('dsfaef','123');
insert into Admins(admin_username,admin_password) values('dentm','123');
insert into Admins(admin_username,admin_password) values('bser','123');
select*from Admins;

insert into Borrowing(user_id,book_id,borrow_date,return_date) values(1,1,'2022-01-01','2023-02-01');
insert into Borrowing(user_id,book_id,borrow_date,return_date) values(3,2,'2023-02-01','2023-03-03');
insert into Borrowing(user_id,book_id,borrow_date,return_date) values(5,3,'2023-01-01','2023-02-01');
insert into Borrowing(user_id,book_id,borrow_date,return_date) values(2,7,'2023-01-01','2023-02-01');
insert into Borrowing(user_id,book_id,borrow_date,return_date) values(6,6,'2023-05-01','2023-12-01');
insert into Borrowing(user_id,book_id,borrow_date,return_date) values(4,5,'2023-01-04','2023-02-01');
insert into Borrowing(user_id,book_id,borrow_date,return_date) values(7,4,'2023-01-12','2023-02-01');
insert into Borrowing(user_id,book_id,borrow_date,return_date) values(1,7,'2022-06-01','2023-08-01');
select*from Borrowing;

insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(1,4,1,3289,2020,'A');
insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(2,2,3,3289,2020,'A');
insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(3,5,5,3289,2020,'A');
insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(4,1,2,3289,2020,'A');
insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(5,3,7,3289,2020,'A');
insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(6,6,1,3289,2020,'A');
insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(7,8,1,3289,2020,'A');
insert into BookInfo(book_id,category_id,author_id,page_number,release_year,status) values(7,2,1,3289,2020,'A');
select*from BookInfo;

insert into BookHaveRed(user_id,borrowing_id) values(1,1);
insert into BookHaveRed(user_id,borrowing_id) values(3,2);
insert into BookHaveRed(user_id,borrowing_id) values(5,3);
insert into BookHaveRed(user_id,borrowing_id) values(2,4);
insert into BookHaveRed(user_id,borrowing_id) values(6,5);
insert into BookHaveRed(user_id,borrowing_id) values(4,6);
insert into BookHaveRed(user_id,borrowing_id) values(7,7);
insert into BookHaveRed(user_id,borrowing_id) values(1,8);
select*from BookHaveRed;

insert into UserInfo(user_id,borrowing_id,red_book_id) values(1,1,1);
insert into UserInfo(user_id,borrowing_id,red_book_id) values(3,2,2);
insert into UserInfo(user_id,borrowing_id,red_book_id) values(5,3,3);
insert into UserInfo(user_id,borrowing_id,red_book_id) values(2,4,4);
insert into UserInfo(user_id,borrowing_id,red_book_id) values(6,5,5);
insert into UserInfo(user_id,borrowing_id,red_book_id) values(4,6,6);
insert into UserInfo(user_id,borrowing_id,red_book_id) values(7,7,7);
insert into UserInfo(user_id,borrowing_id,red_book_id) values(1,8,8);
select*from UserInfo;
-- tim sach theo ten tac gia
select*from Authors
INNER JOIN BookInfo  ON Authors.author_id= BookInfo .author_id
INNER JOIN Books ON BookInfo.book_id = Books.book_id
where Authors.author_name like '%a%';
-- tim sach theo ten sach
select*from Books
INNER JOIN BookInfo  ON Books.book_id= BookInfo.book_id
INNER JOIN Authors ON BookInfo.author_id = Authors.author_id
where Books.book_title like '%a%';
-- tim sach theo the loai
select*from Categories
INNER JOIN BookInfo  ON Categories.category_id= BookInfo.category_id
INNER JOIN Books ON BookInfo.book_id = Books.book_id
where Categories.category_name like '%a%';
-- the loai co nhieu sach nhat
select category_id,count(book_id) as quantity from BookInfo
group by category_id
order by count(book_id) desc
limit 1;
-- nguoi doc sach nhieu nhat
select user_id,count(user_id) as quantity from BookHaveRed
group by user_id
order by count(user_id) desc
limit 1;
-- sach duoc doc nhieu nhat
select Borrowing.book_id,count(Borrowing.book_id) as quantity from Books
INNER JOIN Borrowing  ON Books.book_id= Borrowing.book_id
INNER JOIN BookHaveRed ON Borrowing.borrowing_id = BookHaveRed.borrowing_id
group by Borrowing.book_id
order by count(book_id) desc
limit 1;
-- so luong sach cua moi the loai
select category_id,count(book_id) as quantity from BookInfo
group by category_id;
