create schema db0;

create table study_member0(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member2(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member4(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member6(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member8(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member10(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member12(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member14(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member16(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member18(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member20(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member22(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member24(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member26(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member28(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member30(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));

create table study_product0(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product1(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product2(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product3(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product4(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product5(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product6(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product7(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product8(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product9(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product10(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product11(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product12(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product13(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product14(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product15(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);

create table study_order0(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order1(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order2(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order3(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order4(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order5(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order6(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order7(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order8(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order9(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order10(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order11(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order12(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order13(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order14(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order15(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);

create table study_order_item0(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item1(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item2(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item3(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item4(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item5(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item6(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item7(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item8(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item9(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item10(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item11(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item12(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item13(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item14(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item15(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);


create schema db1;

create table study_member1(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member3(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member5(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member7(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member9(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member11(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member13(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member15(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member17(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member19(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member21(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member23(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member25(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member27(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member29(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));
create table study_member31(user_id int auto_increment not null  primary key,username varchar(20) not null,password varchar(100) not null,read_name varchar(20));

create table study_product0(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product1(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product2(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product3(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product4(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product5(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product6(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product7(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product8(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product9(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product10(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product11(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product12(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product13(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product14(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);
create table study_product15(p_id int auto_increment not null primary key,product_name nvarchar(100),price decimal(18,2),product_img nvarchar(100),intro nvarchar(2000),stock int,product_status int);

create table study_order0(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order1(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order2(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order3(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order4(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order5(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order6(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order7(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order8(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order9(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order10(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order11(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order12(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order13(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order14(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);
create table study_order15(order_id int auto_increment not null primary key,order_number varchar(32),user_id int,product_count int,total_price decimal(18,2),create_time datetime,pay_time datetime);

create table study_order_item0(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item1(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item2(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item3(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item4(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item5(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item6(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item7(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item8(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item9(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item10(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item11(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item12(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item13(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item14(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);
create table study_order_item15(id int auto_increment not null primary key,product_id int,order_id int,product_count int,unit_price decimal(18,2),total_price decimal(18,2),member_id int);