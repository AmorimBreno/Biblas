class UsuarioSingleton {
  //Criação do Singleton
  static final UsuarioSingleton _instance = UsuarioSingleton._internal();
  factory UsuarioSingleton() => _instance;
  UsuarioSingleton._internal();
}
