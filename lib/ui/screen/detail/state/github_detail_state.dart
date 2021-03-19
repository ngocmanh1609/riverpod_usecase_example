import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_usecase_example/ui/screen/detail/state/github_detail_uimodel.dart';

part 'github_detail_state.freezed.dart';

@freezed
abstract class GithubDetailState with _$GithubDetailState {
  const factory GithubDetailState.initializing() = _Initializing;
  const factory GithubDetailState.error() = _Error;
  const factory GithubDetailState.loaded(GithubDetailUiModel uiMode) = _Loaded;
}
