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





## Aula 2

```dart
void main() {
	String nome, sobrenome, email, senha, cpf, endereco, sexo, celular, curso, nome_social;
  
  int ano_nasc, idade, qtd_moradores;
  
  double renda_familiar, renda_pessoa;
  
  
  nome = "Marcus Vinícius";
  sobrenome = "Sousa Oliveira";
  email = "dartflutter@dev.com";
  senha = "jorge23";
  cpf = "518.664.308-40";
  endereco = "Rua da Desolação, Terra Média";
  sexo = "Masculino";
  celular = "(19) 99692-2210";
  curso = "Programador de Despositivos Móveis";
  nome_social = "";
  
  
  ano_nasc = 2002;
  idade = 2019 - ano_nasc;
  qtd_moradores = 3;
  
  
  renda_familiar = 3250;
  renda_pessoa = renda_familiar / qtd_moradores;
  
  
  print("________________________________________");
  print("Informações Pessoais");
  print("________________________________________");
  print("\nNome: $nome $sobrenome");
  
  if (nome_social != "")
  {  
  	print("Nome Social: $nome_social");
  }
  
  print("Sexo: $sexo");
  print("CPF: $cpf");
  print("Celular: $celular");
  print("Endereço: $endereco");
  print("Idade: $idade");
  print("Ano de Nascimento: $ano_nasc");
  print("\n________________________________________");
  print("Informações SENAC");
  print("________________________________________");
  print("\nCurso: $curso");
  print("Moradores na mesma residencia: $qtd_moradores");
  print("Renda familiar: R\$ $renda_familiar");
  print("Renda por pessoa: R\$ ${renda_pessoa.toStringAsFixed(2)}");
  }
```
