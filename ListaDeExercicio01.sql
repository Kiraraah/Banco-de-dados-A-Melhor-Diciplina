DELIMITER //

CREATE PROCEDURE sp_ListarAutores()
BEGIN
    SELECT * FROM Autores;
END //

DELIMITER ;
CALL sp_ListarAutores();