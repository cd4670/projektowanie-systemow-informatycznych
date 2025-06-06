text <- "And so even though we face the difficulties of today and tomorrow, I still have a dream."
text
install.packages("qdap")
library(qdap)
freq_terms(text)
frequent_terms <- freq_terms(text)

frequent_terms
plot(frequent_terms)
?freq_terms
install.packages("ggplot2")
library(ggplot2)


ggplot(frequent_terms, aes(x = WORD, y = FREQ)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "Słowo", y = "Częstość") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ggtitle("Wykres częstości słów")

ggplot(frequent_terms, aes(y = WORD, x = FREQ)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(x = "Słowo", y = "Częstość") +
  theme(axis.text.x = element_text(angle = 0, hjust = 1)) +
  ggtitle("Wykres częstości słów")

ggplot(frequent_terms, aes(x = FREQ, y = reorder(WORD, FREQ))) +
  geom_bar(stat = "identity", fill = "skyblue", color = "darkblue", alpha = 0.8) +
  labs(x = "Częstość", y = "Słowo") +
  ggtitle("Wykres częstości słów") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 10), # Dostosowanie rozmiaru czcionki etykiet na osi Y
        plot.title = element_text(hjust = 0.5, size = 16, face = "bold"), # Wyśrodkowanie i stylizacja tytułu wykresu
        panel.grid.major.y = element_blank(), # Usunięcie głównych linii siatki poziomej
        panel.grid.minor.y = element_blank(), # Usunięcie mniejszych linii siatki poziomej
        axis.line = element_line(color = "black")) # Dostosowanie linii osi

library(qdap)
frequent_terms2 <- freq_terms(text, stopwords = Top25Words)
frequent_terms3 <- freq_terms(text, stopwords = Top100Words)
frequent_terms4 <- freq_terms(text, stopwords = Top200Words)

frequent_terms2
frequent_terms3
frequent_terms4

plot(frequent_terms4)

