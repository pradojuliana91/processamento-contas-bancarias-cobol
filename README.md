# 🏦 Processamento de Contas Bancárias COBOL

Projeto desenvolvido em COBOL para processamento de contas bancárias utilizando arquivos sequenciais, ordenação de registros com SORT e execução batch via JCL em ambiente Mainframe.

## 📌 Funcionalidades

- Leitura de arquivo sequencial de contas bancárias
- Ordenação das contas por agência utilizando SORT
- Exibição dos dados das contas
- Contagem total de contas processadas
- Cálculo do saldo total das contas
- Utilização de Copybook para definição do layout dos registros
- Execução batch através de JCL

## 📄 Estrutura do Registro

| Campo           | Tamanho |
| --------------- | ------- |
| Número da Conta | 8       |
| Nome do Cliente | 30      |
| Agência         | 4       |
| Tipo da Conta   | 1       |
| Saldo           | 11      |

### Tipo de Conta

| Código | Descrição      |
| ------ | -------------- |
| C      | Conta Corrente |
| P      | Conta Poupança |

## 🛠️ Tecnologias Utilizadas

- COBOL
- JCL
- SORT / Merge Utility
- Mainframe TK5
- TSO/ISPF
- Hercules Emulator

## 📂 Estrutura do Projeto

```text
├── cobol
│   ├── PROJCTA.cbl
│   └── REGCONT.cpy
│
├── jcl
│   ├── COMPCTA.jcl
│   ├── EXECCTA.jcl
│   └── SORTCTA.jcl
│
├── data
│   ├── CONTAS.TXT
│   └── CONTAS.SORT
│
├── docs
│   ├── sort_ok.png
│   ├── execucao_01.png
│   ├── execucao_02.png
│   └── job_0000.png
│
├── README.md
└── .gitignore
```

## ▶️ Execução

### 1. Compilação

Executar o JCL:

```text
COMPCTA.jcl
```

### 2. Ordenação

Executar o JCL:

```text
SORTCTA.jcl
```

Responsável por ordenar o arquivo de contas pela agência.

### 3. Processamento

Executar o JCL:

```text
EXECCTA.jcl
```

Responsável por processar o arquivo ordenado, exibir as contas e apresentar as estatísticas finais.

## 📊 Resultado Obtido

O programa realiza:

- Leitura das contas bancárias
- Exibição dos dados das contas
- Totalização da quantidade de contas
- Soma dos saldos
- Ordenação dos registros por agência

Exemplo de saída:

```text
TOTAL DE CONTAS: 00005
SALDO TOTAL....: 001275
```

## 📚 Conceitos Praticados

- FILE SECTION
- Sequential Files
- Copybook
- READ
- DISPLAY
- PERFORM
- Acumuladores
- Processamento Batch
- SORT
- JCL
- Mainframe
- TSO/ISPF

## 👩‍💻 Autora

Juliana do Prado Fernandes