# Casting, Conversão ou Coerção
+ R permite converter para os mais diversos tipos de dados
  - as.tipo_de_dado()
+ Exemplo: pi é um dado do tipo numérico porém, ele pode ser convertido em outros tipos
```
class(pi)
[1] "numeric"

class(as.character(pi))
[1] "character"

class(as.logical(pi))
[1] "logical"

class(as.integer(pi))
[1] "integer"

class(as.factor(pi))
[1] "factor"
```
+ A conversão é feita na sequência, independente da disposição dos elementos no vetor:
  - logical -> integer -> numeric -> complex -> character
+ Atente que o tipo lógico e numérico são os mais estritos enquanto que o caracteres são os mais genéricos
```
conversao = c(T, 3, pi, 5+0i, 'A')
class(conversao)
[1] "character"

conversao = c('A', T, 3, pi, 5+0i)
class(conversao)
[1] "character"

conversao = c(T, 3, pi, 5+0i)
class(conversao)
[1] "complex"

conversao = c(3, T)
class(conversao)
[1] "numeric"
```
+ Logo, quase todos os tipos podem ser convertidos em caracteres, mas poucos podem ser convertidos para lógicos e inteiros
```
as.numeric('A')
[1] NA
Mensagen de aviso:
NAs introduzidos por coerção 

# ao tentar converter, pode aconter do tipo de dado ser incompatível e serem inseridos NAs
conversao = as.numeric(c(3, T, 'a'))
    Mensagen de aviso:
    NAs introduzidos por coerção 
conversao
[1]  3 NA NA
```
