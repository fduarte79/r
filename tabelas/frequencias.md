```
> abs = table('N' = sample(0:9, 99, replace = T))
> rel = round(prop.table(abs),digits=3)
> acu = cumsum(rel)
> df_freq = cbind(abs, rel,acu)
> df_freq
  abs   rel   acu
0  18 0.182 0.182
1   8 0.081 0.263
2   5 0.051 0.314
3  10 0.101 0.415
4   7 0.071 0.486
5   7 0.071 0.557
6  10 0.101 0.658
7  12 0.121 0.779
8  12 0.121 0.900
9  10 0.101 1.001
```
