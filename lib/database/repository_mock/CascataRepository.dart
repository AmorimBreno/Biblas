import 'package:projeto_biblas/database/modules/menu_cascata/construtorBlocos.dart';

final cursosData = <ConstrutorBlocos>[
  const ConstrutorBlocos(titulo: 'Engenharia', blocos: [
    ConstrutorBlocos(titulo: 'Ciclo Básico', blocos: [
      ConstrutorBlocos(titulo: 'Algoritmos e Programação'),
      ConstrutorBlocos(titulo: 'Cálculo Diferencial e Integral I'),
      ConstrutorBlocos(titulo: 'Desenho'),
      ConstrutorBlocos(titulo: 'Física I'),
      ConstrutorBlocos(titulo: 'Fundamentos de Engenharia'),
      ConstrutorBlocos(titulo: 'Química Geral'),
      ConstrutorBlocos(titulo: 'Vetores, Curvas e Superfícies'),
    ]),
    ConstrutorBlocos(titulo: 'Alimentos'),
    ConstrutorBlocos(titulo: 'Civil'),
    ConstrutorBlocos(titulo: 'Computação', blocos: [
      ConstrutorBlocos(titulo: 'Cálculo Diferencial e Integral II'),
      ConstrutorBlocos(titulo: 'Estrutura de Dados e Técnicas de Programação'),
      ConstrutorBlocos(titulo: 'Fenômenos de Transporte'),
      ConstrutorBlocos(titulo: 'Física II'),
      ConstrutorBlocos(titulo: 'Fundamentos de Circuitos Digitais'),
      ConstrutorBlocos(titulo: 'Fundamentos de Circuitos Analógicos'),
      ConstrutorBlocos(titulo: 'Matemática Computacional'),
      ConstrutorBlocos(titulo: 'Mecânica Geral'),
      ConstrutorBlocos(titulo: 'Resistência dos Materiais'),
    ]),
    ConstrutorBlocos(titulo: 'Controle e Automação'),
    ConstrutorBlocos(titulo: 'Eletrônica'),
    ConstrutorBlocos(titulo: 'Elétrica'),
    ConstrutorBlocos(titulo: 'Mecânica'),
    ConstrutorBlocos(titulo: 'Produção'),
    ConstrutorBlocos(titulo: 'Química'),
  ]),
  const ConstrutorBlocos(titulo: 'Sistema de Informação', blocos: [
    ConstrutorBlocos(titulo: 'Banco de Dados Relacionais'),
    ConstrutorBlocos(titulo: 'Lógica de Programação'),
    ConstrutorBlocos(titulo: 'Modelagem Orientada a Objetos'),
    ConstrutorBlocos(titulo: 'Programação Orientada a Objetos'),
    ConstrutorBlocos(titulo: 'Projeto Integrado Interdisciplinar'),
  ])
];
