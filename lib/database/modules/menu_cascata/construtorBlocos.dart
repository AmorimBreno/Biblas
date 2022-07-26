class ConstrutorBlocos {
  final String titulo;
  final List<ConstrutorBlocos> blocos;

  const ConstrutorBlocos({
    required this.titulo,
    this.blocos = const [],
  });
}