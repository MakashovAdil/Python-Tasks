use vk;

-- 1. Для каждого пользователя отдельно. 
-- Узнать названия и описание чатов, в которых они находятся. 
-- Упорядочить по названию чата в обратном порядке.

select 
u.username,
c.title,
c.description
from users AS u, chats AS c, user_to_chats AS utc
WHERE u.id = utc.user_id AND utc.chat_id = c.id AND u.username = 'user 1'
ORDER BY title DESC;

select 
u.username,
c.title,
c.description
from users AS u, chats AS c, user_to_chats AS utc
WHERE u.id = utc.user_id AND utc.chat_id = c.id AND u.username = 'user 2'
ORDER BY title DESC;

select 
u.username,
c.title,
c.description
from users AS u, chats AS c, user_to_chats AS utc
WHERE u.id = utc.user_id AND utc.chat_id = c.id AND u.username = 'user 3'
ORDER BY title DESC;


-- 2. Для каждого пользователя отдельно. 
-- Узнать название и дату вступления в чат, в которых они находятся. 
-- Упорядочить по дате вступления в чат

select 
u.username,
c.title,
utc.enter_datatime
from users AS u, chats AS c, user_to_chats AS utc
WHERE u.id = utc.user_id AND utc.chat_id = c.id AND u.username = 'user 1'
ORDER BY enter_datatime ASC;

select 
u.username,
c.title,
utc.enter_datatime
from users AS u, chats AS c, user_to_chats AS utc
WHERE u.id = utc.user_id AND utc.chat_id = c.id AND u.username = 'user 2'
ORDER BY enter_datatime ASC;

select 
u.username,
c.title,
utc.enter_datatime
from users AS u, chats AS c, user_to_chats AS utc
WHERE u.id = utc.user_id AND utc.chat_id = c.id AND u.username = 'user 3'
ORDER BY enter_datatime ASC;


-- 3. Для каждого чата отдельно. 
-- Узнать когда владелец чата вступил в данный чат (то есть создал его).

select 
c.title,
u.username,
utc.enter_datatime
from users AS u, chats AS c, user_to_chats AS utc
WHERE = c.id AND c.title = 'chat 3';


