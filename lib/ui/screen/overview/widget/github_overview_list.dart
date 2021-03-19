import 'package:flutter/material.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/state/github_overview_uimodel.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/widget/github_overview_item.dart';

class GithubOverviewList extends StatelessWidget {
  final List<GithubOverviewUiModel> _uiModels;
  const GithubOverviewList(this._uiModels);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _uiModels.length,
      itemBuilder: (ctx, index) {
        return GithubOverviewItem(_uiModels[index]);
      },
    );
  }
}
