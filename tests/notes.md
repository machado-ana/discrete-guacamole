# Teoria dos Conjuntos

## Definição
- blablabla

## Exemplos em Haskell
- Pertence: é elemento do conjunto
```bash
type ConjInt = [Int]

pert :: Int -> ConjInt -> Bool
pert _ [] = False
pert a (h:t)
	| a == h = True
	| otherwise = pert a t 
```

- Cardinalidade: quantidade de elementos
```bash
type ConjInt = [Int]

card :: ConjInt -> Int
card [] = 0
card (_:t) = 1 + card t
```

- Subconjunto: se um conjunto pertence a outro
```bash
fazer
```

## Exemplos em C/C++
**fazer

## Conjuntos enumeráveis
- Um conjunto é enumerável se é possível estabelecer uma relação bijetora entre ele e o conjunto dos naturais, isto é, se é possível mapear 1:1
- Exemplos:
	- N pert Z
	- Pares pert N

## Conjuntão não enumeráveis
### 1. Sequências binárias
Argumento da diagonal de Cantor
- Construímos uma matriz onde cada linha representa um número binário
- Depois, construimos um novo número, tal que pegue os valores da diagonal dessa matriz, mas inverta os zeros e uns
- Dessa forma, note que é impossível que esse novo número formado seja igual a um número presente na tabela
**fazer ex

### 2. Números reais
- Seguindo a mesma lógica da diagonal de Cantor, podemos mapear os números reais
**fazer ex

## Comparabilidade
- Diferença entre "<" (subconj próprio) e <="
- **Comparáveis**: Se A é subconj de B **ou** B é subconj de A
- **Iguais**: se A é subconj de B **e** B é subconj de A
- Em Haskell:
```bash
comparaveis
... fazer
```

## Operações em Conjuntos
### 1. União
- Disjunção inclusiva
- Exemplo em Haskell:
```
uniao

retiraRepetidos
chama retira todos a iguais a cab na cauda

retiraTodos
```

### 2. Intersecção
- 

tem mais





