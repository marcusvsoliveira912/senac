## Criando titulo e estilizando

- Primeiramente adicionamos o ***classe*** *Scaffold*, que cria a estrutura básica de layout
  do Widget Material Design, e nos permite criar objetos na tela.
- Depois adicionamos o **AppBar** (Barra do Aplicativo).
- Por fim, estilizamos ela com o ***style***.

```dart

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cabeçss"),
            centerTitle: true,
             backgroundColor: Colors.purple,
        ), // AppBar
      ), // Scaffold
    ), // MaterialApp
  ); // RunApp
}

```

## Criando Menu/Gaveta 

**Menu/Gaveta/Drawer** é aonde podemos colocar títulos, ícones e botões.

É um painel de design de material que desliza horizontalmente a partir da
borda de um ***Scaffold*** para mostrar links de navegação em um aplicativo.

```dart

void main(){
  runApp(
      MaterialApp(
          home: Scaffold(
              drawer: Drawer(
              ),
            appBar: AppBar(
              title: Text("AppBar"),
              centerTitle: true,
              backgroundColor: Colors.purple,
            ),
          ),
      ),
  );
}

```

## Costumizando o Drawer

Trocando a cor de fundo, adicionando foto, informações e menus.

```dart

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Marcus Vinícius Oliveira",
                  style: TextStyle(color: Colors.cyan, fontSize: 18.0),
                ),
                accountEmail: Text(
                  "marcus.vinicius912@outlook.com",
                  style: TextStyle(color: Colors.cyan, fontSize: 16.0),
                ),
                currentAccountPicture: Image.network("url da imagem desejada"),
                decoration: BoxDecoration(color: Colors.limeAccent),
              ),
              ListTile(
                title: Text("Menu1"),
                trailing: Icon(Icons.adb),
              ),
              ListTile(
                title: Text("Menu 2"),
                trailing: Icon(Icons.android),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("AppBar"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
      ),
    ),
  );
}

```
