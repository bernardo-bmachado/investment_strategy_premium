library(rb3)
library(dplyr)
library(arrow)

# Busca os contratos a partir de 2000
df <- futures_mget(
  first_date = "2000-01-01",
  last_date = "2025-06-27",
  by = 5
)

df <- df[df$commodity == "DI1", ]


### Salvar em parquet
write_parquet(df, "C:/Users/Bernardo Machado/TCC/Rb3/data.parquet")
