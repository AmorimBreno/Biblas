import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_biblas/database/enum/livroSituacao_enum.dart';
import 'package:projeto_biblas/database/modules/livro/livro.dart';
import 'package:projeto_biblas/database/modules/livro/livroUsuario.dart';
import 'package:projeto_biblas/database/usuario/usuario_singleton.dart';
import 'package:projeto_biblas/modules/livros/widgets/botoesPegarLivro_widget.dart';
import 'package:projeto_biblas/modules/livros/widgets/termos_widget.dart';
import 'package:projeto_biblas/my_app.dart';
import 'package:projeto_biblas/shared/themes/app_colors.dart';
import 'package:projeto_biblas/shared/themes/text_styles.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../meus_processos/pages/processos_pagina.dart';

class TermosCondicoesWidget extends StatefulWidget {
  TermosCondicoesWidget({required this.termo, required this.livro});
  Livro livro;
  bool termo;

  @override
  // ignore: no_logic_in_create_state
  State<TermosCondicoesWidget> createState() =>
      _TermosCondicoesWidgetState(termo, livro, termo);
}

class _TermosCondicoesWidgetState extends State<TermosCondicoesWidget> {
  _TermosCondicoesWidgetState(this.isVisivelTermos, this.livro, this.solicitar);
  late Livro livro;
  bool isVisivelTudo = true;
  late bool isVisivelTermos;
  final bool solicitar;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    const double alturaContainerBranco = 600;
    final double larguraContainerBranco =
        larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela;

    final List<String> titulos = [
      'Penalidade por Atraso na Devolução',
      'Orientações Para Acesso',
      'Atenção Usuário'
    ];

    final List<String> conteudo = [
      'O prazo de devolução de qualquer livro é de 7(sete) dias, após a retirada. Sendo que a cada dia posterior uma multa de 1 real é aplicada e salva no seu registro academico, sendo cobrada na mensalidade da faculdade.',
      'São permitidas 2(duas) renovações on-line no periodo letivo e 6(seis) renovações no período de férias. O envio de e-mails é uma forma de lembrar o usuário da data de devolução.',
      'O envio de e-mails não isenta a multa.'
    ];

    return Visibility(
      visible: isVisivelTudo,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  )
                ]),
            height: alturaContainerBranco,
            width: larguraContainerBranco,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(
                  top: larguraTela < 800
                      ? alturaContainerBranco * 0.15
                      : alturaContainerBranco * 0.2,
                  bottom: larguraTela < 800
                      ? alturaContainerBranco * 0.05
                      : alturaContainerBranco * 0.1,
                ),
                child: Visibility(
                  visible: isVisivelTermos,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: TermosWidget(
                            titulo: titulos[index],
                            conteudo: conteudo[index],
                          ),
                        );
                      }),
                ),
              )),
            ),
          ),
          Container(
            color: AppColors.lightblue,
            height: larguraTela < 800
                ? alturaContainerBranco * 0.15
                : alturaContainerBranco * 0.2,
            width: larguraTela < 800 ? larguraTela * 0.8 : 0.45 * larguraTela,
            child: Center(
                child: Text(
              "CONDIÇÕES DE EMPRÉSTIMO DA BIBLIOTECA",
              style: AppTextStyles.titulos.copyWith(fontSize: 24),
            )),
          ),
          Positioned(
              bottom: 10,
              right: 0.22 * larguraContainerBranco,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                    onTap: () => setState(() {
                          UsuarioSingleton usuario = UsuarioSingleton();
                          isVisivelTermos == true
                              ? Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                  usuario.adicionarLivro(LivroUsuario(
                                      livro,
                                      solicitar ? DateTime.now() : _focusedDay,
                                      DateTime.now()
                                          .add(const Duration(days: 7)),
                                      solicitar
                                          ? livro.disponibilidade
                                              ? LivroSituacao.RETIRAR
                                              : LivroSituacao.FILA
                                          : LivroSituacao.RESERVADO));
                                  return const PaginaProcessos();
                                }))
                              : isVisivelTermos = true;
                        }),
                    child: BotoesLivros(
                        texto: livro.disponibilidade && isVisivelTermos
                            ? "CONFIRMAR"
                            : "POSIÇÃO: 6")),
              )),
          Visibility(
            visible: !isVisivelTermos,
            child: PositionedDirectional(
                end: 45,
                top: alturaContainerBranco / 2 - 180,
                child: SizedBox(
                  width: 600,
                  child: TableCalendar(
                    firstDay: DateTime(2022, 01, 01),
                    focusedDay: DateTime.now(),
                    lastDay: DateTime(2022, 12, 30),
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    },
                    calendarFormat: _calendarFormat,
                    onFormatChanged: (format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    },
                    onPageChanged: (focusedDay) {
                      _focusedDay = focusedDay;
                    },
                  ),
                )),
          )
        ],
      ),
    );
  }
}
