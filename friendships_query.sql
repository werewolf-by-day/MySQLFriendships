SELECT DISTINCT users.first_name, users.last_name, user2.first_name AS friend_first_name, user2.last_name AS friend_last_name
FROM users
LEFT JOIN friendships ON user_id = friendships.user_id
LEFT JOIN users as user2 ON friendships.friend_id = user2.id
WHERE users.id != user2.id
ORDER BY friend_last_name;