CREATE DATABASE Library ;

USE Library ; 


CREATE TABLE library_customers (
   customer_id int primary key,
   username varchar(50) primary key,
   customer_name varchar(50),
   date_of_birth date,
   address  varchar(250),
   phone_no int ,
   customer_password varchar(50)
   ); 
  
  INSERT INTO library_customers VALUES 
  (1,"abcd","Ava",19891214,"32, Old Butchers Street, 11 Colombo","07155518","123wx"),
  (2,"efgh","Noah",19900408,"135, Old Moor Street, 12 Colombo","07255565","456yz"),
  (3,"ijkl","Olivia",19910923,"150, Stace Road, 14 Colombo","07055555","789ab"),
  (4,"mnop","Emma",19911209,"222, Keyzer Street, 11 Colombo","07655568","987cd"),
  (5,"qrst","Liam",19930718,"438, Deans Road, 10 Colombo","07555520","654ef"),
  (6,"uvxy","Lucas",19900515,"255, Main Street, 11 Colombo","07155578","321jk");
  
  SELECT * FROM library_customers;
  
  CREATE TABLE Library_Book (
      ISBN varchar(250),
      book_id int primary key,
      first_author varchar(250),
      title varchar(250),
      location varchar(250),
      price int,
      book_status varchar(5)
      );

INSERT INTO Library_Book VALUES 
("9780141199610",1,"Leo Tolstoy","Anna Karenina","2nd floor (142.780973 C826e)",3000,"1"),
("9780141441146",2,"Charlotte Bronte","Jane Eyre","1st floor (851.963472 S054t)",500,"1"),
("9780141441146",3,"Charlotte Bronte","Jane Eyre","1st floor (952.408631 H703t)",500,"2"),
("9780230633193",4,"Charles Dickens","Great Expectations","2nd floor (806.549821 G018e)",100,"1"),
("9780141441146",5,"William Shakespeare","Hamlet","ground floor(PS3608.O832 K58 2003)",50,"2"),
("9780141441146",6,"William Shakespeare","Hamlet","ground floor(PS4535.B593 F46 8900)",50,"2");

SELECT * FROM Library_Book ;

CREATE TABLE Library_Branches (
      branch_name varchar(250) primary key,
      address varchar(500),
      phone_no varchar(50)
      );
      
INSERT INTO Library_Branches VALUES
("Codex Library","149, 4th Cross Street, 11 Colombo","( 011) 2431206"),
("Central Park Library","219, Panchikawatte Road, 10 Colombo","( 011) 2421554"),
("Reader's Garden Library","28,Jethawana Road, 14 Colombo","( 011) 2451975"),
("Legacy Library","24, Deal Place, 03 Colombo","( 011) 2324974"),
("Prime Library","323 1/1, Dam Street, 12 Colombo","( 011) 2439290");

SELECT * FROM Library_Branches ; 


CREATE TABLE Library_Employees (
    employee_id int primary key ,
    job_start_date date ,
    monthly_salary varchar(50)
);

INSERT INTO Library_Employees VALUES 
(1,20180123,"43,400"),
(2,20181210,"43,400"),
(3,20190304,"32,500"),
(4,20190415,"32,500"),
(5,20210531,"28,600");

SELECT * FROM Library_Employees ;


CREATE TABLE Library_Card (
    customer_id int,
	customer_name varchar(50),
	date_of_birth date,
	address varchar(500),
	phone_no varchar(50),	
    book_id	int,
    fines varchar(50) 
  );
  
INSERT INTO Library_Card VALUES 
 (1,"Ava",19891214,"32, Old Butchers Street, 11 Colombo","07155518",3,"500"),
 (2,"Noah",19900408,"135, Old Moor Street, 12 Colombo", "07255565",4,"  "),
 (3,"Olivia","19910923","150, Stace Road, 14 Colombo", "07055555",NULL,"  "),		
 (4,"Emma","19911209","222, Keyzer Street, 11 Colombo","07655568",5,"50"),
 (5,"Liam","19930718","438, Deans Road, 10 Colombo","07555520",NULL,"  "),		
 (6,"Lucas","19900515","255, Main Street, 11 Colombo","07155578",6,"50");


SELECT * FROM Library_Card ;

USE Library ;

SELECT title , book_status FROM Library_Books library_books
WHERE title='Great Expectations';

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Library_Books WHERE title='Hamlet' ;

SELECT * FROM Library_Books ;

UPDATE Library_Books
SET book_status='2'
WHERE title='Great Expectations' ;

SELECT * FROM Library_Books
WHERE title='Great Expectations' ;

SELECT * FROM Library_Card
WHERE customer_id='4' ;

SELECT book_id , title , book_status FROM Library_Books
WHERE title='Great Expectations';

SELECT customer_id , fines FROM Library_Card
WHERE customer_id='1';

SELECT Library_Book.book_id, Library_Card.customer_name ,Library_Book.title, Library_Customers.username FROM Library_Book 
INNER JOIN Library_Card
ON Library_Book.book_id=Library_Card.book_id
INNER JOIN Library_Customers
ON Library_Card.customer_name=Library_Customers.customer_name
WHERE Library_Card.fines>20 AND Library_Book.title="Jane Eyre";

SELECT Library_Book.book_id, Library_Card. fines ,Library_Book.title , COUNT(Library_Book.book_id)
FROM Library_Book 
INNER JOIN Library_Card
ON Library_Book.book_id=Library_Card.book_id;









      
      
      
      
  
  


  