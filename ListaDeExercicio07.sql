DELIMITER //

CREATE PROCEDURE sp_AdicionarLivro(
    IN livro_titulo VARCHAR(255), 
    IN livro_autor VARCHAR(255), 
    IN livro_ano_publicacao INT  -
)
BEGIN
    DECLARE livro_count INT;

    SELECT COUNT(*) INTO livro_count
    FROM Livros
    WHERE LivroTitulo = livro_titulo;

    IF livro_count > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Livro com título já existente. Não é possível adicionar.';
    ELSE
        INSERT INTO Livros (LivroTitulo, Autor, AnoPublicacao)
        VALUES (livro_titulo, livro_autor, livro_ano_publicacao);

        SELECT 'Livro adicionado com sucesso.' AS Resultado;
    END IF;
END //

DELIMITER;