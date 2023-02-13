#Um determinado sistema escolar exporta a grade de notas dos 
#estudantes em formato CSV. Cada linha do arquivo corresponde ao 
#nome do estudante, acompanhado de 5 notas de avaliação, no 
#intervalo [0-10]. É o arquivo estudantes.csv de seu exercício.
#Precisamos processar seu conteúdo, de modo a gerar como saída um 
#relatório em formato textual contendo as seguintes informações:
#Nome do estudante
#Três maiores notas, em ordem decrescente
#Média das três maiores notas, com duas casas decimais de precisão
#O resultado do processamento deve ser escrito na saída padrão (print), 
#ordenado pelo nome do estudante e obedecendo ao formato descrito a seguir:
#Nome: <nome estudante> Notas: [n1, n2, n3] Média: <média>
#Exemplo:
#Nome: Maria Luiza Correia Notas: [7, 5, 5] Média: 5.67
#Nome: Maria Mendes Notas: [7, 3, 3] Média: 4.33
#Em seu desenvolvimento você deverá utilizar lambdas e as seguintes funções:
#round, map, sorted



import csv

def ler_csv(nome_arquivo):
    with open(nome_arquivo, 'r', encoding='utf-8') as arquivo:
        reader = csv.reader(arquivo)
        data = []

        for row in reader:
            data.append(row)
  
        return data

def obter_melhores_notas(notas):
    notas_ordenadas = sorted(map(int, notas), reverse=True)
    return notas_ordenadas[:3]

def calcular_media(notas):
    melhores_notas = obter_melhores_notas(notas)
    return round(sum(melhores_notas) / len(melhores_notas), 2)
    
def obter_nome(aluno):
    return aluno[0]

def mapear_alunos(data):
    return data[0], data[1:]

mapear_alunos = lambda aluno: { 
    "nome": obter_nome(aluno), 
    "melhores_notas": obter_melhores_notas(aluno[1:]),
    "media": calcular_media(aluno[1:])
  }

def imprimir_boletim():
    data = ler_csv('estudantes.csv')
    alunos_mapeados = sorted(list(map(mapear_alunos, data)), key=lambda aluno: aluno["nome"])

    for aluno in alunos_mapeados:
        print(f"Nome: {aluno['nome']} Notas: {aluno['melhores_notas']} Média: {aluno['media']}")

imprimir_boletim()