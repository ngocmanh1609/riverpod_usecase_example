import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_usecase_example/di/di.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/github_overview_model.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/widget/github_overview_list.dart';

final githubOverviewModel =
    StateNotifierProvider.autoDispose<GithubOverViewModel>((ref) {
  return getIt<GithubOverViewModel>();
});

class GithubOverviewScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(githubOverviewModel.state);
    return Scaffold(
      appBar: AppBar(
        title: Text("Github Repositories"),
      ),
      body: state.when(
        initializing: () => const Center(child: CircularProgressIndicator()),
        error: () => const Center(child: Text("Error")),
        data: (uiModels) => GithubOverviewList(uiModels),
      ),
    );
  }
}
