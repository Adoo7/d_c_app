import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/core/shared/enums.dart';
import 'package:d_c_app/src/features/project_list/domain/entities/project.dart';
import 'package:d_c_app/src/features/project_list/presentation/bloc/project_list/project_list_bloc.dart';
import 'package:d_c_app/src/shared/components/initial_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// Displays a list of SampleItems.
class ProjectListView extends StatefulWidget {
  const ProjectListView({
    super.key,
    required this.type,
  });

  final ProjectViewType type;

  @override
  State<ProjectListView> createState() => _ProjectListViewState();
}

class _ProjectListViewState extends State<ProjectListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  final bloc = sl<ProjectListBloc>();

  _buildBody() {
    return BlocConsumer<ProjectListBloc, ProjectListState>(
      bloc: bloc..add(ProjectListEvent.fetchProjects()),
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => InitialLoadingView(),
          loaded: (state) => RefreshIndicator(
              onRefresh: () async => bloc.add(
                    ProjectListEvent.fetchProjects(),
                  ),
              child: ProjectList(
                  type: widget.type,
                  projects: state.projects
                      .where((p) => p.type == widget.type)
                      .toList())),
          failed: (state) => RefreshIndicator(
            onRefresh: () async => bloc.add(ProjectListEvent.fetchProjects()),
            child: ListView(
              children: [Center(child: Text(state.error.toString()))],
            ),
          ),
        );
      },
    );
  }
}

class ProjectList extends StatelessWidget {
  ProjectList({
    super.key,
    required this.projects,
    required this.type,
  });

  final List<ProjectEntity>? projects;
  final ProjectViewType type;
  late String _title;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ProjectViewType.review:
        _title = 'Review';
      case ProjectViewType.quality_assurance:
        _title = 'Quality Control';
      case ProjectViewType.data_collection:
        _title = 'Data Collection';
    }

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 80),
            child: Column(
              children: [
                Text(_title, style: Theme.of(context).textTheme.titleLarge),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Want to import a Project?',
                      style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(
                      text: ' Click here',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold)),
                ])),
              ],
            ),
          ),
          Center(
            child: ListView.builder(
              itemCount: projects?.length ?? 0,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, a) {
                return GestureDetector(
                  onTap: () {
                    context.push('/dash/project/${projects![a].id}',
                        extra: projects![a]);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(50),
                          spreadRadius: 0,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Text(
                      projects![a].name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
