// O que é ?
// é um padrão de projeto que espera despachar eventos ou mensagens em um programa
// Em Resumo ele é responsável por executar todos os processos dentro do sistema em uma determinada ordem

// Como ele funciona?
// Event loop funciona com o conceito de Filas onde dentro dele existem 2 tipos de filas
// - Filas de Event
// - Filas de MicroTask

// Filas de Event
// - São sempre FIFO (First in First Out)
// - Será sempre uma execução assíncrona
// - Tem baixa prioridade de execução (Se comparado as microTask)
// - Deve executar os processos pesados (Leitura, HTTP, Banco de Dados)

// Filas de MicroTask
// - São sempre FIFO (First in First Out)
// - Será sempre uma execução síncrona
// - Tem alta prioridade
// - Deve ser uma execução rápida

// Como realmente funciona?
// Sempre vai existis duas filas (Event e as MicroTask)
// Quando o event loop é excutado a primeira coisa que eu ele vê é se existe algum evento de prioridade(MicroTask) para ser executado
// Se sim - Ele entra na fila de MicroTask é pega o evento que irá ser executado. E esse processo ocorre até que acabe a fila das MicroTask
// Então ele passa para a fila de Event e executa os eventos.

// void Main é uma MicroTask
import 'dart:async';

void main() {
  print('Inicio Main');
  scheduleMicrotask(() => print('Microtask #1'));
  Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));

  scheduleMicrotask(() => print('MicroTask #2'));

  print('Fim Main');
}

// Filas 
/*
  Event
  - Future.delayed
  - Future #2
  - Future #3
 */
/*
  MicroTask
  - Main
  - Microtask #1
  - Microtask #2
 */
/*
  Event loop
  Primeiro ele focou nas microtask
  1 - Main
  2 - Microtask #1
  3 - Microtask #2
  Depois ele foi para os eventos, o evento Future #1 tinha um delay de 1 ssegundos 
  4 - Future #2
  5 - Future #2
  6 - Future #1
 */
