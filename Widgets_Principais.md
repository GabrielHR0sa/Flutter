# Stateless Widget (Widget Sem Estado):

Um StatelessWidget é um widget que não tem estado interno mutável. Isso significa que suas propriedades e aparência não mudam depois de serem construídas.

Esses widgets são usados para representar partes da interface do usuário que não precisam ser redesenhadas ou atualizadas com frequência. Eles são eficientes em termos de desempenho.

Um exemplo comum de StatelessWidget é um ícone ou um botão que não muda de aparência após a construção.

Exemplo de um StatelessWidget simples:

    class MyButton extends StatelessWidget {
    final String text;

    MyButton(this.text);

    @override
    Widget build(BuildContext context) {
        return RaisedButton(
        child: Text(text),
        onPressed: () {
            // Ação a ser executada quando o botão     for pressionado
            },
            );
        }
    }

# Stateful Widget (Widget Com Estado):

Um StatefulWidget é um widget que pode ser reconstruído dinamicamente e mantém um estado mutável.

Eles são usados quando você precisa que parte da interface do usuário seja atualizada com base em eventos ou interações do usuário.

Cada StatefulWidget possui um objeto State associado que contém o estado e pode ser atualizado usando o método setState.

Exemplo de um StatefulWidget simples:

    class CounterWidget extends StatefulWidget {
    @override
    _CounterWidgetState createState() => _CounterWidgetState();
    }

    class _CounterWidgetState extends State<CounterWidget> {
    int _counter = 0;

    void _incrementCounter() {
        setState(() {
        _counter++;
        });
    }

    @override
        Widget build(BuildContext context) {
        return Column(
        children: <Widget>[
        Text('Contagem: $_counter'),
            RaisedButton(
                onPressed: _incrementCounter,
                child: Text('Incrementar'),
            ),
        ],
        );
    }
    }

# Inherited Widget (Widget Herdado):

Um InheritedWidget é usado para compartilhar dados eficientemente com widgets descendentes na árvore de widgets, sem a necessidade de passar explicitamente esses dados como argumentos em cada nível.

Eles são úteis para gerenciar estados globais que precisam ser compartilhados entre vários widgets.

Um exemplo comum é o Theme widget, que fornece informações de estilo para toda a árvore de widgets.


Exemplo de um uso do InheritedWidget:

    class MyInheritedWidget extends InheritedWidget {
    final int data;

        MyInheritedWidget({
            Key key,
            @required this.data,
            @required Widget child,
        }) : super(key: key, child: child);

        static MyInheritedWidget of(BuildContext context) {
          return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
        }

        @override
        bool updateShouldNotify(MyInheritedWidget oldWidget) {
            return data != oldWidget.data;
        }
    }


##