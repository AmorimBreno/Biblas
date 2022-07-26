// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_biblas/database/repository_mock/LivrosRepository.dart';

void main() {
  LivrosRepository repository = LivrosRepository();
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
}
