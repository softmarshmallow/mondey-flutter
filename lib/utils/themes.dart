
import 'package:flutter/material.dart';

ThemeData buildTheme(BuildContext context){
  return ThemeData(
    appBarTheme: AppBarTheme(
      color: Theme.of(context).colorScheme.secondary,
    ),
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headline1: Theme.of(context).textTheme.headline1.copyWith(fontWeight: FontWeight.bold)
    )
  );
}