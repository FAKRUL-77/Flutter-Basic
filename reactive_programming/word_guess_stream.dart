import 'dart:html';
import 'dart:async';


void main()
{
  final ButtonElement button = querySelector('button');
  
  final InputElement input = querySelector('input');

  button.onClick.take(4).where((event)=>input.value == 'banana').listen((event) => print('You got it !'), onDone: () => print('Bad guesses.'));
}