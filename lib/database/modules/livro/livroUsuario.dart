import 'package:projeto_biblas/database/modules/livro/livro.dart';

class LivroUsuario {
  Livro livro;
  DateTime retirada;
  DateTime limite;
  String status;

  LivroUsuario(this.limite, this.livro, this.retirada, this.status);
}
