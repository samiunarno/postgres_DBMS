-- Create user table
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);

-- Create posy table with foreign key reference to user
CREATE TABLE posy (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER NOT NULL REFERENCES "user"(id)
);

-- Insert users
INSERT INTO "user" (username) VALUES 
('AKash'),
('Batash'),
('Chatash'),
('Datash');

-- Check inserted users


-- Insert posy data with valid user_id references
INSERT INTO posy (title, user_id) VALUES
('Dream big, start small, act now.', 2),
('Progress, not perfection.', 1),
('Kindness is never wasted.', 4),
('Create your own sunshine.', 4);

SELECT * FROM posy;