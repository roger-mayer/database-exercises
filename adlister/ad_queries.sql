use ad;


SELECT users.username, ads.title, categories.title
FROM users
         join ads
              on users.id = ads.user_id
         join ad_category
              on ads.id = ad_category.ad_id
         join categories
#               on ad_category.ad_id = categories.id;
WHERE categories.title = 'For Free';

# ORDER BY dept_name asc;
#
# SELECT email
# FROM users
# WHERE id = (
#     SELECT user_id
#     from ads
#     WHERE title = 'beer'
# );
#
# SELECT title
# FROM categories
# WHERE id = (
#     SELECT category_id
#     FROM ad_category
#     WHERE ad_id = (
#         SELECT id
#         FROM ads
#         WHERE title = 'van'
#     )
# );
# SELECT title
# FROM ads
# WHERE id IN (
#     SELECT ad_id
#     FROM ad_category
#     WHERE category_id IN (
#         SELECT id
#         FROM categories
#         WHERE title = 'Help Wanted'
#     )
# );
# SELECT title
# FROM ads
# WHERE user_id IN (
#     SELECT id
#     FROM users
#     WHERE username = 'vkatte5'
# );


//test


