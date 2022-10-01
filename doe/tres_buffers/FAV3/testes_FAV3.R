### ANOVA DA VARI?VEL DE INTERESSE FAV3 ###

# Carrega o pacote "readxl" para possibilitar a leitura das planilhas do Excel 97-2003 e do Excel 2007/10
library(readxl)

# Realiza a leitura da base de dados
dados <- read_excel("D:/PSIoT-SARSA/doe/tres_buffers/FAV3/testes_FAV3.xlsx")

# Anexa a base de dados
attach(dados)

# Codifica os vetores b1b2b3i, epsilon e T1T2T3i como fatores
b1b2b3i = as.factor(b1b2b3i)
epsilon = as.factor(epsilon)
T1T2T3i = as.factor(T1T2T3i)

# Constr?i a ANOVA
anova = aov(FAV3~b1b2b3i+epsilon+T1T2T3i,data=dados)

# Mostra o resultado da ANOVA
summary(anova)

### TESTE DE PRESSUPOSTOS DA ANOVA ###

# Teste de normalidade (Shapiro-Wilk)
shapiro.test(residuals(anova))

# Teste de homocedasticidade (Bartlett)
bartlett.test(FAV3~b1b2b3i,data=dados)
bartlett.test(FAV3~epsilon,data=dados)
bartlett.test(FAV3~T1T2T3i,data=dados)

# Teste de independ?ncia das observa??es (Durbin-Watson)
library(lmtest)
dwtest(anova)

### TESTE DE TUKEY ###
tk_teste <- TukeyHSD(anova)
tk_teste

