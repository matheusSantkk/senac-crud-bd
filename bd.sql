-- =================================================================
-- PROJETO: CRUD DE FILMES - EQUIPE 07
-- ARQUIVO: crud.session.sql
-- =================================================================

-- =================================================================
-- 1. CREATE TABLE (Criar a Tabela)
-- =================================================================
CREATE TABLE IF NOT EXISTS filme (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    diretor VARCHAR(100) NOT NULL,
    ano INTEGER NOT NULL,
    assistido BOOLEAN NOT NULL
);


-- =================================================================
-- 2. CREATE (Inserir Registros Iniciais)
-- =================================================================
INSERT INTO filme (titulo, diretor, ano, assistido) VALUES
('A Origem', 'Christopher Nolan', 2010, TRUE),
('Interestelar', 'Christopher Nolan', 2014, TRUE),
('Pulp Fiction', 'Quentin Tarantino', 1994, FALSE),
('Matrix', 'Lana e Lilly Wachowski', 1999, TRUE);


-- =================================================================
-- 3. READ (Consultas, Filtros e Ordenações)
-- =================================================================

-- 3.1. Consulta simples: Mostra todos os dados e colunas da tabela
SELECT * FROM filme;

-- 3.2. Consulta com filtro (WHERE): Retorna apenas os filmes de um diretor
SELECT * FROM filme 
WHERE diretor = 'Christopher Nolan';

-- 3.3. Consulta com comparação: Retorna filmes lançados a partir de 2000
SELECT * FROM filme 
WHERE ano >= 2000;

-- 3.4. Consulta com filtro booleano: Retorna apenas os filmes assistidos
SELECT * FROM filme 
WHERE assistido = TRUE;

-- 3.5. Consulta com ordenação (ORDER BY): Do mais recente para o mais antigo
SELECT * FROM filme 
ORDER BY ano DESC;

-- 3.6. Consulta com ordenação alfabética: Ordenado pelo título de A a Z
SELECT * FROM filme 
ORDER BY titulo ASC;

-- 3.7. Consulta combinada (WHERE + ORDER BY): Filmes não assistidos ordenados por ano
SELECT * FROM filme 
WHERE assistido = FALSE 
ORDER BY ano ASC;


-- =================================================================
-- 4. UPDATE (Atualizar Registro)
-- =================================================================
-- Marcar 'Pulp Fiction' como assistido (TRUE)
UPDATE filme
SET assistido = TRUE
WHERE titulo = 'Pulp Fiction';

-- Consulta para conferir a alteração do UPDATE
SELECT * FROM filme WHERE titulo = 'Pulp Fiction';


-- =================================================================
-- 5. DELETE (Excluir Registro)
-- =================================================================
-- Remover o filme 'Matrix' da tabela
DELETE FROM filme
WHERE titulo = 'Matrix';


-- =================================================================
-- 6. ESTADO FINAL (Conferir o resultado após o CRUD completo)
-- =================================================================
SELECT * FROM filme;