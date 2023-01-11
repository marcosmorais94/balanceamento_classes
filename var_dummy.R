# Introdução ####

# Este script tem como objetivo compartilhar uma forma simples de 
# criar variáveis dummy em um dataset.

# É uma importante ferramenta porque os atributos de categóricos ficam com o mesmo peso 
# ao utilizar um algoritmo de machine learning.

# O dataset utilizado é o Income Dataset disponibilizado pelo UCI.
# Os dados estarão disponíveis no GitHub.

# Definindo diretório ####
setwd('C:/FCD/R/Processamento_dummy')
getwd()

# Carga dos datasets ####

# Carga do dataset 1 e 2
bd1 <- read.csv('adult_train.csv') #32.561 registros
bd2 <- read.csv('adult_test.csv') # 16.281 registros

# União dos datasets
bd <- rbind(bd1, bd2) #48.842 registros

# Verifica dataset e os tipos de dados
View(bd)
str(bd)

# O foco aqui serão as variáveis categóricas deste dataset

# Carga dos pacotes ####

library(caret) #pacote com a função para a varíavel dummy
library(dplyr) #Usado por conta do pré-processamento, não é obrigatório carregar

# Pré-Processamento ####

# Com o objetivo de tornar o código mais limpo, será feito uma breve limpeza nos dados
# Ideal que seja feito antes de aplicar a fórmula do pacote Caret.

# Cópia do dataset original
bd_modelo <- bd

# Ajuste na variável preditora
bd_modelo$income <- case_when(bd$income == ' <=50K' ~ '<=50K',
                              bd$income == ' >50K' ~ '>50K',
                              bd$income == ' <=50K.' ~ '<=50K',
                              bd$income == ' >50K.' ~ '>50K',
                              TRUE ~ 'NA')

# Remoção variável com mais registros inválidos
bd_modelo <- bd_modelo[bd_modelo$occupation != ' ?',]

# Varíavel Dummy ####

# Neste etapa vamos separar a variável preditora (target) do dataset
# A função exige que seja feita dessa forma, como se fosse um treino de modelo

# Separa a variável target
bd_dmy <- bd_modelo[,-15]

# Criação de variáveis dummy com todos os atributos do dataset
# Função considera apenas os numéricos
dmy <- dummyVars(" ~ .", data = bd_dmy, fullRank = T)

# Cria dataset unindo a variável target com os demais atributos
dat_modelo <- data.frame(predict(dmy, newdata = bd_dmy))

# Dataset com a variável dummy para os atributos categóricos
View(dat_modelo)

# Após essa etapa, o dataset pode ser usado para o treino do modelo ou
# alguma etapa anterior como análise exploratória ou pré-procesamento dos dados.
