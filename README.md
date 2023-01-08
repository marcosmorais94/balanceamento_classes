![914754](https://user-images.githubusercontent.com/91103250/211206269-14ec2a64-1fbb-41ee-96af-6094e6a53ccd.jpg)

# Balanceamento de Classes - Machine Learning
Este repositório tem como objetivo compartilhar códigos em R e Python para balanceamento de classe em linguagem Python e R.
Além disso um passo importante para tal é a criação de variáveis dummy que será acrescentado futuramente a este respositório visto que a técnica SMOTE em Python funciona apenas com variáveis numéricas e não categóricas.

## Qual a importância do balanceamento de classes?
Muitas vezes o dataset do mundo real não vem balanceado, ou seja, a distribuição das categorias que tentamos prever não é igual ou próxima disso. 
Por exemplo, em um dataset de transações bancárias com e sem fraude, os registros sem fraude serão muito maiores que o outro. Isso é óbvio porque temos muito mais pessoas realizando operações dentro da lei do que o contrário. 

Dito isso, precisamos igualar esse número de registros porque o algoritmo precisa "aprender" com a exposição a um número de registros parecidos, um divisão de 45/55 entre as classes mais ou menos. Fora isso, é recomendado balancear as classes porque a acurácia e demais métricas do modelos melhoram subtancialmente. 

## Informações Complementares
O datatset usado para esse exemplo já tinha variáveis dummy, isso é utilizado quando temos variáveis categóricas entre os atributos. Como disse anteriormente, vou compartilhar um script em R para demostrar como se faz essa transformação.

Caso tenha alguma sugestão, fique à vontade para compartilhar!!
