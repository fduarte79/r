# Tabelas de Frequências

Para obtermos distribuições de frequências de um conjunto de dados no R, usaremos o pacote `ISwR`, que contémos casos de AVC em Tartu, Estônia entre os anos 1991 e 1993, com acompanhamento até 1996

## Obtendo informações sobre o data frame

### Head

**head**: permite ver linhas especificadas pelo paramêtro ```n=```
```
> head(iris, n=10)            # 10 primeiras linhas
   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1           5.1         3.5          1.4         0.2  setosa
2           4.9         3.0          1.4         0.2  setosa
3           4.7         3.2          1.3         0.2  setosa
4           4.6         3.1          1.5         0.2  setosa
5           5.0         3.6          1.4         0.2  setosa
6           5.4         3.9          1.7         0.4  setosa
7           4.6         3.4          1.4         0.3  setosa
8           5.0         3.4          1.5         0.2  setosa
9           4.4         2.9          1.4         0.2  setosa
10          4.9         3.1          1.5         0.1  setosa

> head(iris, c(3, 2))             # 3 linhas e a 2 primeiras colunas
  Sepal.Length Sepal.Width
1          5.1         3.5
2          4.9         3.0
3          4.7         3.2
```



```

```


```

```
