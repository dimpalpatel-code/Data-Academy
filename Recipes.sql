use Recipes;
create table Recipe_Details (
recipe_category varchar (20) not null,
recipe_title varchar (50) not null,
recipe_description varchar (100),
website_address varchar (150),
preparation_time time,
cooking_time time,
number_of_Servings int,
ingredient1 varchar (100),
ingredient2 varchar (100),
ingredient3 varchar (100),
ingredient4 varchar (100),
ingredient5 varchar (100),
ingredient6 varchar (100),
ingredient7 varchar (100),
ingredient8 varchar (100),
ingredient9 varchar (100),
ingredient10 varchar (100),
ingredient11 varchar (100),
ingredient12 varchar (100),
ingredient13 varchar (100),
ingredient14 varchar (100),
ingredient15 varchar (100),
ingredient16 varchar (100),
ingredient17 varchar (100),
ingredient18 varchar (100),
ingredient19 varchar (100),
ingredient20 varchar (100),
quantity1 varchar (20),
quantity2 varchar (20),
quantity3 varchar (20),
quantity4 varchar (20),
quantity5 varchar (20),
quantity6 varchar (20),
quantity7 varchar (20),
quantity8 varchar (20),
quantity9 varchar (20),
quantity10 varchar (20),
quantity11 varchar (20),
quantity12 varchar (20),
quantity13 varchar (20),
quantity14 varchar (20),
quantity15 varchar (20),
quantity16 varchar (20),
quantity17 varchar (20),
quantity18 varchar (20),
quantity19 varchar (20),
quantity20 varchar (20),
instructions1 text,
instructions2 text,
instructions3 text,
instructions4 text,
instructions5 text,
instructions6 text,
instructions7 text,
instructions8 text,
instructions9 text,
instructions10 text,
instructions11 text,
instructions12 text,
instructions13 text,
instructions14 text,
instructions15 text,
instructions16 text,
instructions17 text,
instructions18 text,
instructions19 text,
instructions20 text,
notes1 text,
notes2 text,
notes3 text,
notes4 text,
notes5 text,
primary key (recipe_category)
);

drop table recipe_details;

explain Recipe_Details;