# Senac
Curso Desenvolvimento de Aplicativos Móveis

Usando **DART** e **FLUTTER**

## Aula 1 - Variáveis

Espaço reservado em memória para armazenar um valor temporariamente.


### Exemplo 1 - Tipos de Variáveis

##Tipos de Viriáveis
- **String** - textos
- **int** - números inteiros
- **double** - números decimais

```
void(){
  String nome = "Marcus";
  int idade = 17;
  double altura = 1.80;
}
```

### Exemplo 2 - Cálculo Simples

```
void main() {
 /* Criar variaveis para nome, sobrenome, email e ano de 
  * nascimento, calcular a idade e mostrar ao final uma msg
  * com todos esses dados.
  */
  
  String nome, sobrenome, email;
  nome = "Marcus";
  sobrenome = "Oliveira";
  email = "marcus.vincius912@outlook.com";
      
  int ano_de_nascimento, idade;
  ano_de_nascimento = 2002;
  idade = 2019 - ano_de_nascimento;
  
  
  print("Nome: $nome $sobrenome \nEmail: $email \nIdade: $idade");
  
  
  //   \n = quebra de linha.
}
```
