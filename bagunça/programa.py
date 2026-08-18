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


# =========================
# CRUD PROFESSOR
# =========================

def criar_professor(nome, disciplina, cpf):
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            query = """
                INSERT INTO professor (nome, disciplina, cpf)
                VALUES (%s, %s, %s)
            """
            cursor.execute(query, (nome, disciplina, cpf))
            conn.commit()
            print('Professor registrado com sucesso!')
        except Error as e:
            print(f'Erro ao inserir professor: {e}')
        finally:
            cursor.close()
            conn.close()


def listar_professores():
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM professor")
            for professor in cursor.fetchall():
                print(professor)
        except Error as e:
            print(f'Erro ao listar professores: {e}')
        finally:
            cursor.close()
            conn.close()


# =========================
# CRUD TURMAS
# =========================

def criar_turma(nome):
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("INSERT INTO turmas (nome) VALUES (%s)", (nome,))
            conn.commit()
            print('Turma criada com sucesso!')
        except Error as e:
            print(f'Erro ao criar turma: {e}')
        finally:
            cursor.close()
            conn.close()


def listar_turmas():
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM turmas")
            for turma in cursor.fetchall():
                print(turma)
        except Error as e:
            print(f'Erro ao listar turmas: {e}')
        finally:
            cursor.close()
            conn.close()


# =========================
# CRUD ALUNO
# =========================

def criar_aluno(nome, matricula, id_turma):
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            query = """
                INSERT INTO aluno (nome, matricula, id_turma)
                VALUES (%s, %s, %s)
            """
            cursor.execute(query, (nome, matricula, id_turma))
            conn.commit()
            print('Aluno registrado com sucesso!')
        except Error as e:
            print(f'Erro ao inserir aluno: {e}')
        finally:
            cursor.close()
            conn.close()


def listar_alunos():
    conn = conectar()
    if conn:
        try:
            cursor = conn.cursor()
            cursor.execute("""
                SELECT aluno.id, aluno.nome, aluno.matricula, turmas.nome
                FROM aluno
                LEFT JOIN turmas ON aluno.id_turma = turmas.id
            """)
            for aluno in cursor.fetchall():
                print(aluno)
        except Error as e:
            print(f'Erro ao listar alunos: {e}')
        finally:
            cursor.close()
            conn.close()
