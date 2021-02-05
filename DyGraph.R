buonngay = tail(mutate(select(tq_get("AZRE", get = "stock.prices", from = begin, to = end),
                              3:6), id = row_number())[,c(5,1,2,3,4)],
                n=78)
dygraph(buonngay, main = "Candle Sticks") %>%
  dyAxis("x", rangePad = 15) %>%
  dyCandlestick()