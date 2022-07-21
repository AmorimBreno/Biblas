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
  final List<String> tags;
  final String imagemLivro;

  String RAultimoAluno = "Nenhum"; //RA do último aluno que pegou o livro

  //construtor
  Livro(this.titulo, this.codigo, this.autor, this.lancamento, this.sinopse,
      this.edicao, this.tags, this.imagemLivro);
}
