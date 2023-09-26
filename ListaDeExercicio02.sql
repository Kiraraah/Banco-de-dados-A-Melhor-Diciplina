DELIMITER //

CREATE PROCEDURE sp_LivrosPorCategoria(
    IN categoria_nome VARCHAR(100)
)
BEGIN
    SELECT LivroTitulo
    FROM Livros
    WHERE Categoria = categoria_nome;
END //

DELIMITER;