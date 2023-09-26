ELIMITER //

CREATE PROCEDURE sp_LivrosESeusAutores()
BEGIN
    SELECT Livros.LivroTitulo, Autores.Nome, Autores.Sobrenome
    FROM Livros
    INNER JOIN LivroAutor ON Livros.IDLivro = LivroAutor.IDLivro
    INNER JOIN Autores ON LivroAutor.IDAutor = Autores.IDAutor;
END //

DELIMITER;

CALL sp_LivrosESeusAutores();