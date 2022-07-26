import '../modules/livro/livro.dart';
import '../modules/menu_cascata/construtorBlocos.dart';

class RepositoryMock {
  //Repositório

  final List<ConstrutorBlocos> blocos = [
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
        ConstrutorBlocos(
            titulo: 'Estrutura de Dados e Técnicas de Programação'),
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

  final List<Livro> livros = [
    Livro(
        "Introdução à Programação com Python",
        "EC001",
        ["Nilo Ney Corinho Menezes"],
        2010,
        "Este livro é orientado ao iniciante em programação. Os conceitos básicos de programação, como expressões, variáveis, repetições, decisões, listas, dicionários, conjuntos, funções, arquivos, classes, objetos e banco de dados com SQLite 3 são apresentados um a um com exemplos e exercícios. A obra visa a explorar a programação de computadores como ferramenta do dia a dia. Ela pode ser lida durante um curso de introdução à programação de computadores e usada como guia de estudo para autodidatas. Para aproveitamento pleno do conteúdo, apenas conhecimentos básicos de informática, como digitar textos, abrir e salvar arquivos, são suficientes. Todo software utilizado no livro pode ser baixado gratuitamente, sendo executado em Windows, Linux e Mac OS X. Embora a linguagem Python (versão +3.7) seja muito poderosa e repleta de recursos modernos de programação, este livro não pretende ensinar a linguagem em si, mas ensinar a programar. Alguns recursos da linguagem não foram utilizados para privilegiar os exercícios de lógica de programação e oferecer uma preparação mais ampla ao leitor para outras linguagens. Essa escolha não impediu a apresentação de recursos poderosos da linguagem, e, embora o livro não seja fundamentalmente uma obra de referência, o leitor encontrará várias notas e explicações de características específicas do Python, além da lógica de programação.",
        "Segunda (Junho/2014)",
        ["ciclo básico", "programação", "engenharia", "computação"],
        'assets/images/introducao_a_programacao_com_python.png'),
    Livro(
        "Resistência dos Materiais",
        "EM001",
        ["Russell Charles Hibbeler"],
        2013,
        "Referência na área, Hibbeler aborda a teoria e os princípios fundamentais da resistência dos materiais de maneira clara. Repleta de exemplos ilustrativos e exercícios, Resistência dos materiais aborda situações reais a fim de estimular o interesse do estudante pelo assunto, apresentando seções que orientam a solução de problemas e fornecendo um resumo dos conceitos-chave. Totalmente revisada, esta edição traz problemas novos de diferentes níveis de dificuldade, além de novas fotografias, que facilitam a assimilação de conteúdo. A didática de Hibbeler, já reconhecida e valorizada, é outro diferencial da obra. Esta 10ª edição utiliza o Sistema Internacional de Unidades (SI), favorecendo a aprendizagem de estudantes de cursos de engenharia mecânica, civil, metalúrgica, química e elétrica, e a visualização de conceitos complexos.",
        "Sétima",
        ["engenharia", "materiais", "civil", "segundo ano"],
        'assets/images/resistencia_dos_materiais.png'),
    Livro(
        'Cálculo',
        'CB001',
        ['James Stewart'],
        2013,
        'Cálculo foi escrito originalmente na forma de um curso. Sempre dando ênfase à compreensão dos conceitos, o autor inicia a obra oferecendo uma visão geral do assunto para, em seguida, apresentá-lo em detalhes, por meio da formulação de problemas, exercícios, tabelas e gráficos. A obra está dividida em dois volumes (Vol. 1 - capítulos 1 a 8 e Vol. 2 - capítulos 9 a 17). A 7ª edição de Cálculo traz diversas inovações em relação à edição anterior. Alguns tópicos foram reescritos para proporcionar clareza e motivação; novos exemplos foram adicionados; soluções de parte dos exemplos foram ampliadas; dados de exemplos e exercícios readequados. Revista e atualizada, a obra mantém o espírito das edições anteriores, apresentando exercícios graduados, com progressão cuidadosamente planejada dos conceitos básicos até problemas complexos e desafiadores. Neste volume: Funções e Modelos, Limites e Derivadas, Regras de Derivação, Aplicações de Derivação, Integrais, Aplicações de Integração, Técnicas de Integração e Mais Aplicações de Integração',
        'Tradução da Sétima Edição Norte Americana',
        ['ciclo básico', 'cálculo', 'engenharia'],
        'assets/images/calculo.png'),
    Livro(
        'A Estatística Básica e sua Prática',
        'AM001',
        ['David Scott Moore', 'William I. Notz', 'Michael A. Flinger'],
        2017,
        'A nova e aprimorada edição de A Estatística Básica e sua Prática tem como objetivo auxiliar os estudantes a desenvolver os procedimentos habituais na área e a seguir o raciocínio estatístico, tanto no meio acadêmico, como no mercado de trabalho. Ao aliar o conhecimento técnico à prática da resolução de problemas, o livro promove a autonomia e o olhar criativo dos estudantes em seu primeiro contato com a Estatística, formando uma base sólida para os futuros profissionais e pesquisadores. O texto se destaca pela versatilidade do conteúdo e pela possibilidade de ser utilizado juntamente com qualquer tipo de tecnologia para produção de cálculos e gráficos. Com linguagem moderna e acessível, esta obra oferece ao leitor um caminho para um estudo direcionado e bem-sucedido do tema. Como destaque, a obra traz o acesso gratuito a um conjunto de videoaulas exclusivas, com tópicos essenciais de Estatística.',
        'Sétima',
        ['estatísticas', 'administração'],
        'assets/images/a_estatistica_basica_e_sua_pratica.jpg'),
    Livro(
        "A Nova Contabilidade: Convergência ao Padrão Internacional",
        "AM002",
        ["Luciano Guerra"],
        2015,
        "Estamos passando por um gigantesco processo de mudanças na forma e no conteúdo do fazer contábil. Trata-se de ter a contabilidade falando a mesma língua no mundo todo. Pelo menos na linguagem contábil, realiza-se um sonho da humanidade que remonta aos tempos da Torre de Babel. O trabalho que se exigirá do profissional de contabilidade a partir das novas regras é totalmente diferente do que era antes. Agora, ele terá de exercer o chamado julgamento profissional. Portanto, não se trata de novidade vazia ou superficial. É uma mudança de mentalidade. Embora a nova legislação societária tenha sido editada já há algum tempo, é por meio dos pareceres do CPC ? Comitê de Pronunciamentos Contábeis que as mudanças estão sendo efetivamente implementadas. Para os professores de Contábeis, esses pareceres passaram a ser as únicas fontes bibliográficas atualizadas. No entanto, normas não são bons textos didáticos. Os objetivos são distintos, a linguagem é técnica. Exemplos numéricos, quando os há, ilustram apenas os casos especiais ou atípicos. Diante desse cenário, neste livro o autor busca produzir material didático atualizado pelas normas. Montar planilhas com exemplos. Apresentar questões extraídas dos exames de suficiência, de qualificação de auditoria e do ENADE, selecionadas por assunto e em ordem de complexidade, com cada questão identificada pela prova e pela numeração original. Com o processo de convergência, foram introduzidos temas antes não tratados pela Contabilidade. Assim, a proposta desta obra é destacar e dissecar esses temas, de forma didática e compreensível, simples sem ser simplista. Leitura complementar para as disciplinas Teoria da Contabilidade e Contabilidade Avançada. Recomendado para várias outras disciplinas do curso de Contábeis, por abordar temas fundamentais.",
        "Segunda",
        ["administração", "economia"],
        'assets/images/a_nova_contabilidade_convergencia_ao_padrao_internacional.jpg'),
    Livro(
        "Mecânica dos solos e suas aplicações",
        "EM001",
        ["Homero Pinto Caputo"],
        1973,
        "Acidentes ocorridos em grandes obras da engenharia como deslizamentos durante a construção do Canal do Panamá ? deixaram clara a percepção inadequada dos princípios de gestão do solo, outrora vigentes na engenharia. Por outro lado, a falta de conhecimento impedia que uma nova direção fosse adotada. Desses desafios e do aprendizado nasceu uma nova orientação do estudo dos solos, que a 7ª edição de Mecânica dos Solos e Suas Aplicações reúne de forma consistente e atualizada.",
        "Sétima",
        ["engenharia", "civil", "geografia"],
        "assets/images/mecanica_dos_solos_e_suas_aplicacoes.jpg")
  ];

  //Construtor
  RepositoryMock();

  // Métodos

  String _nomeAutor(String nome) {
    // ignore: non_constant_identifier_names
    List<String> nome_autor = nome.split(' ');
    for (int i = 0; i < nome_autor.length - 1; i++) {
      nome_autor[i] = nome_autor[i][0].toUpperCase();
    }
    // ignore: non_constant_identifier_names
    String nome_autor_abnt = nome_autor[nome_autor.length - 1];
    for (int i = 0; i < nome_autor.length - 1; i++) {
      nome_autor_abnt = '$nome_autor_abnt ${nome_autor[i]}';
    }
    return nome_autor_abnt;
  }

  String _tirarPontuacao(String str) {
    List<String> pontuacoes = [
      ',',
      ':',
      '.',
      '!',
      '?',
      ';',
      '(',
      ')',
      '"',
      "'"
    ];
    for (String pontuacao in pontuacoes) {
      str = str.replaceAll(pontuacao, '');
    }
    return str;
  }

  List<Livro> pegarTodosOsLivros() {
    return livros;
  }

  List<Livro> pegarLivroPorTag(List<String> tags) {
    List<Livro> livrosComTag = [];
    for (Livro livro in livros) {
      for (String tag in tags) {
        if (livro.tags.contains(tag.toLowerCase())) {
          livrosComTag.insert(livrosComTag.length, livro);
        }
      }
    }
    return livrosComTag;
  }

  List<Livro> pegarLivroPorMateria(String materia) {
    List<Livro> livrosDaMateria = [];
    for (Livro livro in livros) {
      if (livro.tags.contains(materia.toLowerCase())) {
        livrosDaMateria.insert(livrosDaMateria.length, livro);
      }
    }
    return livrosDaMateria;
  }

  List<Livro> pegarLivroPorAutor(String autor) {
    List<Livro> livrosDoAutor = [];
    String autorSemPonto = _tirarPontuacao(autor);
    if (autorSemPonto.split(' ')[autorSemPonto.split(' ').length - 1].length ==
        1) {
      for (Livro livro in livros) {
        for (String autorLivro in livro.autor) {
          if (_nomeAutor(autorLivro).toLowerCase() ==
              autorSemPonto.toLowerCase()) {
            livrosDoAutor.insert(livrosDoAutor.length, livro);
          }
        }
      }
    } else {
      for (Livro livro in livros) {
        for (String autorLivro in livro.autor) {
          bool checker = true;
          for (String parteNome in autorSemPonto.split(' ')) {
            if (!autorLivro.toLowerCase().contains(parteNome.toLowerCase())) {
              checker = false;
            }
          }
          if (checker == true) {
            livrosDoAutor.insert(livrosDoAutor.length, livro);
          }
        }
      }
    }
    return livrosDoAutor;
  } //Final da Classezona

  List<Livro> pegarLivroPorTitulo(String nome) {
    List<Livro> livrosComTitulo = [];
    nome = _tirarPontuacao(nome);
    for (Livro livro in livros) {
      bool checker = true;
      for (String parteNome in nome.split(' ')) {
        if (!livro.titulo.toLowerCase().contains(parteNome.toLowerCase())) {
          checker = false;
        }
      }
      if (checker == true) {
        livrosComTitulo.insert(livrosComTitulo.length, livro);
      }
    }
    return livrosComTitulo;
  }
}
