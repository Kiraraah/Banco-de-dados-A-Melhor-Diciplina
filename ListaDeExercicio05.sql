DELIMITER //

CREATE PROCEDURE sp_LivrosAteAno(
    IN ano_publicacao INT
)
BEGIN
    SELECT *
    FROM Livros
    WHERE AnoPublicacao <= ano_publicacao;
END //

DELIMITER;
CALL sp_LivrosAteAno(2020);