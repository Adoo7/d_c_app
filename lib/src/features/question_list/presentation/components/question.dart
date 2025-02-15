import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/core/shared/enums.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/question/question_bloc.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({super.key, required this.question});

  final QuestionEntity question;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  Map<String, dynamic> answers = {};
  var bloc = sl<QuestionBloc>();

  @override
  Widget build(BuildContext context) {
    // return Placeholder();

    switch (QuestionTypeExtension.fromString(widget.question.answerType)) {
      case QuestionTypeEnum.bool:
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.question.question),
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.onPrimary,
                      ),
                      backgroundColor: answers[widget.question.id] == 'true'
                          ? WidgetStateProperty.all(
                              Theme.of(context).primaryColorDark,
                            )
                          : WidgetStateProperty.all(
                              Theme.of(context).primaryColorLight,
                            ),
                    ),
                    onPressed: () {
                      setState(() {
                        answers[widget.question.id] = 'true';
                      });

                      // save answer to local storage
                      bloc.add(
                        QuestionEvent.answerQuestion(
                          {widget.question.id: 'true'},
                        ),
                      );
                    },
                    child: const Text('Yes'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.onPrimary,
                      ),
                      backgroundColor: answers[widget.question.id] == 'false'
                          ? WidgetStateProperty.all(
                              Theme.of(context).primaryColorDark,
                            )
                          : WidgetStateProperty.all(
                              Theme.of(context).primaryColorLight,
                            ),
                    ),
                    onPressed: () {
                      setState(() {
                        answers[widget.question.id] = 'false';
                      });
                      bloc.add(
                        QuestionEvent.answerQuestion(
                          {widget.question.id: 'false'},
                        ),
                      );
                    },
                    child: const Text('No'),
                  ),
                ],
              ),
            ],
          ),
        );
      case QuestionTypeEnum.multiple_select:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question.question),
            ...?widget.question.answerListEntity?.answers
                .map((answer) => CheckboxListTile(
                      title: Text(answer),
                      value: answers[widget.question.id] == answer,
                      onChanged: (value) {
                        setState(() {
                          answers[widget.question.id] = answer;
                        });
                        bloc.add(
                          QuestionEvent.answerQuestion(
                            {widget.question.id: answer},
                          ),
                        );
                      },
                    ))
          ],
        );
      case QuestionTypeEnum.short_text:
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.question.question),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter your answer',
                ),
                onChanged: (value) => bloc.add(
                  QuestionEvent.answerQuestion(
                    {widget.question.id: value},
                  ),
                ),
              ),
            ],
          ),
        );
      case QuestionTypeEnum.radio_select:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question.question),
            ...?widget.question.answerListEntity?.answers
                .map((answer) => RadioListTile(
                      groupValue: answer,
                      title: Text(answer),
                      value: answers[widget.question.id],
                      onChanged: (value) {
                        setState(() {
                          answers[widget.question.id] = answer;
                        });
                        bloc.add(
                          QuestionEvent.answerQuestion(
                            {widget.question.id: answer},
                          ),
                        );
                      },
                    ))
          ],
        );
      case QuestionTypeEnum.dropdown_select:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question.question),
            DropdownButton<String>(
              value: answers[widget.question.id],
              onChanged: (String? value) {
                setState(() {
                  answers[widget.question.id] = value;
                });
                bloc.add(
                  QuestionEvent.answerQuestion(
                    {widget.question.id: value ?? 'error'},
                  ),
                );
              },
              items: widget.question.answerListEntity?.answers
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      case QuestionTypeEnum.number:
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.question.question),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Enter your answer',
                ),
                onChanged: (value) => bloc.add(
                  QuestionEvent.answerQuestion(
                    {widget.question.id: value},
                  ),
                ),
              ),
            ],
          ),
        );
      default:
        return const Placeholder();
    }
  }
}
