import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/state/github_overview_uimodel.dart';

part 'github_overview_state.freezed.dart';

@freezed
abstract class GithubOverviewState with _$GithubOverviewState {
  const factory GithubOverviewState.initializing() = _Initializing;
  const factory GithubOverviewState.error() = _Error;
  const factory GithubOverviewState.data(List<GithubOverviewUiModel> uiModels) =
      _Data;
}
