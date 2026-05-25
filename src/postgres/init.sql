-- Cria o banco se nao existir
DO
$$
BEGIN
  IF NOT EXISTS (
    SELECT FROM pg_database WHERE datname = 'evolution'
  ) THEN
    CREATE DATABASE evolution;
  END IF;
END
$$;

-- Conecta ao banco e cria o usuario com permissoes
\connect evolution

DO
$$
BEGIN
  IF NOT EXISTS (
    SELECT FROM pg_roles WHERE rolname = 'admin'
  ) THEN
    CREATE ROLE admin WITH LOGIN PASSWORD '123';
  END IF;
END
$$;

-- Garantir permissoes
GRANT ALL PRIVILEGES ON DATABASE evolution TO admin;
GRANT ALL ON SCHEMA public TO admin;
GRANT ALL ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO admin;
GRANT ALL ON ALL FUNCTIONS IN SCHEMA public TO admin;
