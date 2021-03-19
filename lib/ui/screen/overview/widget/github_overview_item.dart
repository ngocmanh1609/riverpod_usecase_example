import 'package:flutter/material.dart';
import 'package:riverpod_usecase_example/routes.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/state/github_overview_uimodel.dart';

class GithubOverviewItem extends StatelessWidget {
  final GithubOverviewUiModel _githubOverviewUiModel;

  GithubOverviewItem(this._githubOverviewUiModel);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.githubRepositoryDetail,
            arguments: _githubOverviewUiModel.repoPath);
      },
      child: ListTile(
        leading: Image.network(
          _githubOverviewUiModel.ownerAvatar,
          cacheWidth: 100,
          cacheHeight: 100,
        ),
        title: Text(_githubOverviewUiModel.repositoryName),
        subtitle: Text(_githubOverviewUiModel.repositoryDescription),
      ),
    );
  }
}
