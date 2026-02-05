# Objetos
### Caracteres
```
# com aspas simples
> caracter = 'A'        
> caracter
[1] "A"
> class(caracter)
[1] "character"
> object.size(caracter)   # espaço utilizado
112 bytes  

# com aspas duplas
> caracteres = "ABC"    
> caracteres
[1] "ABC"
> class(caracteres)
[1] "character"
> object.size(caracteres)   # espaço utilizado
112 bytes
```
### Numérico (real)
``` 
> numerico = 0
> numerico
[1] 0
> class(numerico)
[1] "numeric"
> object.size(numerico)   # espaço utilizado
56 bytes  
```
### Inteiro
```
> inteiro = 3L
> inteiro
[1] 3
> class(inteiro)
[1] "integer"
> object.size(inteiro)    # espaço utilizado
56 bytes 
```
### Complexo
```
> complexo = 1+0i
> complexo
[1] 1+0i
> class(complexo)
[1] "complex"
> object.size(complexo)   # espaço utilizado
64 bytes
```
### Boolenao
```
> logico = TRUE
> logico
[1] TRUE
> class(logico)
[1] "logical"
> object.size(logico)
56 bytes  # espaço utilizado
> falso = F
> falso
[1] FALSE
> class(falso)
[1] "logical"
```
### `NULL`
É retornado por expressões e funções e tem valor indefinido
```
# NULL retorns
> class(NULL)
[1] "NULL"
> object.size(NULL)
0 bytes
```

### `NA` (*Not Available*)\
NA é uma constante lógica de comprimento 1 que contém um indicador de valor ausente. NA pode ser convertida para qualquer outro tipo de vetor, exceto raw.
```
> class(NA)
[1] "logical"
> object.size(NA)
56 bytes
```
### `NaN` (*Not a Number)*\
Valor numérico especial para resultados indefinidos, usado exclusivamente com tipos numéricos. `NaN` indica um cálculo matemático indefinido ou impossível.
```
> 0/0
[1] NaN
> -Inf/Inf
[1] NaN
> class(NaN)
[1] "numeric"
> object.size(NaN)
56 bytes
```
[Home](../../../README.md)
