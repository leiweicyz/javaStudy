
create table study_member(
    user_id int auto_increment not null  primary key,
    username varchar(20) not null,
    password varchar(100) not null,
    read_name varchar(20)
);

create table study_product(
    p_id int auto_increment not null primary key,
    product_name nvarchar(100),
    price decimal(18,2),
    product_img nvarchar(100),
    intro nvarchar(2000),
    stock int,
    product_status int
);

create table study_order(
    order_id int auto_increment not null primary key,
    order_number varchar(32),
    user_id int,
    product_count int,
    total_price decimal(18,2),
    create_time datetime,
    pay_time datetime
);

create table study_order_item(
     id int auto_increment not null primary key,
     product_id int,
     order_id int,
     product_count int,
     unit_price decimal(18,2),
     total_price decimal(18,2),
     member_id int
)