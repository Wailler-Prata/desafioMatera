# Desafio Cucumber

### Desafio 1 e 2
Estes desafios se encontram no diretório ```Exercicios-1-e-2```


### Desafio 3 Estrutura
Dentro da pasta ```features```, encontrará ```features``` escritas em ```Gherkin``` e o diretório ```step_definitions```, que por sua vez, possui a definição dos testes. 

### Execução do teste e resultados
Para executar o teste basta rodar o comando ```"rum:cucumber"``` ou ````npx cucumber-js``.

* Durante a exploração do Endpoint objeto de teste. Notei que ao efetuarmos uma requisição com um valor diferente de um inteiro, ainda é retornado Breeds. Conforme a documentação do EndPoint isso esta incorreto. O valor a ser passado teria que ser um valor inteiro. 

[Link do EndPoint](https://catfact.ninja/#/Breeds/getBreeds)
