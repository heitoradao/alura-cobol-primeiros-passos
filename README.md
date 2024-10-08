# Exercícios do curso de cobol da Alura

URL do curso:<br />
https://unibb.alura.com.br/course/cobol-primeiros-passos

URL do repositório original no github:<br />
https://github.com/alura-cursos/cursoopencobol


# Coisas que eu mudei:

- Identação corrigida para dialeto IBM.
- Normalização dos finalizadores de parágrafo.
- Adiciona Rakefile para compilar tudo.


# Pré-requisitos

Para compilar no ubuntu, precisa ter o pacote gnucobol3.<br />
Talvez funcione com o gnucobol4, mas não consegui fazer os exercícios do curso 2 funcionarem com a versão 4.<br />
Dá erro ao tentar usar o conjunto de instruções de arquivos indexados.


# Parametros de compilação

`cobc -v -std=ibm-strict -Wall -Wcolumn-overflow -x filename.cbl`

