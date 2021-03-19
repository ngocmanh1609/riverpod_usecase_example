import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/state/github_overview_state.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/state/github_overview_uimodel.dart';
import 'package:riverpod_usecase_example/usecase/get_github_repositories_usecase.dart';

@Injectable()
class GithubOverViewModel extends StateNotifier<GithubOverviewState> {
  GetGithubRepositoriesUseCase _getGithubRepositoriesUseCase;
  GithubOverViewModel(this._getGithubRepositoriesUseCase)
      : super(const GithubOverviewState.initializing()) {
    _init();
  }

  void _init() {
    _getGithubRepositoriesUseCase.execute().then((responses) {
      List<GithubOverviewUiModel> uiModels = responses.map((response) {
        return GithubOverviewUiModel(
          id: response.id ?? -1,
          repoPath: response.fullName ?? "",
          repositoryName: response.name ?? "",
          repositoryDescription: response.description ?? "",
          ownerName: response.owner?.login ?? "",
          ownerAvatar: response.owner?.avatarUrl ?? "",
        );
      }).toList();
      state = GithubOverviewState.data(uiModels);
    }, onError: (e) {
      state = GithubOverviewState.error();
    });
  }
}
