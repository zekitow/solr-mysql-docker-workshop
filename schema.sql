-- creates the category table
create table `categories` (
  `id`         int not null auto_increment,
  `name`       varchar(255) default null,
  `created_at` timestamp default current_timestamp,
  `updated_at` timestamp default now() on update now(),
  primary key (`id`)
);

-- creates the category content
insert into categories(id, name) values (1, 'India Pale Ale');
insert into categories(id, name) values (2, 'Imperial India Pale Ale');
insert into categories(id, name) values (3, 'Pale Ale');
insert into categories(id, name) values (4, 'Russian Imperial Stout');
insert into categories(id, name) values (5, 'Porter');
insert into categories(id, name) values (6, 'Imperial Porter');
insert into categories(id, name) values (7, 'Rauchbier');

-- creates the product table
create table `products` (
  `id`          int not null auto_increment,
  `category_id` int not null,
  `name`        varchar(255) default null,
  `description` varchar(255) default null,
  `price` float default null,
  `created_at` timestamp default current_timestamp,
  `updated_at` timestamp default now() on update now(),
  primary key (`id`),
  foreign key (category_id) references categories(id)
);

-- india pale ale
insert into products(category_id, name, description, price) values (1, 'Colorado Indica','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 15.90);
insert into products(category_id, name, description, price) values (1, 'Ballast Point Sculpin','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 25.90);

-- imperial india pale ale
insert into products(category_id, name, description, price) values (2, 'BrewDog Hardcore IPA','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 35.90);
insert into products(category_id, name, description, price) values (2, 'BrewDog Anarchist / Alchemist','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 90.90);

-- pale ale
insert into products(category_id, name, description, price) values (3, 'Coopers Original Pale Ale','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 16.90);
insert into products(category_id, name, description, price) values (3, 'Fat Yak Original Pale Ale','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 16.90);

-- russian imperial stout
insert into products(category_id, name, description, price) values (4, 'Rasputin Russian Imperial Stout','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 45.90);
insert into products(category_id, name, description, price) values (4, 'Stone Russian Imperial Stout','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 45.90);

-- porter
insert into products(category_id, name, description, price) values (5, 'Lodon Porter','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 25.90);
insert into products(category_id, name, description, price) values (5, 'Colorado Demoiselle','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 25.90);

-- imperial porter
insert into products(category_id, name, description, price) values (6, 'Lodon Porter','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 35.90);
insert into products(category_id, name, description, price) values (6, 'Tupiniquim Monjolo ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 35.90);

-- rauchbier
insert into products(category_id, name, description, price) values (7, 'Schlenkerla','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 35.90);
insert into products(category_id, name, description, price) values (7, 'Bamberg Rauchbier','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce scelerisque eget purus rhoncus malesuada. Donec tempus nisl odio, ut feugiat massa pretium vitae. Phasellus vulputate arcu ac nulla venenatis, eget posuere mauris interdum.', 35.90);