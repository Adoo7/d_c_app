import 'package:collection/collection.dart';
import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/core/shared/enums.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/cubit/answer_cubit.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/question/question_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  bool hasValidationError = false;
  final GlobalKey _questionKey = GlobalKey();

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
    return BlocConsumer<QuestionBloc, QuestionState>(
      bloc: bloc,
      listener: (context, state) {
        state.maybeWhen(
          validationErrors: (missingQuestionIds, firstMissingQuestionId) {
            setState(() {
              hasValidationError =
                  missingQuestionIds.contains(widget.question.id) &&
                      widget.question.required &&
                      (answers[widget.question.id] == null ||
                          answers[widget.question.id].toString().isEmpty);

              // If this is the first missing question, scroll to it
              if (firstMissingQuestionId == widget.question.id &&
                  hasValidationError) {
                // Use a post-frame callback to ensure the widget is built
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Scrollable.ensureVisible(
                    _questionKey.currentContext!,
                    alignment: 0.0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                });
              }
            });
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return _buildQuestionWidget();
      },
    );
  }

  Widget _buildQuestionWidget() {
    // Wrap the question widget with a container that has a key for scrolling
    return Container(
      key: _questionKey,
      child: _buildQuestionContent(),
    );
  }

  Widget _buildQuestionContent() {
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

  // Helper method to get the border color based on validation state
  Color _getBorderColor() {
    if (hasValidationError) {
      return Theme.of(context).colorScheme.error;
    }
    return Colors.transparent;
  }

  // Helper method to get the container decoration
  BoxDecoration _getContainerDecoration() {
    return BoxDecoration(
      color: Theme.of(context).cardColor,
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(
        color: _getBorderColor(),
        width: hasValidationError ? 2.0 : 0.0,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 4.0,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }

  Widget _buildBooleanQuestion(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
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
      onPressed: () {
        _updateAnswer(widget.question.id, value);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: answers[widget.question.id] == value
            ? Theme.of(context).primaryColor
            : Theme.of(context).cardColor,
        foregroundColor: answers[widget.question.id] == value
            ? Colors.white
            : Theme.of(context).textTheme.bodyLarge?.color,
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
            color: answers[widget.question.id] == value
                ? Theme.of(context).primaryColor
                : Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Text(label),
    );
  }

  Widget _buildMultipleSelectQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: widget.question.answerListEntity?.answers
                    .where((answer) => answer.isVisible)
                    .map((Answer answer) {
                  return CheckboxListTile(
                    title: Text(answer.answerText),
                    value: answers[widget.question.id]
                            ?.split(',')
                            .contains(answer.answerText) ??
                        false,
                    onChanged: (bool? value) {
                      if (value == null) return;

                      String currentAnswers = answers[widget.question.id] ?? '';
                      List<String> answerList = currentAnswers.isEmpty
                          ? []
                          : currentAnswers.split(',');

                      if (value) {
                        // Add the answer if it's not already in the list
                        if (!answerList.contains(answer.answerText)) {
                          answerList.add(answer.answerText);
                        }
                      } else {
                        // Remove the answer from the list
                        answerList.remove(answer.answerText);
                      }

                      // Update the answer with the new list
                      _updateAnswer(widget.question.id,
                          answerList.isEmpty ? null : answerList.join(','));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  );
                }).toList() ??
                [],
          ),
        ],
      ),
    );
  }

  Widget _buildShortTextQuestion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: TextEditingController(
                text: answers[widget.question.id]?.toString() ?? ''),
            decoration: InputDecoration(
              hintText: 'Enter your answer',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: hasValidationError
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).dividerColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            onChanged: (value) {
              _updateAnswer(widget.question.id, value);
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
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: widget.question.answerListEntity?.answers
                    .where((answer) => answer.isVisible)
                    .map((Answer answer) {
                  return RadioListTile<String>(
                    title: Text(answer.answerText),
                    value: answer.answerText,
                    groupValue: answers[widget.question.id],
                    onChanged: (String? value) {
                      if (value == null) return;

                      _updateAnswer(widget.question.id, value);

                      selectAnswer(widget.question.id, answer);
                    },
                  );
                }).toList() ??
                [],
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownSelectQuestion() {
    // Get the current answer from the answers map
    String? currentAnswer = answers[widget.question.id];

    // If we have a current answer, find the corresponding Answer object
    Answer? currentAnswerObj = currentAnswer != null
        ? widget.question.answerListEntity?.answers
            .firstWhereOrNull((a) => a.answerText == currentAnswer)
        : null;

    // Only use the current answer if it exists and is visible
    Answer? selectedAnswer =
        (currentAnswerObj != null && currentAnswerObj.isVisible)
            ? currentAnswerObj
            : null;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            isExpanded: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: hasValidationError
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).dividerColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            value: selectedAnswer?.answerText,
            hint: const Text("Select an option"),
            onChanged: (String? value) {
              if (value == null) return;

              _updateAnswer(widget.question.id, value);

              // Find the answer object that matches the selected value
              Answer? selectedAnswerObj = widget
                  .question.answerListEntity?.answers
                  .firstWhereOrNull((a) => a.answerText == value);

              if (selectedAnswerObj != null) {
                selectAnswer(widget.question.id, selectedAnswerObj);
              }
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
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: TextEditingController(
                text: answers[widget.question.id]?.toString() ?? ''),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter a number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: hasValidationError
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).dividerColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            onChanged: (value) {
              _updateAnswer(widget.question.id, value);
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
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: TextEditingController(
                text: answers[widget.question.id]?.toString() ?? ''),
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Enter your answer',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: hasValidationError
                      ? Theme.of(context).colorScheme.error
                      : Theme.of(context).dividerColor,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
            ),
            onChanged: (value) {
              _updateAnswer(widget.question.id, value);
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
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
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
      decoration: _getContainerDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              if (widget.question.required)
                Text(
                  '*',
                  style: TextStyle(
                    color: hasValidationError
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
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
      // Check if the answer is visible before filtering
      if (!answer.isVisible) {
        // If the answer is not visible, find the first visible answer
        Answer? firstVisibleAnswer = widget.question.answerListEntity?.answers
            .firstWhereOrNull((a) => a.isVisible);

        if (firstVisibleAnswer != null) {
          // Update the answer to the first visible one
          setState(() {
            answers[questionId] = firstVisibleAnswer.answerText;
          });

          // Use the first visible answer for filtering
          sl<AnswerCubit>().filterAnswers(questionId, firstVisibleAnswer);
        } else {
          // If no visible answers, clear the selection
          setState(() {
            answers[questionId] = null;
          });
        }
        return;
      }

      // If the answer is visible, proceed with normal filtering
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

  // Helper method to update an answer and remove it if empty
  void _updateAnswer(String questionId, String? value) {
    setState(() {
      if (value == null || value.isEmpty) {
        // Remove the answer if it's empty
        answers.remove(questionId);
      } else {
        // Update the answer
        answers[questionId] = value;
      }

      // Reset validation error when answer is updated
      hasValidationError = false;
    });

    // Notify the bloc about the answer change
    bloc.add(
      QuestionEvent.answerQuestion(
        answer: {questionId: value ?? ""},
        surveyId: widget.question.surveyId!,
      ),
    );
  }
}
