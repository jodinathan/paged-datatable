import 'package:flutter/material.dart';
import 'package:paged_datatable_v2/paged_datatable_v2.dart';

/// The default footer renderer for [PagedDataTable].
///
/// It renders the [RefreshTable], [PageSizeSelector], [CurrentPage] and [NavigationButtons] widgets.
class DefaultFooter<K extends Comparable<K>, T> extends StatelessWidget {
  /// An additional widget to render at the left of the footer
  final Widget? child;

  const DefaultFooter({this.child, super.key});

  @override
  Widget build(BuildContext context) {
    final dividerColor = Theme.of(context).dividerColor;
    return Row(
      children: [
        if (child != null) Expanded(child: child!) else const Spacer(),
        RefreshTable<K, T>(),
        VerticalDivider(
            color: dividerColor, width: 3, indent: 10, endIndent: 10),
        PageSizeSelector<K, T>(),
        VerticalDivider(
            color: dividerColor, width: 3, indent: 10, endIndent: 10),
        CurrentPage<K, T>(),
        VerticalDivider(
            color: dividerColor, width: 3, indent: 10, endIndent: 10),
        NavigationButtons<K, T>(),
      ],
    );
  }
}
