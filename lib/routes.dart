import 'package:flutter/material.dart';
import 'package:riverpod_usecase_example/ui/screen/detail/github_detail_screen.dart';
import 'package:riverpod_usecase_example/ui/screen/home/home_screen.dart';
import 'package:riverpod_usecase_example/ui/screen/overview/github_overview_screen.dart';

class Routes {
  Routes._();

  static const String firstScreen = "/";
  static const String githubOverview = "/github-overview";
  static const String githubRepositoryDetail = "/github-repository-detail";

  static final routes = <String, WidgetBuilder>{
    firstScreen: (BuildContext context) => HomeScreen(),
    githubOverview: (BuildContext context) => GithubOverviewScreen(),
    githubRepositoryDetail: (BuildContext context) => GithubDetailScreen(),
  };
}
