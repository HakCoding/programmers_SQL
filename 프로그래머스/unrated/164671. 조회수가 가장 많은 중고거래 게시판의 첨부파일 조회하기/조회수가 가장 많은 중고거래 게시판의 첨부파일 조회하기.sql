SELECT 
    '/home/grep/src/' || BOARD_ID || '/' || FILE_ID || FILE_NAME || FILE_EXT AS FILE_PATH
FROM USED_GOODS_FILE 
WHERE 1=1
AND BOARD_ID = (
    SELECT
        BOARD_ID
    FROM USED_GOODS_BOARD 
    WHERE 1=1
    ORDER BY VIEWS DESC
    FETCH FIRST 1 ROWS ONLY
)
ORDER BY FILE_ID DESC