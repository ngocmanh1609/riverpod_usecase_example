import 'package:flutter/material.dart';
import 'package:riverpod_usecase_example/ui/screen/detail/state/github_detail_uimodel.dart';

class GithubDetailBody extends StatelessWidget {
  final GithubDetailUiModel _uiModel;
  const GithubDetailBody(this._uiModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(_uiModel.ownerAvatar),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Center(
            child: Text(_uiModel.repoName),
          ),
        ),
      ],
    );
  }
}
