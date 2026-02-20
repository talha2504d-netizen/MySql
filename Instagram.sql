CREATE DATABASE Instagram;

Use Instagram;

Create Table User (
Email Varchar (40),
Name Varchar (36),
Date_of_Birth Date,
Phone_Number Int (20)
);

Create Table Profile (
Bio Varchar (18),
Pic Varchar (50),
User_Id Int (27)
);

Create Table Posts (
Post_text Text (19),
Images Varchar (15),
Captions Text (60),
Post_Id Char (45),
User_Id Varchar (56)
);

Create Table Posts Comments (

