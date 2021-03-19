import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_usecase_example/di/di.dart';
import 'package:riverpod_usecase_example/ui/screen/detail/widget/github_detail_body.dart';
import 'package:riverpod_usecase_example/ui/screen/detail/github_detail_model.dart';

final githubDetailModel =
    StateNotifierProvider.autoDispose<GithubDetailModel>((ref) {
  return getIt<GithubDetailModel>();
});

class GithubDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final repoName = ModalRoute.of(context)?.settings.arguments as String;
    context.read(githubDetailModel).init(repoName);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Consumer(
        builder: (ctx, watch, child) {
          final state = watch(githubDetailModel.state);
          return state.when(
            initializing: () =>
                const Center(child: CircularProgressIndicator()),
            error: () => const Center(child: Text("Error")),
            loaded: (uiModel) => GithubDetailBody(uiModel),
          );
        },
      ),
    );
  }
}
