<h1 align="center">Flutter</h1>

<p>Learning some things about the framework flutter!</p>

Components Básicos do Flutter.

`Row`, `Column`, `Stack`, `Container`

## Column
Para disposição do conteúdo na direção vertical, usa-se Main Axis para o conteúdo na vertical e Cross Axis para o conteúdo na horizontal

Seu SizedBox recebe o height, EX: height: double.infinity para controlar a direção horizontal.

## Row
Para disposição do conteúdo na direção horizontal, usa-se o Main Axis para o conteúdo na horizontal e Cross Axis para o conteúdo na vertical.

Seu SizedBox recebe o width, EX: width: double.infinity para controlar a direção vertical.

## Stack
Widget que suporta outros Widgets dentro de si, Alinhamento em pilha, o ultimo elemento escrito é o que fica por cima de todos, e o primeiro é o que fica mais ao fundo.

<hr>

Através do MainAxisAlignment e do CrossAxisAlignment é feita a disposição do layout, usando por EX:

`height: double.infinity` para Row e `width: double.infinity` para Column.

Para espaçamento entre os Widgets, ou Containeres utilizamos o SizedBox(); passando como parâmetro valores referente a sua direção desejada, Height para altura e Width para largura.

`BoxDecoration{}` pode ser utilizada dentro dos containers para estilização do mesmo, cores, bordas, etc.

Para espaçamento externo do Container podemos utilizar margin dentro do container, EX:

    margin: EdgeInsets.propriedade desejada();
    margin: EdgeInsets.symetric(horizontal: 10);

ou com Padding passado como pai do Container, Ex:

    padding: EdgeInsets.propriedade desejada();
    padding: EdgeInsets.symetric(horizontal: 10);

Formas de alinhamento de Stacks: `Align e Positioned`

Align é mais responsivo, Positioned fica travado no mesmo pixel.

FloatingActionButton pertence ao Scaffold. Dentro do Scaffold alteramos a propriedade de seu tamanho com location.
<hr>