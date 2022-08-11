// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_biblas/database/modules/livro/livroUsuario.dart';
import 'package:projeto_biblas/database/repository_mock/repository_mock.dart';

void main() {
  RepositoryMock repository = RepositoryMock();
  LivroUsuario teste =
      LivroUsuario(DateTime.now(), repository.livros[1], DateTime.now(), 'oi');
  test("teste pegarLivroPorTag", () {
    expect(repository.pegarLivroPorTag(["engenharia"]),
        [repository.livros[0], repository.livros[1], repository.livros[2]]);
    expect(repository.pegarLivroPorTag(["eh o brancas!"]), []);
    expect(repository.pegarLivroPorTag(["economia"]), [repository.livros[4]]);
  });
  test("teste pegarTodosOsLivros", () {
    expect(repository.pegarTodosOsLivros(), repository.livros);
  });
  /*test("teste _nomeAutor", () {
    expect(repository.nomeAutor("João Vitor Choueri Branco"), "Branco J V C");
  });*/

  test("teste pegarLivroPorMateria", () {
    expect(repository.pegarLivroPorMateria("Algoritmos e Programação"),
        [repository.livros[0]]);
  });
  test("teste pegarLivroPorAutor", () {
    expect(repository.pegarLivroPorAutor("Nilo Ney Corinho Menezes"),
        [repository.livros[0]]);
    expect(
        repository.pegarLivroPorAutor("Menezes N N C"), [repository.livros[0]]);
    expect(repository.pegarLivroPorAutor("Menezes N. N. C"),
        [repository.livros[0]]);
    expect(repository.pegarLivroPorAutor("Eh O Brancas"), []);
    expect(repository.pegarLivroPorAutor("Nilo Ney"), [repository.livros[0]]);
  });

  test("teste pegarLivroPorTitulo", () {
    expect(
        repository.pegarLivroPorTitulo("Introdução à Programação com Python"),
        [repository.livros[0]]);
    expect(repository.pegarLivroPorTitulo("dos"),
        [repository.livros[1], repository.livros[5]]);
    expect(repository.pegarLivroPorTitulo("I am Brancas 😎"), []);
  });
  /*test("teste tirarAcento", () {
    expect(repository.tirarAcento("olá"), "ola");
    expect(repository.tirarAcento("algoritmos e programação"),
        "algoritmos e programacao");
  }); => virou método privado*/
}
