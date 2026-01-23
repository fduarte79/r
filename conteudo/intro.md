# Operadores

## Atribuição e outros
```
# comentário: permite escrever algo que não será interpretado como um trecho de código que deveria ser executado

# ; declaração que permite vários comandos em um linha
2+3; 4-1     
[1] 5
[1] 3

# = atribuição
a = 1        
a
[1] 1

# <- atribuição alternativa
a <- 1       
a
[1] 1

# : especifica uma faixa
5:7          
[1] 5 6 7
```

## Matemáticos
```
# soma
3 + 2        
[1] 5

# subtração
4 - 1        
[1] 3

# divisão
4 / 2        
[1] 2

# multiplicão
9 * 2        
[1] 18

# potenciação
3 ** 2       
[1] 9

# potenciação
3 ^ 2        
[1] 9
```

## Operadores Relacionais
```
# igual
4 == 4       
[1] TRUE

# diferente
4 != 5       
[1] TRUE

# menor
1 < 2        
[1] TRUE

# menor ou igual
1 <= 2       
[1] TRUE

# maior
5 > 3        
[1] TRUE

# maior ou igual
5 >= 3       
[1] TRUE

# operadores relacionais também pode ser utilizado por caracteres
'A' > 'Z'    
[1] FALSE

# operadores relacionais também podem filtrar
x[x < 'C']   
[1] "A" "B"
```

## Operadores Booleanos
```
# E booleano
T & T        
[1] TRUE

# OU booleano
T | F        
[1] TRUE

# NEGATIVO booleano
T & !T       
[1] FALSE
```

## Valores Especiais
```
# + infinito
1/0         
[1] Inf

# - infinito
-1/0        
[1] -Inf 

pi
[1] 3.141593
```
