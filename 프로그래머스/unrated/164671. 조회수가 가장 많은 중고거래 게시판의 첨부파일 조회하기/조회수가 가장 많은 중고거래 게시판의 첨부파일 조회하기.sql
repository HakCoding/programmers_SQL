SELECT CONCAT('/home/grep/src/', b.board_id, '/', file_id, file_name, f.file_ext) AS FILE_PATH 
FROM used_goods_board AS b
INNER JOIN used_goods_file AS f USING(board_id)
WHERE b.views = (SELECT DISTINCT(views) FROM used_goods_board ORDER BY views DESC LIMIT 1)
ORDER BY f.file_id DESC;