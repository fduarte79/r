# Tipos
## Dados
```
# NULL representa uma classe 'vazia', ausente de qualquer tipo de informação
class(NULL)
[1] "NULL"

# caracteres com aspas simples
caracter = 'A'        
caracter
[1] "A"

class(caracter)
[1] "character"

object.size(caracter)
112 bytes  # espaço utilizado


# caracteres com aspas duplas
caracteres = "ABC"    
caracteres
[1] "ABC"

class(caracteres)
[1] "character"

object.size(caracteres)
112 bytes


# numerico (real)
numerico = 0
numerico
[1] 0

class(numerico)
[1] "numeric"

object.size(numerico)
56 bytes  # espaço utilizado


# inteiro
inteiro = 3L
inteiro
[1] 3

class(inteiro)
[1] "integer"

object.size(inteiro)
56 bytes  # espaço utilizado

# complexo
complexo = 1+0i
complexo
[1] 1+0i

class(complexo)
[1] "complex"

object.size(complexo)
64 bytes


# lógico
logico = TRUE
logico
[1] TRUE

class(logico)
[1] "logical"

object.size(logico)
56 bytes  # espaço utilizado

falso = F
falso
[1] FALSE

class(falso)
[1] "logical"

# NA representa uma informação não acessível, dados faltantes possui. Sua classe é lógica porém pode ser usada em diversos tipos de dados
class(NA)
[1] "logical"
```

## Estruturas
### Vetor
+ O índice dos elementos iniciam em 1
+ O indice 0 retorna seu tipo
+ Vetor aceitam diversos tipos de elementos
+ O operado -, exclui o elemento
+ Seus elementos podem ser convertidos automaticamente para texto, dependendo da sua composição
```
# vetor de caracteres
vetor_c = c('A', 'B', 'C', 'D')                  
vetor_c
[1] "A" "B" "C" "D"

# acessando um elemento
vetor_c[1]                                       
[1] "A"

# atribuindo um novo valor
vetor_c[1] = "Z"                                 
vetor_c
[1] "Z" "B" "C" "D"

# acessando uma faixa de valores
vetor_c[3:4]                                     
[1] "C" "D" 

# atribuindo um valor para uma faixa
vetor_c[3:4] = 'Y'                               
vetor_c
[1] "Z" "B" "Y" "Y"

# duas faixas de vetores do tipo inteiro
vetor_n = c(0:9, 20:29)                          
vetor_n
[1]  0  1  2  3  4  5  6  7  8  9 20 21 22 23 24 25 26 27 28 29

# indice 0 retorna seu tipo
vetor_n[0]                                       
integer(0)

# vetor misto 
vetor_misto = c('A', 5L, 3.13 , FALSE, 10+0i)    
vetor_misto
[1] "A"     "5"     "3.13"  "FALSE" "10+0i"

# excluindo o segundo elemento
vetor_misto[-2]                                  
[1] "A"     "3.13"  "FALSE" "10+0i"

# excluindo uma faixa de valores
vetor_misto[-2:-4]                               
[1] "A"     "10+0i"
```

## Listas
+ Diferente dos vetores, as listas podem ter elementos de diferentes naturaza
```
# lista de hetereogênea
list('A', pi, 5L, 6+0i, c(2:3))
[[1]]
[1] "A"

[[2]]
[1] 3.141593

[[3]]
[1] 5

[[4]]
[1] 6+0i

[[5]]
[1] 2 3


# extraindo elementos aleatórios
z[c(4,1)]
[[1]]
[1] 6+0i

[[2]]
[1] "A"


# extraindo uma faixa
z[2:3]
[[1]]
[1] 3.141593

[[2]]
[1] 5
```

## Labels (Rótulos)
```
# gerando uma lista
sacola = c(f1 = 'uva', f2 = 'banana', f3 = 'maçã', f4 = 'morango', f5 = 'kiwi')

# atribuindo valores
sacola                         
       f1        f2        f3        f4        f5 
    "uva"  "banana"    "maçã" "morango"    "kiwi" 

# acessando o elemento
sacola['f2']                   
      f2
"banana"

# acessando o elemento
sacola[['f2']]                 
[1] "banana"

# alterando valores
sacola['f2'] = 'laranja'       
sacola['f2']
       f2 
"laranja"

# permite descobrir o nomes dos rótulos
names(sacola)                  
[1] "f1" "f2" "f3" "f4" "f5"
```

### Arrays
```
{
  abs     = table('N' = sample(0:9, 150, replace = T)) # conta as frequencias absolutas
  dst     = cut(abs, breaks=c(0,5,10,15,20))           # faz a distribuição
  rel     = round(prop.table(abs),digits=3)            # calcula a frequencia relativa
  acu     = cumsum(rel)                                # calcula a frequencia acumulada
  df_freq = cbind(abs, rel, acu, dst)                  # agrupa as tabelas em um array ou matriz
  df_freq
  class(df_freq)                                       # descreve a classe
  object.size(df_freq)                                 # descreve o tamanho em bytes
}
class(df_freq)
object.size(df_freq)
```
```
  abs   rel   acu dst
0  15 0.100 0.100   3
1   9 0.060 0.160   2
2  16 0.107 0.267   4
3  15 0.100 0.367   3
4  13 0.087 0.454   3
5  19 0.127 0.581   4
6  12 0.080 0.661   3
7  15 0.100 0.761   3
8  17 0.113 0.874   4
9  19 0.127 1.001   4
> class(df_freq)
[1] "matrix" "array" 
> object.size(df_freq)
1752 bytes
```

### Fatores
+ usado para classificar variáveis categóricas
+ variáveis categóricas podem ser nominais (não ordenadas) ou ordinais (ordenadas).
```
linguagens = factor(c('R', 'C', 'C++', 'Lua', 'ASSEMBLY', 'Python'))
linguagens
[1] R        C        C++      Lua      ASSEMBLY Python  
Levels: ASSEMBLY C C++ Lua Python R
```
