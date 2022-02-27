create database Library;

show databases;
use library;

create table books(
	bookId int auto_increment primary key,
    bookTitle varchar(250) not null,
    author varchar(75) not null,
    yearPublish int(4),
    genre int
    );
    
    explain books;
    
     create table Genre(
		genreId int auto_increment primary key,
        genreName varchar(35)
    );
    
explain genre;

insert into genre(genreName)
		values("Baking"),
              ("Novel"),
              ("Art Related"),
              ("Childrens"),
              ("Interior Design"),
              ("Cake Decorating"),
              ("Periodical");
              
select * from genre;

insert into books (bookTitle, author, yearPublish, genre)
    values("The Kite Runner", "Khaled Hosseini", 2003, 2),
		  ("Hobby Cakes", "Lindy Smith", 2000, 6),
          ("The Rhinemann Exchange", "Robert Ludlum", 1975, 2),
          ("Cakes to inspire and Desire", "Lindy Smith", 2007, 6),
          ("The Watercolour artists bible", "Marilyn Scott", 2005, 3),
          ("Caribbean On Canvas", "Jonathan Guy-Gladding", 2014, 3),
          ("Cakes To Dream On", "Collette Peters", 2004, 6),
          ("colour Harmony", "Bride M Whelan", 1994, 3),
          ("Organized Living", "Dawna Walter", 1997, 5),
          ("Percy Park Keeper - The Foxs Hiccup", "Nick Butterworth", 1995, 4),
          ("Choosing Colours", "Kevin Mccloud", 2003, 5),
          ("Baking Handbook", "Martha Stewart", 2005, 1);
          
 select * from books;          

update books 
	set author = "Dawna Walter and Helen Chislett"
    where bookId = 9;
    
select * from books 
	where bookId = 9;
    
    

delete from books
	where bookId = 4;
    
select * from books;

select books.bookTitle, books.author, books.yearPublish, genre.genreName
from books
left join genre
on books.genre = genre.genreId;    
    
select bookTitle from books;

select books.bookTitle, books.author, genre.genreName
from books
left join genre
on books.genre = genre.genreId;

select * from books
order by author asc;

select * from books
where yearPublish < 2000;    