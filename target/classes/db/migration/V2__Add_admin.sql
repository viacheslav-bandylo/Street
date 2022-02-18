insert into usr (id, username, password, email, active)
    values (1, 'admin', '$2a$08$6rTjiWVHYykNZQR6CTzIdOwjyXtWS9RkOfRkrRzMKcWjLQ/NeSTdW', 'admin@email.com', 1);

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');