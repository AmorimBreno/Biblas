/**
 * Livro a ser arquivado, deve conter TÍTULO, CÓDIGO do livro e AUTOR do livro. 
 * Possui a função de atualizar os dados e atualizar o último aluno que pegou o livro
 */
class Livro {
  final String titulo; //Titulo do livro
  final String codigo; //Código do livro
  final String autor; //Autor do livro
  final int lancamento; //Ano de lançamento do livro
  final String sinopse; //Sinopse do livro
  final String edicao; //Edição do livro

  String RAultimoAluno = "Nenhum"; //RA do último aluno que pegou o livro

  //construtor
  Livro(String this.titulo, String this.codigo, String this.autor,
      int this.lancamento, String this.sinopse, int this.edicao);
}
