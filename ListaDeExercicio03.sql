DELIMITER //

CREATE PROCEDURE sp_ContarLivrosPorCategoria(
    IN categoria_nome VARCHAR(100) -- Parâmetro de entrada: nome da categoria
)
BEGIN
    SELECT COUNT(*) AS TotalLivros
    FROM Livros
    WHERE Categoria = categoria_nome;
END //

DELIMITER;