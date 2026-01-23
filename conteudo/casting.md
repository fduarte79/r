# Casting, Conversão ou Coerção
+ A conversão é feita na sequência:
  - logical -> integer -> numeric -> complex -> character
+ R permite converter para os mais diversos tipos de dados
  - as.tipo_de_dado()
+ pi é um dado do tipo numérico por natureza porém, ele pode ser convertido
```
class(pi)
[1] "numeric"
class(as.vector(pi))
[1] "numeric"
class(as.character(pi))
[1] "character"
class(as.logical(pi))
[1] "logical"
class(pi)
[1] "numeric"
```
