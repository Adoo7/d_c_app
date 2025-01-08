import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/project_feature/presentation/bloc/project/project_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatefulWidget {
  const SampleItemListView({
    super.key,
  });

  static const routeName = '/';

  @override
  State<SampleItemListView> createState() => _SampleItemListViewState();
}

class _SampleItemListViewState extends State<SampleItemListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocConsumer<ProjectBloc, ProjectState>(
      bloc: sl<ProjectBloc>()..add(ProjectEvent.fetchProjects()),
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (state) => ProjectList(),
          failed: (state) => Center(
            child: Text(state.error.toString()),
          ),
        );
      },
    );
  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (ctx, a) {
            return Container(
              height: 80,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        ),
      ),
    );
  }
}
