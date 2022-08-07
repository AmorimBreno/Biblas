import '../modules/livro/livro.dart';
import '../modules/menu_cascata/construtorBlocos.dart';

class RepositoryMock {
  //Repositório

  final List<ConstrutorBlocos> blocos = [
    const ConstrutorBlocos(titulo: 'Administração', blocos: [
      ConstrutorBlocos(titulo: 'Primeiro ano', blocos: [
        ConstrutorBlocos(titulo: 'Comunicação Empresarial'),
        ConstrutorBlocos(titulo: 'Inovação e Novas Abordagens'),
        ConstrutorBlocos(titulo: 'Simulação Empresarial'),
        ConstrutorBlocos(titulo: 'Sociologia Política e Organizacional'),
        ConstrutorBlocos(titulo: 'Teoria Geral dos Sistemas'),
      ]),
      ConstrutorBlocos(titulo: 'Segundo ano', blocos: [
        ConstrutorBlocos(titulo: 'Contabilidade Gerencial'),
        ConstrutorBlocos(titulo: 'Economia'),
        ConstrutorBlocos(titulo: 'Economia Aplicada'),
        ConstrutorBlocos(titulo: 'Estatística'),
        ConstrutorBlocos(titulo: 'Estatística Aplicada à Administração'),
        ConstrutorBlocos(titulo: 'Finanças Empresariais'),
        ConstrutorBlocos(
            titulo: 'Gestão de Materiais e Administração de Compras'),
        ConstrutorBlocos(titulo: 'Gestão de Pessoas'),
        ConstrutorBlocos(titulo: 'Marketing'),
        ConstrutorBlocos(titulo: 'Matemática Financeira'),
      ]),
      ConstrutorBlocos(titulo: 'Terceiro ano', blocos: [
        ConstrutorBlocos(titulo: 'Comércio Exterior'),
        ConstrutorBlocos(titulo: 'Gestão da Produção'),
        ConstrutorBlocos(titulo: 'Gestão Financeira'),
        ConstrutorBlocos(titulo: 'Marketing Avançado'),
        ConstrutorBlocos(titulo: 'Métodos Quantitativos'),
        ConstrutorBlocos(titulo: 'Planejamento da Produção'),
        ConstrutorBlocos(titulo: 'Planejamento de Marketing para Negócios'),
        ConstrutorBlocos(titulo: 'Projeto de Pesquisa'),
        ConstrutorBlocos(
            titulo: 'Projetos de Investimentos e Empreendedorismo'),
        ConstrutorBlocos(titulo: 'Relações Jurídicas Empresariais'),
      ]),
      ConstrutorBlocos(titulo: 'Quarto ano', blocos: [
        ConstrutorBlocos(titulo: 'Economia e Negócios Internacionais'),
        ConstrutorBlocos(titulo: 'Gestão de Cadeia de Suprimentos'),
        ConstrutorBlocos(
            titulo: 'Inovação e Novas Abordagens em Administração'),
        ConstrutorBlocos(titulo: 'Planejamento Estratégico e Sustentabilidade'),
        ConstrutorBlocos(titulo: 'Simulação Empresarial-Jogos de Empresa'),
        ConstrutorBlocos(titulo: 'Trabalho de Conclusão de Curso I'),
        ConstrutorBlocos(titulo: 'Trabalho de Conclusão de Curso II'),
      ]),
    ]),
    const ConstrutorBlocos(titulo: 'Ciência da Computação', blocos: [
      ConstrutorBlocos(titulo: 'Banco de Dados Relacionais'),
      ConstrutorBlocos(titulo: 'Lógica de Programação'),
      ConstrutorBlocos(titulo: 'Modelagem Orientada a Objetos'),
      ConstrutorBlocos(titulo: 'Programação Orientada a Objetos'),
      ConstrutorBlocos(titulo: 'Projeto Integrado Interdisciplinar'),
    ]),
    const ConstrutorBlocos(titulo: 'Design', blocos: [
      ConstrutorBlocos(titulo: 'Primeiro ano', blocos: [
        ConstrutorBlocos(titulo: 'Criação Bidimensional'),
        ConstrutorBlocos(titulo: 'Desenho'),
        ConstrutorBlocos(titulo: 'Desenho Técnico'),
        ConstrutorBlocos(titulo: 'Design e Conhecimento'),
        ConstrutorBlocos(titulo: 'Edição de Imagens Digitais'),
        ConstrutorBlocos(titulo: 'Fundamentos de Design'),
      ]),
      ConstrutorBlocos(titulo: 'Segundo ano', blocos: [
        ConstrutorBlocos(titulo: 'Design e História'),
        ConstrutorBlocos(titulo: 'Design e Sociedade'),
        ConstrutorBlocos(titulo: 'Design Emocional'),
        ConstrutorBlocos(titulo: 'Estudos e Pesquisas Mercadológicas'),
        ConstrutorBlocos(titulo: 'Ilustração'),
        ConstrutorBlocos(titulo: 'Ilustração Digital'),
        ConstrutorBlocos(titulo: 'Marketing'),
        ConstrutorBlocos(titulo: 'Materiais Poliméricos'),
        ConstrutorBlocos(titulo: 'Metadesign'),
        ConstrutorBlocos(titulo: 'Modelagem 3D em Superfícies'),
        ConstrutorBlocos(titulo: 'Modelagem 3D Paramétrica'),
        ConstrutorBlocos(titulo: 'Sistemas Elétricos e Mecânicos'),
      ]),
      ConstrutorBlocos(titulo: 'Terceiro ano', blocos: [
        ConstrutorBlocos(titulo: 'Cool Hunting'),
        ConstrutorBlocos(titulo: 'Design de Superfície'),
        ConstrutorBlocos(titulo: 'Design Gráfico'),
        ConstrutorBlocos(titulo: 'Design Sistêmico'),
        ConstrutorBlocos(titulo: 'Design Studio'),
        ConstrutorBlocos(titulo: 'Ergonomia Cognitiva'),
        ConstrutorBlocos(titulo: 'Ergonomia Física'),
        ConstrutorBlocos(titulo: 'Materiais Compósitos'),
        ConstrutorBlocos(titulo: 'Materiais Metálicos'),
        ConstrutorBlocos(titulo: 'Metodologia de Pesquisa I'),
        ConstrutorBlocos(titulo: 'Modelagem 3D Poligonal'),
        ConstrutorBlocos(titulo: 'Modelagem Digital'),
      ]),
      ConstrutorBlocos(titulo: 'Quarto ano', blocos: [
        ConstrutorBlocos(titulo: 'Branding'),
        ConstrutorBlocos(titulo: 'Gerenciamento de Projeto'),
        ConstrutorBlocos(titulo: 'Metodologia da Pesquisa II'),
        ConstrutorBlocos(titulo: 'Metodologia de Pesquisa III'),
        ConstrutorBlocos(titulo: 'Modelos e Ambientes Virtuais'),
        ConstrutorBlocos(titulo: 'Modelos e Protótipos'),
        ConstrutorBlocos(titulo: 'Projeto de Produtos'),
        ConstrutorBlocos(titulo: 'Tópicos Avançados em Design'),
        ConstrutorBlocos(titulo: 'Trabalho de Conclusão de Curso I'),
        ConstrutorBlocos(titulo: 'Trabalho de Conclusão de Curso II'),
      ]),
    ]),
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
      ConstrutorBlocos(titulo: 'Alimentos', blocos: [
        ConstrutorBlocos(titulo: 'Cálculo Diferencial e Integral II'),
        ConstrutorBlocos(titulo: 'Estatística'),
        ConstrutorBlocos(titulo: 'Física II'),
        ConstrutorBlocos(
            titulo: 'Fundamentos de Engenharia de Processos e Termodinâmica'),
        ConstrutorBlocos(titulo: 'Matemática Computacional'),
        ConstrutorBlocos(titulo: 'Mecânica Geral'),
        ConstrutorBlocos(titulo: 'Química Aplicada I'),
      ]),
      ConstrutorBlocos(titulo: 'Civil', blocos: [
        ConstrutorBlocos(
            titulo: 'Arquitetura das Edificações e Desenho Universal'),
        ConstrutorBlocos(titulo: 'Cálculo Diferencial e Integral II'),
        ConstrutorBlocos(titulo: 'Física II'),
        ConstrutorBlocos(titulo: 'Geologia de Engenharia e Ambiental'),
        ConstrutorBlocos(titulo: 'Matemática Computacional'),
        ConstrutorBlocos(titulo: 'Mecânica Geral'),
        ConstrutorBlocos(titulo: 'Representações Gráficas'),
        ConstrutorBlocos(titulo: 'Resistência dos Materiais I'),
        ConstrutorBlocos(titulo: 'Topografia e Geomática'),
      ]),
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
      ConstrutorBlocos(titulo: 'Controle e Automação', blocos: [
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
      ConstrutorBlocos(titulo: 'Eletrônica', blocos: [
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
      ConstrutorBlocos(titulo: 'Elétrica', blocos: [
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
      ConstrutorBlocos(titulo: 'Mecânica', blocos: [
        ConstrutorBlocos(titulo: 'Cálculo Diferencial e Integral II'),
        ConstrutorBlocos(titulo: 'Estatística'),
        ConstrutorBlocos(titulo: 'Física II'),
        ConstrutorBlocos(titulo: 'Introdução a Projeto e Manufatura'),
        ConstrutorBlocos(titulo: 'Matemática Computacional'),
        ConstrutorBlocos(titulo: 'Materiais de Construção Mecânica I'),
        ConstrutorBlocos(titulo: 'Mecânica Geral'),
        ConstrutorBlocos(titulo: 'Resistência dos Materiais'),
      ]),
      ConstrutorBlocos(titulo: 'Produção', blocos: [
        ConstrutorBlocos(titulo: 'Cálculo Diferencial e Integral II'),
        ConstrutorBlocos(titulo: 'Ciências Térmicas I'),
        ConstrutorBlocos(titulo: 'Física II'),
        ConstrutorBlocos(titulo: 'Introdução à Engenharia de Produção'),
        ConstrutorBlocos(titulo: 'Matemática Computacional'),
        ConstrutorBlocos(titulo: 'Materiais de Construção Mecânica I'),
        ConstrutorBlocos(titulo: 'Mecânica Geral'),
        ConstrutorBlocos(titulo: 'Resistência dos Materiais'),
        ConstrutorBlocos(titulo: 'Sistemas de Informação I'),
      ]),
      ConstrutorBlocos(titulo: 'Química', blocos: [
        ConstrutorBlocos(titulo: 'Cálculo Diferencial e Integral II'),
        ConstrutorBlocos(titulo: 'Estatística'),
        ConstrutorBlocos(titulo: 'Física II'),
        ConstrutorBlocos(
            titulo: 'Fundamentos de Engenharia de Processos e Termodinâmica'),
        ConstrutorBlocos(titulo: 'Matemática Computacional'),
        ConstrutorBlocos(titulo: 'Mecânica Geral'),
        ConstrutorBlocos(titulo: 'Química Aplicada I'),
      ]),
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
        [
          "ciclo básico",
          "programação",
          "engenharia",
          "computação",
          "algoritmos e programação"
        ],
        'assets/images/introducao_a_programacao_com_python.png',
        true),
    Livro(
        "Resistência dos Materiais",
        "EM001",
        ["Russell Charles Hibbeler"],
        2013,
        "Referência na área, Hibbeler aborda a teoria e os princípios fundamentais da resistência dos materiais de maneira clara. Repleta de exemplos ilustrativos e exercícios, Resistência dos materiais aborda situações reais a fim de estimular o interesse do estudante pelo assunto, apresentando seções que orientam a solução de problemas e fornecendo um resumo dos conceitos-chave. Totalmente revisada, esta edição traz problemas novos de diferentes níveis de dificuldade, além de novas fotografias, que facilitam a assimilação de conteúdo. A didática de Hibbeler, já reconhecida e valorizada, é outro diferencial da obra. Esta 10ª edição utiliza o Sistema Internacional de Unidades (SI), favorecendo a aprendizagem de estudantes de cursos de engenharia mecânica, civil, metalúrgica, química e elétrica, e a visualização de conceitos complexos.",
        "Sétima",
        [
          "engenharia",
          "materiais",
          "civil",
          "segundo ano",
          "resistência dos materiais"
        ],
        'assets/images/resistencia_dos_materiais.png',
        true),
    Livro(
        'Cálculo',
        'CB001',
        ['James Stewart'],
        2013,
        'Cálculo foi escrito originalmente na forma de um curso. Sempre dando ênfase à compreensão dos conceitos, o autor inicia a obra oferecendo uma visão geral do assunto para, em seguida, apresentá-lo em detalhes, por meio da formulação de problemas, exercícios, tabelas e gráficos. A obra está dividida em dois volumes (Vol. 1 - capítulos 1 a 8 e Vol. 2 - capítulos 9 a 17). A 7ª edição de Cálculo traz diversas inovações em relação à edição anterior. Alguns tópicos foram reescritos para proporcionar clareza e motivação; novos exemplos foram adicionados; soluções de parte dos exemplos foram ampliadas; dados de exemplos e exercícios readequados. Revista e atualizada, a obra mantém o espírito das edições anteriores, apresentando exercícios graduados, com progressão cuidadosamente planejada dos conceitos básicos até problemas complexos e desafiadores. Neste volume: Funções e Modelos, Limites e Derivadas, Regras de Derivação, Aplicações de Derivação, Integrais, Aplicações de Integração, Técnicas de Integração e Mais Aplicações de Integração',
        'Tradução da Sétima Edição Norte Americana',
        [
          'ciclo básico',
          'cálculo',
          'engenharia',
          'cálculo diferencial e integral I'
        ],
        'assets/images/calculo.png',
        false),
    Livro(
        'A Estatística Básica e sua Prática',
        'AM001',
        ['David Scott Moore', 'William I. Notz', 'Michael A. Flinger'],
        2017,
        'A nova e aprimorada edição de A Estatística Básica e sua Prática tem como objetivo auxiliar os estudantes a desenvolver os procedimentos habituais na área e a seguir o raciocínio estatístico, tanto no meio acadêmico, como no mercado de trabalho. Ao aliar o conhecimento técnico à prática da resolução de problemas, o livro promove a autonomia e o olhar criativo dos estudantes em seu primeiro contato com a Estatística, formando uma base sólida para os futuros profissionais e pesquisadores. O texto se destaca pela versatilidade do conteúdo e pela possibilidade de ser utilizado juntamente com qualquer tipo de tecnologia para produção de cálculos e gráficos. Com linguagem moderna e acessível, esta obra oferece ao leitor um caminho para um estudo direcionado e bem-sucedido do tema. Como destaque, a obra traz o acesso gratuito a um conjunto de videoaulas exclusivas, com tópicos essenciais de Estatística.',
        'Sétima',
        ['estatística', 'administração'],
        'assets/images/a_estatistica_basica_e_sua_pratica.jpg',
        true),
    Livro(
        "A Nova Contabilidade: Convergência ao Padrão Internacional",
        "AM002",
        ["Luciano Guerra"],
        2015,
        "Estamos passando por um gigantesco processo de mudanças na forma e no conteúdo do fazer contábil. Trata-se de ter a contabilidade falando a mesma língua no mundo todo. Pelo menos na linguagem contábil, realiza-se um sonho da humanidade que remonta aos tempos da Torre de Babel. O trabalho que se exigirá do profissional de contabilidade a partir das novas regras é totalmente diferente do que era antes. Agora, ele terá de exercer o chamado julgamento profissional. Portanto, não se trata de novidade vazia ou superficial. É uma mudança de mentalidade. Embora a nova legislação societária tenha sido editada já há algum tempo, é por meio dos pareceres do CPC ? Comitê de Pronunciamentos Contábeis que as mudanças estão sendo efetivamente implementadas. Para os professores de Contábeis, esses pareceres passaram a ser as únicas fontes bibliográficas atualizadas. No entanto, normas não são bons textos didáticos. Os objetivos são distintos, a linguagem é técnica. Exemplos numéricos, quando os há, ilustram apenas os casos especiais ou atípicos. Diante desse cenário, neste livro o autor busca produzir material didático atualizado pelas normas. Montar planilhas com exemplos. Apresentar questões extraídas dos exames de suficiência, de qualificação de auditoria e do ENADE, selecionadas por assunto e em ordem de complexidade, com cada questão identificada pela prova e pela numeração original. Com o processo de convergência, foram introduzidos temas antes não tratados pela Contabilidade. Assim, a proposta desta obra é destacar e dissecar esses temas, de forma didática e compreensível, simples sem ser simplista. Leitura complementar para as disciplinas Teoria da Contabilidade e Contabilidade Avançada. Recomendado para várias outras disciplinas do curso de Contábeis, por abordar temas fundamentais.",
        "Segunda",
        ["administração", "economia", "Contabilidade Gerencial"],
        'assets/images/a_nova_contabilidade_convergencia_ao_padrao_internacional.jpg',
        true),
    Livro(
        "Mecânica dos solos e suas aplicações",
        "EM001",
        ["Homero Pinto Caputo"],
        1973,
        "Acidentes ocorridos em grandes obras da engenharia como deslizamentos durante a construção do Canal do Panamá ? deixaram clara a percepção inadequada dos princípios de gestão do solo, outrora vigentes na engenharia. Por outro lado, a falta de conhecimento impedia que uma nova direção fosse adotada. Desses desafios e do aprendizado nasceu uma nova orientação do estudo dos solos, que a 7ª edição de Mecânica dos Solos e Suas Aplicações reúne de forma consistente e atualizada.",
        "Sétima",
        ["engenharia", "civil", "geografia"],
        "assets/images/mecanica_dos_solos_e_suas_aplicacoes.jpg",
        true),
    Livro(
        "Design de identidade da marca: Guia Essencial para Toda a Equipe de Gestão de Marcas",
        "DS001",
        ["Alina Wheeler"],
        2000,
        "Design de Identidade da Marca apresenta um método em cinco fases, universal e comprovado, para criar e implementar uma identidade de marca de sucesso. Da pesquisa e análise à estratégia de marca, do desenvolvimento do design à sua aplicação e de padrões de identidade ao lançamento e à governança, este livro é uma referência essencial tanto para a criação de novas marcas quanto para a revitalização de antigas. Enriquecido com 50 estudos de caso, que descrevem metas, processos, estratégias, soluções e resultados.",
        "Quinta",
        ["design", "marketing", "marcas", "Marketing"],
        "assets/images/design_de_identidade_da_marca_guia_essencial_para_toda_a_equipe_de_gestão_de_marcas.jpg",
        true),
    Livro(
        "Criatividade S.A.: Superando as forças invisíveis que ficam no caminho da verdadeira inspiração.",
        "DS002",
        ["Amy Wallace", " Edwin Catmull"],
        2014,
        "Qual a fórmula por trás de filmes adorados por multidões como Toy Story, Monstros S.A. ou Procurando Nemo? Em Criatividade S.A., Ed Catmull conta a trajetória de sucesso do mais importante e lucrativo estúdio de animação da atualidade, a Pixar, que ele ajudou a fundar, ao lado de Steve Jobs e John Lasseter, em 1986. Dos encontros da equipe às sessões de brainstorm, Catmull mostra como se constrói uma cultura da criatividade, num livro definitivo para quem busca inspiração para os próprios negócios. Para Catmull, a tecnologia jamais deve estar acima de uma boa história; cercar-se de gente mais inteligente do que você torna o ambiente mais propenso à inovação; e encontrar o lado positivo do fracasso é fundamental para garantir o próximo sucesso. Esses são alguns dos princípios apresentados por Catmull em Criatividade S.A. Quase 20 anos depois do lançamento do primeiro filme da trilogia Toy Story, Catmull, atual presidente da Pixar e da Walt Disney Animation Studios, narra a trajetória da empresa que revolucionou a indústria de animação cinematográfica. Entremeando conclusões sobre gestão de pessoal com entusiasmadas informações a respeito dos avanços em tecnologia digital, além da história da Pixar e do cinema de animação, Criatividade S.A. apresenta mais do que conselhos de negócios, com trechos descrevendo situações quase como um roteiro cinematográfico.",
        "Primeira",
        ["design", "inovação"],
        "assets/images/criatividade_sa_superando_as_forcas_invisiveis_que_ficam_no_caminho_da_verdadeira_inspiracao.jpg",
        true),
    Livro(
        "SPRINT: O método usado no Google para testar e aplicar novas ideias em apenas cinco dias",
        "AD002",
        ["Jake Knapp", "John Zeratsky", "Braden Kowitz"],
        2016,
        "Como inovar? Por onde começar? Como formar uma boa equipe? Que forma terá uma ideia quando for colocada em prática? São muitas as perguntas que martelam na cabeça de quem precisa tirar ideias do papel, mas já existe um caminho infalível para responder a todas elas rapidamente: o sprint. Método criado pelo designer Jake Knapp no período em que ele trabalhava no Google, era usado para tudo na empresa, do aperfeiçoamento do mecanismo de buscas ao Google Hangouts, com o foco em desenvolver e testar ideias em apenas cinco dias. Knapp se juntou mais tarde a Braden Kowitz e John Zeratsky no Google Ventures, braço da companhia dedicado ao investimento em novos negócios, e juntos eles conduziram e completaram mais de cem sprints em empresas de telefonia, e-commerce, saúde, finanças e muito mais. Sprint serve para equipes de todos os tamanhos, de pequenas startups até os maiores conglomerados, e pode ser aplicado por qualquer um que tenha uma grande oportunidade, problema ou ideia e precise começar a trabalhar já.",
        "Primeira(Tradução 2017)",
        ["administração", "inovação"],
        "assets/images/sprint_o_metodo_usado_no_google_para_testar_e_aplicar_novas_ideias_em_apenas_cinco_dias.jpg",
        true),
    Livro(
        "Motores de combustão interna: vol. 2",
        "EC001",
        ["Franco Brunetti"],
        2012,
        "Livro-texto para o curso de Engenharia, Motores de Combustão Interna é também leitura recomendada para cursos técnicos e bibliografia de atualização para profissionais da área. Edição com qualidade didática e rica ilustração visual, além de elevada quantidade de exercícios que permite ao leitor testar os conhecimentos adquiridos. Pela primeira vez no Brasil é apresentado um livro, separado em dois volumes, atualizado por 47 especialistas que, num esforço hercúleo, utilizaram um método inovador de desenvolver os conteúdos sem perder a docilidade acadêmica da obra inicial do Professor Franco Brunetti. Trata-se do mais completo tratado sobre Motores publicado no Brasil, onde o leitor encontrará os conceitos mais atualizados. Uma obra indispensável a todos que se interessam e desejam conhecer melhor os Motores de Combustão Interna. O Volume 2 apresenta conceitos complementares: 10 - Sistemas de Injeção para Motores Diesel, 11 - Consumo de Ar nos Motores a Quatro Tempos, 12 - Sistemas de Exaustão, 13 - Emissões, 14 - Lubrificação, 15 - Lubrificantes, 16 - Ruído e Vibrações, 17 - Cinemática e Dinâmica do Motor, 18 - Tribologia, 19 - Sistemas de Arrefecimento, 20 - Projeto de Motores, 21 - Veículos Híbridos.",
        "Primeira",
        ["engenharia", "mecânica"],
        "assets/images/motores_de_combustao_interna_vol_2.jpg",
        true),
    Livro(
        "Introdução a Sistemas Elétricos de Potência: Componentes Simétricas",
        "EE001",
        [
          "Carlos César Barioni de Oliveira",
          "Hernán Prieto Schmidt",
          "Nelson Kagan",
          "Ernesto João Robba"
        ],
        2000,
        "Circuitos Trifásicos, definição, resolução de redes trifásicas simétricas e equilibradas. Estudo de desequilíbrios, modelagem da rede e técnicas de solução. Redes trifásicas com impedâncias mútuas, assimétricas e desequilibradas. Modelos de representação de cargas. Valores por Unidade, conceitos gerais, aplicação a circuitos monofásicos. Circuitos trifásicos, representação dos componentes da rede, linhas e transformadores. Vantagens de valores p.u. na representação numérica de redes. Componentes Simétricas, matrizes de transformação, interpretação. Representação dos elementos de redes por diagramas sequenciais e sua associação. Estudo de cargas desequilibradas e de redes com defeitos entre fases, entre fases e terra, abertura monopolar e bipolar. Componentes de Clarke, matrizes de transformação, interpretação. Representação de redes e estudo de desequilíbrios. Defeitos entre fases e entre fases e terra. Exercícios, sistemas de programas computacionais, de domínio público, para a resolução de exercícios passo a passo. Exercícios resolvidos e propostos.",
        "Segunda",
        ["engenharia", "elétrica", "controle automação", "eletrônica"],
        "assets/images/introducao_a_sistemas_eletricos_de_potencia_componentes_simetricas.jpg",
        true),
    Livro(
        "Sistema Toyota de Produção: Uma Abordagem Integrada ao Just in Time",
        "EP001",
        ["Yasuhiro Monden"],
        1998,
        "Um best seller de quase três décadas, este livro mergulha nas práticas do Sistema Toyota de Produção, incluindo bases teóricas e métodos de implementação. A edição clássica está aqui atualizada com novos materiais. Figura fundamental no processo de introdução do Just-in-Time nos Estados Unidos, Yasuhiro Monden explica lógica e a metodologia do STP.",
        "Quarta",
        [
          "engenharia",
          "produção",
          "administração",
          "Planejamento da Produção",
        ],
        "assets/images/sistema_toyota_de_producao_uma_abordgem_integrada_ao_just_in_time.jpg",
        true),
  ];

  //Construtor
  RepositoryMock();

  // Métodos
  String _tirarAcento(String str) {
    var withDia =
        'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    var withoutDia =
        'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    for (int i = 0; i < withDia.length; i++) {
      str = str.replaceAll(withDia[i], withoutDia[i]);
    }

    return str;
  }

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
      for (String tag in livro.tags) {
        if (_tirarPontuacao(tag).toLowerCase() ==
            _tirarPontuacao(materia).toLowerCase()) {
          livrosDaMateria.insert(livrosDaMateria.length, livro);
          break;
        }
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
        if (!_tirarAcento(livro.titulo)
            .toLowerCase()
            .contains(parteNome.toLowerCase())) {
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
