# Tabelas de Frequências

Para obtermos distribuições de frequências de um conjunto de dados no R, usaremos o pacote `ISwR`, que contémos casos de AVC em Tartu, Estônia entre os anos 1991 e 1993, com acompanhamento até 1996

## Obtendo informações

```head```: lê as primeiras ```n``` linhas 
```
library('ISwR')
> head(stroke, n=10)   # 10 primeiras linhas
      sex       died       dstr age dgn coma diab minf han  dead   obsmonths
1    Male 1991-01-07 1991-01-02  76 INF   No   No  Yes  No  TRUE  0.16339869
2    Male       <NA> 1991-01-03  58 INF   No   No   No  No FALSE 59.60784314
3    Male 1991-06-02 1991-01-08  74 INF   No   No  Yes Yes  TRUE  4.73856209
4  Female 1991-01-13 1991-01-11  77 ICH   No  Yes   No Yes  TRUE  0.06535948
5  Female       <NA> 1991-01-13  76 INF   No  Yes   No Yes FALSE 59.28104575
6    Male 1991-01-13 1991-01-13  48 ICH  Yes   No   No Yes  TRUE  0.10000000
7  Female 1993-12-01 1991-01-14  81 INF   No   No   No Yes  TRUE 34.37908497
8    Male 1991-12-12 1991-01-14  53 INF   No   No  Yes Yes  TRUE 10.84967320
9  Female       <NA> 1991-01-15  73  ID   No   No   No Yes FALSE 59.21568627
10 Female 1993-11-10 1991-01-15  69 INF   No   No   No Yes  TRUE 33.66013072

> head(stroke, c(7, 5))   # 7 linhas e 5 colunas
     sex       died       dstr age dgn
1   Male 1991-01-07 1991-01-02  76 INF
2   Male       <NA> 1991-01-03  58 INF
3   Male 1991-06-02 1991-01-08  74 INF
4 Female 1991-01-13 1991-01-11  77 ICH
5 Female       <NA> 1991-01-13  76 INF
6   Male 1991-01-13 1991-01-13  48 ICH
7 Female 1993-12-01 1991-01-14  81 INF

> head(stroke, c(8, -4))   # 8 linhas, excluindo as 4 últimas colunas
     sex       died       dstr age dgn coma diab
1   Male 1991-01-07 1991-01-02  76 INF   No   No
2   Male       <NA> 1991-01-03  58 INF   No   No
3   Male 1991-06-02 1991-01-08  74 INF   No   No
4 Female 1991-01-13 1991-01-11  77 ICH   No  Yes
5 Female       <NA> 1991-01-13  76 INF   No  Yes
6   Male 1991-01-13 1991-01-13  48 ICH  Yes   No
7 Female 1993-12-01 1991-01-14  81 INF   No   No
8   Male 1991-12-12 1991-01-14  53 INF   No   No
```
```tail``` lê as ultimas ```n```  linhas

```
> tail(stroke, n=7)   # 7 últimas linhas
       sex       died       dstr age dgn coma diab minf han  dead  obsmonths
823 Female       <NA> 1993-12-23  80 INF   No   No   No Yes FALSE 24.1503268
824 Female       <NA> 1993-12-23  62 INF   No   No   No Yes FALSE 24.1503268
825 Female       <NA> 1993-12-26  55 INF   No  Yes  Yes Yes FALSE 24.0522876
826 Female 1994-06-20 1993-12-29  93 INF   No   No   No  No  TRUE  5.6535948
827 Female 1994-01-27 1993-12-31  81 INF  Yes   No   No  No  TRUE  0.8823529
828 Female       <NA> 1993-12-31  68 INF   No   No   No Yes FALSE 23.8888889
829 Female 1994-01-13 1993-12-31  74 INF   No   No   No Yes  TRUE  0.4248366

> tail(stroke, c(5, -6))   # 5 colunas, excluindo as 6 últimas colunas
    diab minf han  dead  obsmonths
825  Yes  Yes Yes FALSE 24.0522876
826   No   No  No  TRUE  5.6535948
827   No   No  No  TRUE  0.8823529
828   No   No Yes FALSE 23.8888889
829   No   No Yes  TRUE  0.4248366
```

```str``` exibe a estrutura do objeto
```
> str(stroke)
'data.frame':	829 obs. of  11 variables:
 $ sex      : Factor w/ 2 levels "Female","Male": 2 2 2 1 1 2 1 2 1 1 ...
 $ died     : Date, format: "1991-01-07" NA "1991-06-02" "1991-01-13" ...
 $ dstr     : Date, format: "1991-01-02" "1991-01-03" "1991-01-08" "1991-01-11" ...
 $ age      : int  76 58 74 77 76 48 81 53 73 69 ...
 $ dgn      : Factor w/ 4 levels "ICH","ID","INF",..: 3 3 3 1 3 1 3 3 2 3 ...
 $ coma     : Factor w/ 2 levels "No","Yes": 1 1 1 1 1 2 1 1 1 1 ...
 $ diab     : Factor w/ 2 levels "No","Yes": 1 1 1 2 2 1 1 1 1 1 ...
 $ minf     : Factor w/ 2 levels "No","Yes": 2 1 2 1 1 1 1 2 1 1 ...
 $ han      : Factor w/ 2 levels "No","Yes": 1 1 2 2 2 2 2 2 2 2 ...
 $ dead     : logi  TRUE FALSE TRUE TRUE FALSE TRUE ...
 $ obsmonths: num  0.1634 59.6078 4.7386 0.0654 59.281 ...
```
