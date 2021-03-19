import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod_usecase_example/ui/screen/detail/state/github_detail_state.dart';
import 'package:riverpod_usecase_example/ui/screen/detail/state/github_detail_uimodel.dart';
import 'package:riverpod_usecase_example/usecase/get_github_repository_usecase.dart';

@Injectable()
class GithubDetailModel extends StateNotifier<GithubDetailState> {
  GetGithubRepositoryUseCase _getGithubRepositoryUseCase;

  GithubDetailModel(this._getGithubRepositoryUseCase)
      : super(const GithubDetailState.initializing());

  void init(String repoPath) {
    _getGithubRepositoryUseCase.execute(repoPath).then((response) {
      var uiModel = GithubDetailUiModel(
        response.fullName ?? "",
        response.owner?.avatarUrl ?? "",
      );
      state = GithubDetailState.loaded(uiModel);
    }, onError: (e) {
      state = GithubDetailState.error();
    });
  }
}
