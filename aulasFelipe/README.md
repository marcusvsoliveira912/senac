## Criação do primeiro App em flutter

Para criar um aplicativo, além da função main(), precisamos de uma classe que herde de StatefulWidget ou de StatelessWidget.
- StatelessWidget 
  - É uma página que não pode ser atualizada. Ou seja, não tem "estado".
- StatefulWidget
  - É uma página que pode sofrer atualizações. Utilizamos para jogar valores em tela e lidar  com ações com o usuário.

**Exemplo de StatelessWifget** :snowflake:
```dart
class ClasseSemEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
**Exemplo de StatefulWidget** :zap:
```dart
class ClasseComEstado extends StatefulWidget {
  @override
  _ClasseComEstadoState createState() => _ClasseComEstadoState();
}

class _ClasseComEstadoState extends State<ClasseComEstado> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```
### Widgets utilizados

Para o aplicativos da calculadora simples, utilizamos os seguintes Widgets:
 - Container
   - Serve como uma "caixa" para outro Widget. Ele pode ter um parâmetro child.Ele pode ter também margem interna (padding).
 - TextField
   - Campo de texto permite que os usuários digitem texto em um aplicativo.
 - SizedBox
   - Serve como espaçamentos entre um widget e outro. Pode ser espaçamento vertical e horizontal.
 - DropdownButton
   - É um botão que, qunado pressionado, lista as opções criadas e permite que seja selecionada uma delas.
 - RaisedButton
   - Serve como botão.
 - Column
   - É um Widget de layout para colocar outros widgets um embaixo do outro. Aceitar um parâmetro children (são vários widgets).
 - Center
   - Serve para centralizar o Widget que for passado como filho (child)
  
  ### Eventos (funções) utilizados
  
  - onChanged:
    - Foi utilizado na DropdaownButton para atualizar a operação escolhida.
  - onPressed:
    - Foi utilizado no RaisedButton para realizar o cálculo.
  - Utilizado **SEMPRE** que a tela precisou ser *atualizada*.
