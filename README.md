# academia-banco-de-dados2
semana 2 atividade bando de dados
# Sistema de Gerenciamento de Academia

## 1. Cenário

O projeto consiste na modelagem e implementação inicial de um banco de dados para uma academia.

O sistema tem como objetivo organizar informações sobre alunos, planos, professores e treinos.

---

## 2. Entidades

### Aluno

**Tipo:** Entidade forte

**Chave Primária:** `id_aluno`

**Atributos:**

* `id_aluno` — PK
* `nome`
* `cpf`
* `data_nascimento`
* `telefone`
* `id_plano` — FK

### Plano

**Tipo:** Entidade forte

**Chave Primária:** `id_plano`

**Atributos:**

* `id_plano` — PK
* `nome`
* `valor`
* `duracao_meses`

### Professor

**Tipo:** Entidade forte

**Chave Primária:** `id_professor`

**Atributos:**

* `id_professor` — PK
* `nome`
* `cpf`
* `especialidade`

### Treino

**Tipo:** Entidade forte

**Chave Primária:** `id_treino`

**Atributos:**

* `id_treino` — PK
* `nome`
* `objetivo`
* `data_criacao`
* `id_professor` — FK

### Aluno_Treino

**Tipo:** Entidade associativa

**Chave Primária:** composta por `id_aluno` e `id_treino`

**Atributos:**

* `id_aluno` — PK/FK
* `id_treino` — PK/FK
* `data_inicio`

A entidade `Aluno_Treino` representa o relacionamento N:N entre Aluno e Treino.

---

## 3. Relacionamentos e Cardinalidades

### Plano — Aluno

Um plano pode estar associado a vários alunos e cada aluno possui um plano.

**Cardinalidade: 1:N**

`Plano 1:N Aluno`

### Professor — Treino

Um professor pode elaborar vários treinos e cada treino está associado a um professor.

**Cardinalidade: 1:N**

`Professor 1:N Treino`

### Aluno — Treino

Um aluno pode possuir vários treinos e um treino pode estar associado a vários alunos.

**Cardinalidade: N:N**

Esse relacionamento é implementado através da entidade associativa `Aluno_Treino`.

`Aluno 1:N Aluno_Treino N:1 Treino`

---

## 4. Diagrama ER

O diagrama entidade-relacionamento foi elaborado utilizando a notação **Crow's Foot**.

A imagem abaixo apresenta a modelagem conceitual do banco de dados:

![Diagrama ER](diagrama.jpg)

---

## 5. Implementação Física — SQL DDL

A implementação física foi realizada utilizando SQL DDL.

Foram utilizados:

* `CREATE DATABASE`
* `CREATE TABLE`
* `PRIMARY KEY`
* `FOREIGN KEY`
* `NOT NULL`
* `UNIQUE`

Também foram utilizados os tipos de dados:

* `INT`
* `VARCHAR`
* `DATE`
* `DECIMAL`

O código da implementação está disponível no arquivo `database.sql`.

---

## 6. Estrutura do Projeto

```text
academia-banco-de-dados/
├── README.md
├── database.sql
└── diagrama.jpg
```

---

## 7. Conclusão

A modelagem permitiu representar as principais entidades, atributos, chaves e relacionamentos de uma academia.

O relacionamento N:N entre alunos e treinos foi implementado por meio da entidade associativa `Aluno_Treino`, permitindo sua representação em um banco de dados relacional.
