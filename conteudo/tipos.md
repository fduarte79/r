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

# NA representa uma informação não acessível ou dados faltantes. Sua classe é lógica porém pode ser usada em diversas classes.
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

### Matriz
+ São vetores com duas dimensões
```
# monta a matriz, pela coluna por padrão
matriz = matrix(seq(0,20, 4), nrow=3, ncol=2)
matriz
    [,1] [,2]
[1,]    0   12
[2,]    4   16
[3,]    8   20

# monta a matriz, pela linha
matriz = matrix(seq(0,20, 4), nrow=3, ncol=2, byrow=T)
matriz
     [,1] [,2]
[1,]    0    4
[2,]    8   12
[3,]   16   20
# retorna o tamanho da matriz (linhas x colunas)
dim(matriz)
[1] 3 2

# outra forma de montar uma matriz é usando cbind (coluna)
cbind(seq(0,10,4),seq(10,20,4))
     [,1] [,2]
[1,]    0   10
[2,]    4   14
[3,]    8   18

# outra forma de montar uma matriz é usando rbind (linha)
rbind(seq(0,10,4),seq(10,20,4))
     [,1] [,2] [,3]
[1,]    0    4    8
[2,]   10   14   18

# acessando toda a matriz
matriz[,]
     [,1] [,2]
[1,]    0   12
[2,]    4   16
[3,]    8   20

# acessando a segunda linha
matriz[2,]
[1]  4 16

# acessando a segunda coluna
matriz[,2]
[1] 12 16 20

# excluindo a segundo coluna
matriz[,-2]
[1] 0 4 8

# excluindo uma faixa de colunas
matriz[,-1:-2]
    
[1,]
[2,]
[3,]
```

### Fatores
+ usado para classificar variáveis categóricas
+ variáveis categóricas podem ser nominais (não ordenadas) ou ordinais (ordenadas).
```
linguagens = factor(c('R', 'C', 'C++', 'Lua', 'ASSEMBLY', 'Python'),
           levels = c('ASSEMBLY', 'C', 'C++', 'Python', 'R', 'Lua')) # levels, permitem definir a ordem

[1] R        C        C++      Lua      ASSEMBLY Python  
Levels: ASSEMBLY C C++ Python R Lua

# fatores podem ser inseridos
linguagens = factor(c('R', 'C', 'C++', 'Lua', 'ASSEMBLY', 'Python', 'Rust'),
           levels = c('ASSEMBLY', 'C', 'C++', 'Python', 'R', 'Lua')) # levels, permitem definir a ordem
linguagens
[1] R        C        C++      Lua      ASSEMBLY Python   <NA>    
Levels: ASSEMBLY C C++ Python R Lua
```

### Data frame
+ Data frame é um tipo especial de matriz que aceita diversos tipos de dados
+ R não verifica a natureza dos dados dessa, forma uma mesma coluna podem ter diversos tipos de dados
```
cad01 = data.frame(ID   = '001', Nome = 'Fulano', Sexo = 'M', DN = '01/01/1970', UF   = 'SC', CPF  = 12345678901)
cad02 = data.frame(ID   = '002', Nome = 'Ciclana', Sexo = 'F', DN = '01/01/1980', UF   = 'RS', CPF  = 10987654321)
df_cad = rbind(cad01, cad02)
df_cad
df_cad
   ID    Nome Sexo         DN UF         CPF
1 001  Fulano    M 01/01/1970 SC 12345678901
2 002 Ciclana    F 01/01/1980 RS 10987654321

# A coluna ID foi trocada pelo caractere por um inteiro e a coluna Sexo foi trocado do caractere 'F' pelo lógico F 
cad03 = data.frame(ID   = 002,   Nome = 'Ciclana', Sexo =  F , DN = '01/01/1980', UF   = 'RS', CPF  = '10987654321')
df_cad = rbind(cad01, cad02, cad03)
df_cad
   ID    Nome  Sexo         DN UF         CPF
1 001  Fulano     M 01/01/1970 SC 12345678901
2 002 Ciclana     F 01/01/1980 RS 10987654321
3   2 Ciclana FALSE 01/01/1980 RS 10987654321

# trocando os rótulos das linhas
row.names(df_cad) = c('c1','c2','c3')
row.names(df_cad)
[1] "c1" "c2" "c3"
df_cad
    ID    Nome  Sexo         DN UF         CPF
c1 001  Fulano     M 01/01/1970 SC 12345678901
c2 002 Ciclana     F 01/01/1980 RS 10987654321
c3   2 Ciclana FALSE 01/01/1980 RS 10987654321
```
