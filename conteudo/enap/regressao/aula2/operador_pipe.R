# operador pipe (%>%)
# canaliza a saída de uma função como argumento para outra função

'Usando pipe' %>% print  #  exemplo

x <- c(10.5, 30.7, 40.8, 50.9) # vetor

sqrt(sum(x))       # exemplo simples sem pipe
x %>% sum %>% sqrt # exemplo simples com pipe

airquality %>% # exemplo mais completo
   na.omit %>%
   lm(Ozone ~ Wind + Temp + Solar.R, data = .) %>%
   summary
