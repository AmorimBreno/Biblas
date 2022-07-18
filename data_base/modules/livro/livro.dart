/**
 * Livro a ser arquivado, deve conter TÍTULO, CÓDIGO do livro e AUTOR do livro. 
 * Possui a função de atualizar os dados e atualizar o último aluno que pegou o livro
 */
class Livro {
  String titulo; //Titulo do livro

  String codigo; //Código do livro

  String autor; //Autor do livro

  String RAultimoAluno = "Nenhum"; //RA do último aluno que pegou o livro

  //construtor
  Livro(String this.titulo, String this.codigo, String this.autor);
}
