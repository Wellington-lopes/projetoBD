# Projeto Pet System
## Módulo Banco de Dados
Nesse módulo, criaremos uma conexão com um banco de dados PostgreSQL, com dados de uma clínica veterinária.
Foram criadas as tabelas Atendimentos, Clientes, Pacientes e Funcionários e realizadas consultas para extrair dados estatísticos do banco de dados.

## Equipe
- Gustavo Amorim
- [João Victor Lemos da Silva ](https://github.com/victorlemos1)
- [Maressa Karen Henrique da Silva](https://github.com/maressakaren)
- [Mariana Franz Marroquim](https://github.com/framzz)
- [Wellington Soares Lopes](https://github.com/Wellington-lopes)

## Diagrama Entidade-Relacionamento
[Diagrama](https://github.com/gustavoaamorim/projetoBD/blob/2a48cbb7ffec317b70a545515ddc16c86157161d/diagrama_ER.jpeg)


## Conexão com banco de dados usando Python
## Diretório

```bash
├── data
│   └── atendimento.json
│   └── clientes.json
│   └── funcionarios.json
│   └── pacientes.json
├── load_tables.py
├── main.py
├── README.md
├── requirements.txt
```

## Requirements
Os códigos foram desenvolvidos utilizando as seguintes configurações:

- Python 3.11
- pip 23.3.1
- PostgreSQL 16.0

## Executando projeto em um Virtual Enviroment (Windows):

- Crie um ambiente virtual no seu diretório: 
```
python -m venv env
 ```
- Ative o ambiente virtual: 
```
env\scripts\activate
 ```
- Instale as dependencias do projeto:
```
pip install -r requirements.txt
 ```
- Rode o arquivo `main.py`:
```
python main.py
```

