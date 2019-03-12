# Books JSONB Tutorial 

Source: 
https://www.compose.com/articles/faster-operations-with-the-jsonb-data-type-in-postgresql/


Create Database jsonbhw; 

CREATE TABLE books (  
  book_id serial NOT NULL,
  data jsonb
);

Load Data
INSERT INTO books VALUES (1, '{"title": "Sleeping Beauties", "genres": ["Fiction", "Thriller", "Horror"], "published": false}');  
INSERT INTO books VALUES (2, '{"title": "Influence", "genres": ["Marketing & Sales", "Self-Help ", "Psychology"], "published": true}');  
INSERT INTO books VALUES (3, '{"title": "The Dictator''s Handbook", "genres": ["Law", "Politics"], "authors": ["Bruce Bueno de Mesquita", "Alastair Smith"], "published": true}');  
INSERT INTO books VALUES (4, '{"title": "Deep Work", "genres": ["Productivity", "Reference"], "published": true}');  


Query Data 
SELECT data->'title' AS title FROM books;
SELECT * FROM books WHERE data->'published' = 'false';  
SELECT jsonb_array_elements_text(data->'genres') AS genre  
FROM books  
WHERE book_id = 1;    

