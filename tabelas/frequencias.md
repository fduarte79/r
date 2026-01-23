```
abs = table('N' = sample(0:9, 99, replace = T)) # conta as frequencias absolutas
dst = cut(abs, breaks=c(A, B, C, D, E))      # faz a distribuição
rel = round(prop.table(abs),digits=3)           # calcula a frequencia relativa
acu = cumsum(rel)                               # calcula a frequencia acumulada
df_freq = cbind(abs, rel, acu, dst)
df_freq
```
