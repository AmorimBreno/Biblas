import 'package:projeto_biblas/database/modules/livro/livro.dart';

class LivroUsuario extends Livro {
  late String status;
  late DateTime retirada;
  late DateTime limite;

  LivroUsuario(
      String titulo,
      String codigo,
      List<String> autor,
      int lancamento,
      String sinopse,
      String edicao,
      List<String> tags,
      String imagemLivro,
      this.status,
      this.retirada)
      : super(titulo, codigo, autor, lancamento, sinopse, edicao, tags,
            imagemLivro) {
    limite = retirada.add(const Duration(days: 7));
  }
}
