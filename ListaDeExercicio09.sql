DELIMITER //

CREATE PROCEDURE sp_LivrosAteAno(
    IN ano_publicacao INT 
)
BEGIN
    SELECT LivroTitulo
    FROM Livros
    WHERE AnoPublicacao <= ano_publicacao;
END //

DELIMITER;