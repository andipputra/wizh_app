import 'package:flutter/material.dart';

class TripsDetailIncludesExcludes extends StatelessWidget {
  const TripsDetailIncludesExcludes({
    super.key,
    required this.excludes,
    required this.includes,
  });

  final List<String> includes;
  final List<String> excludes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 16,
        children: [
          ExpansionTile(
            initiallyExpanded: true,
            title: Text(
              'Includes',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            childrenPadding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            children:
                includes
                    .map(
                      (e) => _expansionItem(
                        item: e,
                        icon: Icon(
                          Icons.check,
                          color: Theme.of(context).colorScheme.primary,
                          size: 16,
                        ),
                      ),
                    )
                    .toList(),
          ),
          ExpansionTile(
            initiallyExpanded: true,
            title: Text(
              'Excludes',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            childrenPadding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            children:
                excludes
                    .map(
                      (e) => _expansionItem(
                        item: e,
                        icon: Icon(
                          Icons.close,
                          color: Theme.of(context).colorScheme.error,
                          size: 16,
                        ),
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }

  Widget _expansionItem({required String item, Icon? icon}) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    spacing: 4,
    children: [if (icon != null) icon, Expanded(child: Text(item))],
  );
}
