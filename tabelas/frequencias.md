```
abs     <- table('N' = sample(0:9, 150, replace = T)) # conta as frequencias absolutas
dst     <- cut(abs, breaks=c(0,5,10,15,20))           # faz a distribuição
rel     <- round(prop.table(abs),digits=3)            # calcula a frequencia relativa
acu     <- cumsum(rel)                                # calcula a frequencia acumulada
df_freq <- cbind(abs, rel, acu, dst)                  # agrupa as tabelas em um data frame
df_freq

  abs   rel   acu dst
0   7 0.047 0.047   2
1  17 0.113 0.160   4
2   9 0.060 0.220   2
3  17 0.113 0.333   4
4  18 0.120 0.453   4
5  15 0.100 0.553   3
6  15 0.100 0.653   3
7  14 0.093 0.746   3
8  19 0.127 0.873   4
9  19 0.127 1.000   4
```
