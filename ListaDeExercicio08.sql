DELIMITER //

CREATE PROCEDURE sp_AutorMaisAntigo()
BEGIN
    SELECT NomeAutor
    FROM Autores
    WHERE DataNascimento = (
        SELECT MIN(DataNascimento)
        FROM Autores
    );
END //

DELIMITER;