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
