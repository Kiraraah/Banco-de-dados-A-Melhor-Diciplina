DELIMITER //

CREATE PROCEDURE sp_TitulosPorCategoria(
    IN categoria_nome VARCHAR(100) -- Parâmetro de entrada: nome da categoria
)
BEGIN
    SELECT LivroTitulo
    FROM Livros
    WHERE Categoria = categoria_nome;
END //

DELIMITER;