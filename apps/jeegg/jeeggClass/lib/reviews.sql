SELECT courses.title, reviews.review_body, reviews.rating, reviews.id
FROM reviews 
JOIN courses  ON reviews.class_id = courses.id
WHERE courses.id = {{ coursesTable.selectedRow.id }}