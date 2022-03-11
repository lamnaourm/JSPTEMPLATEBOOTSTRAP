create database if not exists dbproduitsjsp;

use dbproduitsjsp;

create table famille(id_famille int auto_increment primary key,
name varchar(30));

insert into famille values (null, 'Epicerie');
insert into famille values (null, 'Liquide');
insert into famille values (null, 'Patisserie');
insert into famille values (null, 'Legumes');
insert into famille values (null, 'Electroniques');

SELECT * FROM famille f;

create table produit(code int auto_increment primary key,
designation varchar(30),
id_famille int,
prix_achat double,
prix_vente double
);

alter table produit
add constraint fk_fam_prod foreign key (id_famille) references famille(id_famille);

insert into PRODUIT values (null,'Cuisinière',5,1200.80,1500.70);
insert into PRODUIT values (null,'Four micro-ondes',5,550.50,760.00);
insert into PRODUIT values (null,'Four à vapeur',5,2300.80,3000.70);
insert into PRODUIT values (null,'Cuisinière à gaz',5,850.50,1260.00);
insert into PRODUIT values (null,'Lave-vaisselle',5,2460.80,2800.00);
insert into PRODUIT values (null,'Sèche-linge',5,350.50,660.99);
insert into PRODUIT values (null,'Raisin',4,22.80,29.70);
insert into PRODUIT values (null,'Cerises',4,30.99,35.00);
insert into PRODUIT values (null,'Céleri branche',4,32.40,35.70);
insert into PRODUIT values (null,'Pomme',4,15.50,19.00);
insert into PRODUIT values (null,'Orange',4,10.80,13.00);
insert into PRODUIT values (null,'Abricot',4,30.50,33.00);
insert into PRODUIT values (null,'Tomates',4,7.50,10.00);
insert into PRODUIT values (null,'Carottes',4,2.80,4.00);
insert into PRODUIT values (null,'Pois',4,10.50,13.00);
insert into PRODUIT values (null,'Sel',1,5.50,7.00);
insert into PRODUIT values (null,'Poivres',1,6.50,8.50);
insert into PRODUIT values (null,'Epices',1,2.80,4.00);
insert into PRODUIT values (null,'Vanille',1,1.50,3.00);
insert into PRODUIT values (null,'Huiles',1,17.50,20.00);


SELECT * FROM produit p;
