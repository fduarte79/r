# Casting, Conversão ou Coerção
+ R permite converter para os mais diversos tipos de dados
  - as.tipo_de_dado()
+ pi é um dado do tipo numérico por natureza porém, ele pode ser convertido
```
class(pi)
[1] "numeric"
class(as.character(pi))
[1] "character"
class(as.logical(pi))
[1] "logical"
class(as.integer(pi))
[1] "integer"
```
+ A conversão é feita na sequência, independente da disposição dos elementos no vetor:
  - logical -> integer -> numeric -> complex -> character
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
```
