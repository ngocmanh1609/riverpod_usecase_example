class GithubOverviewUiModel {
  final int id;
  final String repoPath;
  final String repositoryName;
  final String repositoryDescription;
  final String ownerName;
  final String ownerAvatar;

  GithubOverviewUiModel(
      {required this.id,
      required this.repoPath,
      required this.repositoryName,
      required this.repositoryDescription,
      required this.ownerName,
      required this.ownerAvatar});
}
