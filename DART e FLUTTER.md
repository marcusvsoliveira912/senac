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

```dart
void(){
  String nome = "Marcus";
  int idade = 17;
  double altura = 1.80;
}
```

### Exemplo 2 - Cálculo Simples

```dart
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

**.toStringAsFixed = dita a quantidade de digitos após a vírgula ou ponto**

**if = cria uma codição lógica**

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
  print("Email: $email");
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

## Condição Lógica *IF*

O IF serve para determinar se um bloco de untruções **deve** ou **não** ser executado, pode-se dizer que sempre que for necessário **testar** algum valor usaremos o *if*.

### Operadores Lógicos

- == *Igualdade*
- != *Difrente*
- \>= *Maior ou Igual*
- <= *Menor ou Igual*
- \> *Maior*
- < *Menor*

### Sintaxe

```dart

if(teste_logico)
{
	//faz isso se o teste for verdadeiro
}
else
{
	//faz isso se o teste for falso	
}

```

### Exemplo if

```dart 

String curso = "programador android";

if(curso == "programador android")
{
	print("Parábens, você faz ótimas escolhas.");
}
else
{
	print("Vacilão, aposto que você faz ADM.");
}

```

### Exemplo 2

```dart

void main() {
/*Criar 3 variaveis "double"
 *nota1, nota2, média
 Fazer o "if" testando SE a media for
 maior ou igual a 5:
 
 print("APROVADO - PASSOU !!!!")
 senao
 print("REPROVADO ...")*/
  
double nota1, nota2, media;
  
  nota1 = 4.5;
  nota2 = 3.2;
  media = nota1 + nota2;
  media = media / 2;
  
  if(media >= 5)
  {
    	print("Aprovado com média: $media");
  }
  else
  {
    	print("Reprovado com média: $media");
  }
}

```


### Aula 3 - Lógica com DART

Foi importada a *biblioteca* **dart:math*** para podermos usar funções matemática como potência e raiz quadrada,
no exemplo abaixo foi usada a função **math.sqrt()** para calcular a raiz de delta.

- Após a importação foi dado um "apelido" para chamar a função atraés da sintaxe **as** (dart:math as **math**)
- Foram usados  if, o 1º pada dar acesso através da palavra mágica "Mengão" e o 2º para fazer a equação.
- Cada if tem seu próprio else, daí a importância de *identar*, organizar o código com **TABS**

### Exemplos usando math
```dart

print(math.sqrt(9));  //Exibe a raiz de 9
print(math.pi);  //Exibe o valor de pi
print(math.pow(2,7));  //exibe o resultado de 2 elevado a 7

```
### Exemplo Usando If dentro de If (Login e Equação de 2º grau)

```dart

import 'dart:math' as math; 
void main() {
  String palavra_magica;
  
  palavra_magica = "Mengão";
  if(palavra_magica == "Mengão")
  {
    print("Exercício 1 - Bhaskara");
    
    double delta, a, b, c;
    a = 1;
    b = -10;
    c = 25;
    delta = (b * b) - 4 * a * c;
    print("O DELTA É = $delta");
    
    if(delta < 0)
    {
      print("Nnenhuma raiz real porquê o delta é menor que 0");
    }
    else
    {
     double raiz_q, x1, x2;
     
     //Raiz Quadrada
     
     raiz_q = math.sqrt(delta);
     print("A raiz de delta é = $raiz_q");
     
     x1 = (-b + raiz_q) / (2 * a);
     x2 = (-b - raiz_q) / (2 * a);
      
     print("x1 = $x1 \nx2 = $x2");
     
     
    }
    
  }
  else
  {
    print("Some daqui, meu! Some daqui!");
  }
  
}

```

### *IF* Aninhado ou *IF* Encadeado

Quando temos mais do que 2 testes possíveis, é necessário alterar a estrutura e acrescentar um **else if** após o primeiro if.

```dart

void main() {
  String cidade_natal;
  
  cidade_natal = "Aguaí";
  
  if(cidade_natal.toLowerCase() == "são joão da boa vista")
  {
    print("Sanjanense");
  }
  else if(cidade_natal.toLowerCase() == "tilambuco")
  {
    print("Tilambuquense");
  }
  else if(cidade_natal.toLowerCase() == "salvador")
  {
    print("Baiano");
  }
  else if(cidade_natal.toLowerCase() == "aguaí")
  {
    print("Bandido");
  }
  else if(cidade_natal.toLowerCase() == "pindamonhangaba")
  {
    print("Jaiminho Carteiro");
  }
  else 
  {
    print("Cidade não encontrada");
  }
}

```

