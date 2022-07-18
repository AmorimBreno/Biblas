/**
 * Usuario do site, ele precisa de NOME e RA para ser inicializado. 
 */
class Usuario {
  String nome; //Nome do Usuario

  int ra; // Ra do Usuario

  String LivroEmMao = 'Nenhum'; // Nome do Livro que o úsuario tem em mãos

  //construtor
  Usuario(String this.nome, int this.ra);
}
