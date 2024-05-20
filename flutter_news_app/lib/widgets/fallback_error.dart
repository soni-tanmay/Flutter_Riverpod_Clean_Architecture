import "package:flutter/material.dart";
import "package:flutter_news_app/l10n/l10n.dart";

///
/// Fallback error widget, which is shown in place of grey/red screen when any rendering error happens.
///
class FallbackError extends StatelessWidget {
  const FallbackError({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          context.l10n.fallbackError,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.error,
          ),
        ),
      ),
    );
  }
}
