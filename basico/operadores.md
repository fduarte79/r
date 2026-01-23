# Operadores 

## Tipos de dados
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

## Atribuição e outros
```
2+3; 4-1  # declaração que permite vários comandos em um linha
[1] 5
[1] 3
a = 1     # atribuição
a <- 1    # atribuição alternativa
```

## Matemáticos
```
3 + 2    # soma
[1] 5
4 - 1    # subtração
[1] 3
4 / 2    # divisão
[1] 2
9 * 2    # multiplicão
[1] 18
3 ** 2   # potenciação
[1] 9
3 ^ 2    # potenciação
[1] 9
```
