import '../modules/livro/livro.dart';

class RepositoryMock {
  List<Livro> livros = [
    Livro(
        "Introdução à Programação com Python",
        "EC001",
        "Nilo Ney Corinho Menezes",
        2010,
        "Este livro é orientado ao iniciante em programação. Os conceitos básicos de programação, como expressões, variáveis, repetições, decisões, listas, dicionários, conjuntos, funções, arquivos, classes, objetos e banco de dados com SQLite 3 são apresentados um a um com exemplos e exercícios. A obra visa a explorar a programação de computadores como ferramenta do dia a dia. Ela pode ser lida durante um curso de introdução à programação de computadores e usada como guia de estudo para autodidatas. Para aproveitamento pleno do conteúdo, apenas conhecimentos básicos de informática, como digitar textos, abrir e salvar arquivos, são suficientes. Todo software utilizado no livro pode ser baixado gratuitamente, sendo executado em Windows, Linux e Mac OS X. Embora a linguagem Python (versão +3.7) seja muito poderosa e repleta de recursos modernos de programação, este livro não pretende ensinar a linguagem em si, mas ensinar a programar. Alguns recursos da linguagem não foram utilizados para privilegiar os exercícios de lógica de programação e oferecer uma preparação mais ampla ao leitor para outras linguagens. Essa escolha não impediu a apresentação de recursos poderosos da linguagem, e, embora o livro não seja fundamentalmente uma obra de referência, o leitor encontrará várias notas e explicações de características específicas do Python, além da lógica de programação.",
        "Segunda (Junho/2014)",
        ["ciclo básico", "programação", "engenharia", "computação"],
        ''),
    Livro(
        "Resistência dos Materiais",
        "EM001",
        "R. C. Hibbeler",
        2013,
        "Referência na área, Hibbeler aborda a teoria e os princípios fundamentais da resistência dos materiais de maneira clara. Repleta de exemplos ilustrativos e exercícios, Resistência dos materiais aborda situações reais a fim de estimular o interesse do estudante pelo assunto, apresentando seções que orientam a solução de problemas e fornecendo um resumo dos conceitos-chave. Totalmente revisada, esta edição traz problemas novos de diferentes níveis de dificuldade, além de novas fotografias, que facilitam a assimilação de conteúdo. A didática de Hibbeler, já reconhecida e valorizada, é outro diferencial da obra. Esta 10ª edição utiliza o Sistema Internacional de Unidades (SI), favorecendo a aprendizagem de estudantes de cursos de engenharia mecânica, civil, metalúrgica, química e elétrica, e a visualização de conceitos complexos.",
        "Sétima",
        ["engenharia", "materiais", "civil", "segundo ano"],
        ''),
    Livro(
        'Cálculo',
        'CB001',
        'James Stewart',
        2013,
        'Cálculo foi escrito originalmente na forma de um curso. Sempre dando ênfase à compreensão dos conceitos, o autor inicia a obra oferecendo uma visão geral do assunto para, em seguida, apresentá-lo em detalhes, por meio da formulação de problemas, exercícios, tabelas e gráficos. A obra está dividida em dois volumes (Vol. 1 - capítulos 1 a 8 e Vol. 2 - capítulos 9 a 17). A 7ª edição de Cálculo traz diversas inovações em relação à edição anterior. Alguns tópicos foram reescritos para proporcionar clareza e motivação; novos exemplos foram adicionados; soluções de parte dos exemplos foram ampliadas; dados de exemplos e exercícios readequados. Revista e atualizada, a obra mantém o espírito das edições anteriores, apresentando exercícios graduados, com progressão cuidadosamente planejada dos conceitos básicos até problemas complexos e desafiadores. Neste volume: Funções e Modelos, Limites e Derivadas, Regras de Derivação, Aplicações de Derivação, Integrais, Aplicações de Integração, Técnicas de Integração e Mais Aplicações de Integração',
        'Tradução da Sétima Edição Norte Americana',
        ['ciclobásico', 'cálculo', 'engenharia'],
        ''),
    Livro(
        'A Estatística Básica e sua Prática',
        'AM001',
        'David S. Moore/ William I. Notz/ Michael A. Flinger',
        2017,
        'A nova e aprimorada edição de A Estatística Básica e sua Prática tem como objetivo auxiliar os estudantes a desenvolver os procedimentos habituais na área e a seguir o raciocínio estatístico, tanto no meio acadêmico, como no mercado de trabalho. Ao aliar o conhecimento técnico à prática da resolução de problemas, o livro promove a autonomia e o olhar criativo dos estudantes em seu primeiro contato com a Estatística, formando uma base sólida para os futuros profissionais e pesquisadores. O texto se destaca pela versatilidade do conteúdo e pela possibilidade de ser utilizado juntamente com qualquer tipo de tecnologia para produção de cálculos e gráficos. Com linguagem moderna e acessível, esta obra oferece ao leitor um caminho para um estudo direcionado e bem-sucedido do tema. Como destaque, a obra traz o acesso gratuito a um conjunto de videoaulas exclusivas, com tópicos essenciais de Estatística.',
        'Sétima',
        ['estatísticas', 'administração'],
        ''),
    Livro(
        "A Nova Contabilidade: Convergência ao Padrão Internacional",
        "AM002",
        "GUERRA, Luciano",
        2015,
        "Estamos passando por um gigantesco processo de mudanças na forma e no conteúdo do fazer contábil. Trata-se de ter a contabilidade falando a mesma língua no mundo todo. Pelo menos na linguagem contábil, realiza-se um sonho da humanidade que remonta aos tempos da Torre de Babel. O trabalho que se exigirá do profissional de contabilidade a partir das novas regras é totalmente diferente do que era antes. Agora, ele terá de exercer o chamado julgamento profissional. Portanto, não se trata de novidade vazia ou superficial. É uma mudança de mentalidade. Embora a nova legislação societária tenha sido editada já há algum tempo, é por meio dos pareceres do CPC ? Comitê de Pronunciamentos Contábeis que as mudanças estão sendo efetivamente implementadas. Para os professores de Contábeis, esses pareceres passaram a ser as únicas fontes bibliográficas atualizadas. No entanto, normas não são bons textos didáticos. Os objetivos são distintos, a linguagem é técnica. Exemplos numéricos, quando os há, ilustram apenas os casos especiais ou atípicos. Diante desse cenário, neste livro o autor busca produzir material didático atualizado pelas normas. Montar planilhas com exemplos. Apresentar questões extraídas dos exames de suficiência, de qualificação de auditoria e do ENADE, selecionadas por assunto e em ordem de complexidade, com cada questão identificada pela prova e pela numeração original. Com o processo de convergência, foram introduzidos temas antes não tratados pela Contabilidade. Assim, a proposta desta obra é destacar e dissecar esses temas, de forma didática e compreensível, simples sem ser simplista. Leitura complementar para as disciplinas Teoria da Contabilidade e Contabilidade Avançada. Recomendado para várias outras disciplinas do curso de Contábeis, por abordar temas fundamentais.",
        "Segunda",
        ["administração", "economia"],
        ''),
  ];
  RepositoryMock();
}
