import 'package:collection/collection.dart';
import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/core/shared/enums.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/cubit/answer_cubit.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/question/question_bloc.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget(
      {super.key,
      required this.question,
      this.loadfromBloc = true,
      this.showAnswers = false});

  final QuestionEntity question;
  final bool loadfromBloc;
  final bool showAnswers;

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  Map<String, dynamic> answers = {};
  final bloc = sl<QuestionBloc>();

  @override
  void initState() {
    super.initState();
    if (bloc.answers.containsKey(widget.question.id) && widget.loadfromBloc) {
      answers[widget.question.id] = bloc.answers[widget.question.id];

      for (var question in sl<QuestionBloc>().questions) {
        //find the answer with the same answer value as the one in the bloc
        Answer? answer = question.answerListEntity?.answers.firstWhereOrNull(
            (a) => a.answerText == answers[widget.question.id]);

        if (answer != null) {
          // sl<AnswerCubit>().filterAnswers(widget.question.id, answer);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (QuestionTypeExtension.fromString(widget.question.answerType)) {
      case QuestionTypeEnum.bool:
        return _buildBooleanQuestion(context);
      case QuestionTypeEnum.multiple_select:
        return _buildMultipleSelectQuestion();
      case QuestionTypeEnum.short_text:
        return _buildShortTextQuestion();
      case QuestionTypeEnum.radio_select:
        return _buildRadioSelectQuestion();
      case QuestionTypeEnum.dropdown_select:
        return _buildDropdownSelectQuestion();
      case QuestionTypeEnum.number:
        return _buildNumberQuestion();
      case QuestionTypeEnum.long_text:
        return _buildLongTextQuestion();
      case QuestionTypeEnum.image:
        return _buildImageQuestion();
      case QuestionTypeEnum.date:
        return _buildDateQuestion();
    }
  }

  Widget _buildBooleanQuestion(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildBooleanButton(context, 'Yes', 'true'),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildBooleanButton(context, 'No', 'false'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBooleanButton(BuildContext context, String label, String value) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: answers[widget.question.id] == value
            ? Theme.of(context).primaryColor
            : Theme.of(context).primaryColorLight,
      ),
      onPressed: () {
        setState(() {
          answers[widget.question.id] = value;
        });
        bloc.add(
          QuestionEvent.answerQuestion(
            answer: {widget.question.id: value},
            surveyId: widget.question.surveyId!,
          ),
        );
      },
      child: Text(
        label,
        style: TextStyle(
          color: answers[widget.question.id] == value
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }

  Widget _buildMultipleSelectQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          ...?widget.question.answerListEntity?.answers.map((answer) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CheckboxListTile(
                title: Text(answer.answerText),
                value:
                    answers[widget.question.id]?.split(',').contains(answer) ??
                        false,
                onChanged: (value) {
                  setState(() {
                    if (value == true) {
                      answers[widget.question.id] =
                          answers[widget.question.id] == null
                              ? answer
                              : '${answers[widget.question.id]},$answer';
                    } else {
                      answers[widget.question.id] = answers[widget.question.id]
                          ?.split(',')
                          .where((a) => a != answer)
                          .join(',');
                    }
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildShortTextQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            initialValue: answers[widget.question.id],
            decoration: InputDecoration(
              hintText: 'Enter your answer',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            onChanged: (value) {
              bloc.add(
                QuestionEvent.answerQuestion(
                  answer: {widget.question.id: value},
                  surveyId: widget.question.surveyId!,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRadioSelectQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          ...?widget.question.answerListEntity?.answers.map((answer) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: RadioListTile(
                groupValue: answers[widget.question.id],
                title: Text(answer.answerText),
                value: answer,
                onChanged: (value) {
                  setState(() {
                    answers[widget.question.id] = answer;
                  });
                  bloc.add(
                    QuestionEvent.answerQuestion(
                      answer: {widget.question.id: answer.answerText},
                      surveyId: widget.question.surveyId!,
                    ),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildDropdownSelectQuestion() {
    Answer? firstSelected = widget.question.answerListEntity?.answers
        .firstWhereOrNull((a) => a.isSelected);

    firstSelected ??= widget.question.answerListEntity?.answers
        .firstWhere((a) => a.isVisible);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            isExpanded: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            value: firstSelected?.answerText,
            onChanged: (String? value) {
              setState(() {
                answers[widget.question.id] = value;
              });

              selectAnswer(
                  widget.question.id,
                  widget.question.answerListEntity!.answers
                      .firstWhere((a) => a.answerText == value));

              bloc.add(
                QuestionEvent.answerQuestion(
                  answer: {widget.question.id: value ?? 'error'},
                  surveyId: widget.question.surveyId!,
                ),
              );
            },
            items: widget.question.answerListEntity?.answers
                .where((answer) => answer.isVisible)
                .map<DropdownMenuItem<String>>(
                  (Answer answer) => DropdownMenuItem<String>(
                    value: answer.answerText,
                    child: Text(
                      answer.answerText,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildNumberQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter your answer',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            onChanged: (value) {
              bloc.add(
                QuestionEvent.answerQuestion(
                  answer: {widget.question.id: value},
                  surveyId: widget.question.surveyId!,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLongTextQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Enter your answer',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            onChanged: (value) {
              bloc.add(
                QuestionEvent.answerQuestion(
                  answer: {widget.question.id: value},
                  surveyId: widget.question.surveyId!,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildImageQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Implement image picker logic here
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Upload Image'),
          ),
        ],
      ),
    );
  }

  Widget _buildDateQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.question.question,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (pickedDate != null) {
                setState(() {
                  answers[widget.question.id] = pickedDate.toIso8601String();
                });
                bloc.add(
                  QuestionEvent.answerQuestion(
                    answer: {widget.question.id: pickedDate.toIso8601String()},
                    surveyId: widget.question.surveyId!,
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Select Date'),
          ),
        ],
      ),
    );
  }

  void selectAnswer(String questionId, Answer answer) {
    try {
      sl<AnswerCubit>().filterAnswers(questionId, answer);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  void setSelectedAnswer(Answer answer) {
    for (var question in sl<QuestionBloc>().questions) {
      if (question.answerListEntity != null &&
          question.answerListEntity!.id == answer.answerListId) {
        for (var _answer in question.answerListEntity!.answers) {
          if (_answer.id == answer.id) {
            _answer.isSelected = true;
          } else {
            _answer.isSelected = false;
          }
        }
      }
    }
  }
}
