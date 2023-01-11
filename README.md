![914754](https://user-images.githubusercontent.com/91103250/211206269-14ec2a64-1fbb-41ee-96af-6094e6a53ccd.jpg)

# Balanceamento de Classes - Machine Learning
Este repositório tem como objetivo compartilhar códigos em R e Python para balanceamento de classe em linguagem Python e R.
Além disso um passo importante para tal é a criação de variáveis dummy que será acrescentado futuramente a este respositório visto que a técnica SMOTE em Python funciona apenas com variáveis numéricas e não categóricas.

## Qual a importância do balanceamento de classes?
Muitas vezes o dataset do mundo real não vem balanceado, ou seja, a distribuição das categorias que tentamos prever não é igual ou próxima disso. 
Por exemplo, em um dataset de transações bancárias com e sem fraude, os registros sem fraude serão muito maiores que o outro. Isso é óbvio porque temos muito mais pessoas realizando operações dentro da lei do que o contrário. 

Dito isso, precisamos igualar esse número de registros porque o algoritmo precisa "aprender" com a exposição a um número de registros parecidos, um divisão de 45/55 entre as classes mais ou menos. Fora isso, é recomendado balancear as classes porque a acurácia e demais métricas do modelos melhoram subtancialmente. 

## Por que criar variáveis dummy?

Muito algoritmos de Machine Learning usam modelos matemáticos para realizar suas previsões, como nós sabemos. Porém, nem todos os dados com os quais trabalhamos são numéricos, por exemplo o estado civil de uma pessoa. Este atributo em questão pode ter pelo menos 3 classificações, como casado, solteiro, viúvo.

Ao converter esses dados em categorias, vale lembrar que muitos algoritmos processam apenas dados numéricos, geralmente essas classes são convertidas em número. Exemplo, casado = 1, solteiro = 2 e viúvo = 3. Ao treinar um modelo, ele pode acabar considerando esses valores e isso pode impactar no resultado final. 

Para evitar esse tipo de problema, usamos as variáveis dummy que basicamente é a conversão dos atributos em linha para coluna. Ainda com o exemplo do estados civil, utilizando o dummy iríamos criar 3 colunas no dataset. Se for casado colocamos o valor 1, se for solteiro colocamos 0. Isso garante que os dados categóricos não terão peso no modelo final e teremos um modelo mais generalista possível.

Aqui no github eu compartilho o código no script em R usando o Caret, que é uma fórmula bem simples. Vale sempre lembrar que caso tenha dúvida se determinado algoritmo precisa usar dummy ou não, consulte a documentação do algoritmo. 

Caso tenha alguma sugestão, fique à vontade para compartilhar!! :)
