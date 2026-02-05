# Funções Úteis

## Vetores
```
# vetores de caracteres
z = vector('character', length=6)          
z
[1] "" "" "" "" "" ""

# vetores lógicos
z = vector('logical', length=6)            
z
[1] FALSE FALSE FALSE FALSE FALSE FALSE    

# vetores de números
z = vector('numeric', length=6)            
z
[1] 0 0 0 0 0 0
```

## Sequencias
```
# sequencia em ordem crescente (inicio, fim, incremento)
seq(0,20,4)                                
[1]  0  4  8 12 16 20

# sequencia em ordem decrescente (inicio, fim, decremento)
seq(30,20,-4)                              
[1] 30 26 22

# sequencia com incremento decimal
seq(0,1.5,.25)                             
[1] 0.00 0.25 0.50 0.75 1.00 1.25 1.50
```

## Repetições
```
# repete o caractere A, quatro vezes
rep('A', 4)
[1] "A" "A" "A" "A"

# repete a lista de caracteres
rep(c('A', 'B', 'C'), 4)
 [1] "A" "B" "C" "A" "B" "C" "A" "B" "C" "A" "B" "C"

# combina a lista de caracteres, com a lista de repetições
rep(c('A','B','C'), c(3,2,1))
[1] "A" "A" "A" "B" "B" "C"
```
[Home](../../README.md)
