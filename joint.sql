-- 1. Create new user table
CREATE TABLE "user5" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);

-- 2. Create new posy table with foreign key reference to user5
CREATE TABLE posy5 (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER NOT NULL REFERENCES "user5"(id)
);

-- 3. Insert sample users
INSERT INTO "user5" (username) VALUES 
('AKash'),
('Batash'),
('Chatash'),
('Datash');

-- 4. Insert sample posts
INSERT INTO posy5 (title, user_id) VALUES
('Dream big, start small, act now.', 2),
('Progress, not perfection.', 1),
('Kindness is never wasted.', 4),
('Create your own sunshine.', 4);

-- 5. Join both tables to display posts with usernames
SELECT 
    posy5.id AS post_id,
    posy5.title,
    "user5".username
FROM 
    posy5
JOIN 
    "user5" ON posy5.user_id = "user5".id;

-- 6. View all posts (optional)

