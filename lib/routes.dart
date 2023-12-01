import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_app/about_me.dart';
import 'package:portfolio_app/intro.dart';
import 'package:portfolio_app/splash.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context , GoRouterState state) => SplashScreen()
    ),
    GoRoute(
      path: '/intro',
      name: 'intro',
      pageBuilder: (BuildContext context , GoRouterState state) => CustomTransitionPage(
          child: IntroScreen(),
          transitionsBuilder: (BuildContext context , Animation<double> animation , Animation<double> secondaryAnimation , Widget child) => FadeTransition(opacity: CurveTween(curve: Curves.bounceIn).animate(animation) , child: child,)),
    ),
    GoRoute(
      path: '/about_me',
      name: 'about',
      pageBuilder: (BuildContext context , GoRouterState state) => CustomTransitionPage(
          child: AboutScreen(),
          transitionsBuilder: (BuildContext context , Animation<double> animation , Animation<double> secondaryAnimation , Widget child) => FadeTransition(opacity: CurveTween(curve: Curves.bounceIn).animate(animation) , child: child,)),
    ),
  ]
);