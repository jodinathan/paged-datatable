import 'package:flutter/material.dart';
import 'package:paged_datatable_v2/paged_datatable_v2.dart';

final class TableControllerProvider<K extends Comparable<K>, T>
    extends InheritedWidget {
  final PagedDataTableController<K, T> controller;

  const TableControllerProvider(
      {required this.controller, required super.child, super.key});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>
      false; //controller != (oldWidget as TableControllerProvider).controller;

  static PagedDataTableController<K, T> of<K extends Comparable<K>, T>(
          BuildContext context) =>
      context
          .dependOnInheritedWidgetOfExactType<TableControllerProvider<K, T>>()!
          .controller;
}
