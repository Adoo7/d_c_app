import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/features/project_list/presentation/bloc/project/project_bloc.dart';
import 'package:d_c_app/src/features/project_list/presentation/pages/initial_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDetailView extends StatelessWidget {
  ProjectDetailView({super.key, required this.projectId});

  final bloc = sl<ProjectBloc>();
  final String projectId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Detail'),
      ),
      body: BlocBuilder<ProjectBloc, ProjectState>(
        bloc: bloc..add(ProjectEvent.fetchProjectById('abc123')),
        builder: (context, state) {
          return state.map(
              initial: (_) => InitialLoadingView(),
              loading: (_) => InitialLoadingView(),
              loaded: (_) => InitialLoadingView(),
              failed: (_) =>
                  Center(child: Text('Failed to load project details')));
        },
      ),
    );
  }
}
