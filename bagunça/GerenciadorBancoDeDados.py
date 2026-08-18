import mysql.connector
from mysql.connector import Error

def conectar():
    try:
        conn = mysql.connector.connect(
            host='localhost',
            database='escola',
            user='root',
            password='mysql'
        )
        if conn.is_connected():
            return conn
    except Error as e:
        print(f'Erro ao iniciar conexão: {e}')
    return None


def criar_pessoa(nome):
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            query = "INSERT INTO pessoas (nome) VALUES (%s)"
            cursor.execute(query, (nome,))
            conn.commit()
            print('Registrado com sucesso!')
        except Error as e:
            print(f'Erro ao inserir: {e}')
        finally:
            cursor.close()
            conn.close()


def buscar_por_id(id_pesquisado):
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            query = "SELECT * FROM pessoas WHERE id = %s"
            cursor.execute(query, (id_pesquisado,))
            print(cursor.fetchone())
        except Error as e:
            print(f'Erro ao buscar: {e}')
        finally:
            cursor.close()
            conn.close()


def listar_todos():
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            query = "SELECT * FROM pessoas"
            cursor.execute(query)
            for resultado in cursor.fetchall():
                print(resultado)
        except Error as e:
            print(f'Erro ao listar: {e}')
        finally:
            cursor.close()
            conn.close()


def atualizar_pessoa(nome, id_pesquisado):
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            query = "UPDATE pessoas SET nome = %s WHERE id = %s"
            cursor.execute(query, (nome, id_pesquisado))
            conn.commit()
            print('Atualizado com sucesso!')
        except Error as e:
            print(f'Erro ao atualizar: {e}')
        finally:
            cursor.close()
            conn.close()


def remover_pessoa(id_pesquisado):
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            query = "DELETE FROM pessoas WHERE id = %s"
            cursor.execute(query, (id_pesquisado,))
            conn.commit()
            print('Registro removido com sucesso!')
        except Error as e:
            print(f'Erro ao remover: {e}')
        finally:
            cursor.close()
            conn.close()
