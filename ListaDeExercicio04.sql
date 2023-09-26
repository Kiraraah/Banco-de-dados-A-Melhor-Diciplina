DELIMITER //

CREATE PROCEDURE sp_VerificarLivrosCategoria(
    IN categoria_nome VARCHAR(100) -- Parâmetro de entrada: nome da categoria
)
BEGIN
    DECLARE livro_count INT;

    SELECT COUNT(*) INTO livro_count
    FROM Livros
    WHERE Categoria = categoria_nome;

    IF livro_count > 0 THEN
        SELECT 'A categoria possui livros.' AS Resultado;
    ELSE
        SELECT 'A categoria não possui livros.' AS Resultado;
    END IF;
END //

DELIMITER;
CALL sp_VerificarLivrosCategoria('Livros'); 






