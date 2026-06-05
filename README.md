# 🏦 Processamento de Contas Bancárias COBOL

Projeto desenvolvido em COBOL para processamento de contas bancárias utilizando arquivos sequenciais e execução via JCL em ambiente Mainframe.

## 📌 Funcionalidades

- Leitura de arquivo de contas bancárias
- Exibição dos dados das contas
- Contagem total de contas processadas
- Cálculo do saldo total
- Utilização de Copybook para definição dos registros
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
- Mainframe TK4-
- TSO/ISPF
- Hercules Emulator

## 📂 Estrutura do Projeto

```text
├── cobol
│   ├── PROJCTA.cbl
│   └── REGCONT.cpy
│
├── jcl
│   ├── CARGCON.jcl
│   ├── COMPCON.jcl
│   └── EXECCON.jcl
│
├── docs
|   ├── compilacao.png
│   ├── execucao.png
│   └── resultado.png
│
├── README.md
└── .gitignore
```

## ▶️ Execução

1. Executar o arquivo `CARGCON.jcl` para criar e carregar o arquivo de contas.
2. Compilar o programa utilizando `COMPCON.jcl`.
3. Executar o processamento utilizando `EXECCON.jcl`.

## 📚 Conceitos Praticados

- FILE SECTION
- Sequential Files
- Copybook
- READ
- DISPLAY
- PERFORM
- Acumuladores
- Processamento Batch
- JCL
- Mainframe

## 👩‍💻 Autora

Juliana do Prado Fernandes