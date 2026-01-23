# Tipos
## Dados
```
caracter = 'A'        # caracteres com aspas simples
caracter
[1] "A"
class(caracter)
[1] "character"
object.size(caracter)
112 bytes  # espaço utilizado

caracteres = "ABC"    # caracteres com aspas duplas
caracteres
[1] "ABC"
class(caracteres)
[1] "character"
object.size(caracteres)
112 bytes

numerico = 0
numerico
[1] 0
class(numerico)
[1] "numeric"
object.size(numerico)
56 bytes  # espaço utilizado

inteiro = 3L
inteiro
[1] 3
class(inteiro)
[1] "integer"
object.size(inteiro)
56 bytes  # espaço utilizado

complexo = 1+0i
complexo
[1] 1+0i
class(complexo)
[1] "complex"
object.size(complexo)
64 bytes

logico = FALSE
class(logico)
[1] "logical"
object.size(logico)
56 bytes  # espaço utilizado
```

## Estruturas
### Vetor
+ Índice dos elementos iniciam em 0
+ Vetor aceitam diversos tipos de elementos
```
vetor_c = c('A', 'B', 'C', 'D')   # vetor de caracteres
vetor_c
[1] "A" "B" "C" "D"
vetor_c[1]                        # acessando um elemento
[1] "A"
vetor_c[1] = "Z"                  # atribuindo um novo valor
vetor_c
[1] "Z" "B" "C" "D"
vetor_c[3:4]                      # acessando uma faixa de valores
[1] "C" "D" 
vetor_c[3:4] = 'Y'                # atribuindo um valor para uma faixa
vetor_c
[1] "Z" "B" "Y" "Y"
vetor_n = c(0:9, 20:29)           # duas faixas de vetores do tipo inteiro
vetor_n
[1]  0  1  2  3  4  5  6  7  8  9 20 21 22 23 24 25 26 27 28 29
vetor_n[0]
integer(0)                        # indice 0 retorna seu tipo
```
### Arrays
```
abs     = table('N' = sample(0:9, 150, replace = T)) # conta as frequencias absolutas
dst     = cut(abs, breaks=c(0,5,10,15,20))           # faz a distribuição
rel     = round(prop.table(abs),digits=3)            # calcula a frequencia relativa
acu     = cumsum(rel)                                # calcula a frequencia acumulada
df_freq = cbind(abs, rel, acu, dst)                  # agrupa as tabelas em um array ou matriz
df_freq

  abs   rel   acu dst
0   7 0.047 0.047   2
1  17 0.113 0.160   4
2   9 0.060 0.220   2
3  17 0.113 0.333   4
4  18 0.120 0.453   4
5  15 0.100 0.553   3
6  15 0.100 0.653   3
7  14 0.093 0.746   3
8  19 0.127 0.873   4
9  19 0.127 1.000   4

class(df_freq)
[1] "matrix" "array" 
object.size(df_freq)
1752 bytes
```
