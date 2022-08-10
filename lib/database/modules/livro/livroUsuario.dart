import 'package:date_format/date_format.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';

class LivroUsuario {
  Livro livro;
  DateTime retirada;
  DateTime limite;
  LivroSituacao status;
  late String dataRetirada;
  late String dataLimite;

  LivroUsuario(this.livro, this.retirada, this.limite, this.status) {
    if (status == LivroSituacao.RETIRAR || status == LivroSituacao.FILA) {
      dataRetirada = "---";
    } else {
      dataRetirada = formatDate(retirada, [dd, '/', mm, '/', yyyy]);
    }
    if (status == LivroSituacao.RESERVADO || status == LivroSituacao.FILA) {
      dataLimite = "---";
    } else {
      dataLimite = formatDate(limite, [dd, '/', mm, '/', yyyy]);
    }
  }
}
