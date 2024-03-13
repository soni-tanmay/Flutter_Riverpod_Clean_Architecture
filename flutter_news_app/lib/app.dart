import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_news_app/l10n/l10n.dart";
import "package:flutter_news_app/router/app_router.dart";
import "package:flutter_news_app/theme/theme_modes.dart";
import "package:flutter_news_app/widgets/fallback_error.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Set the fit size
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        onGenerateTitle: (BuildContext context) => context.l10n.title,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: appRouter,
        theme: buildTheme(),
        builder: (BuildContext context, Widget? widget) {
          // Show fallback error instead of red screen in case of rendering failure.
          ErrorWidget.builder = (err) => switch (widget) {
                Scaffold _ ||
                Navigator _ =>
                  const Scaffold(body: Center(child: FallbackError())),
                _ => const FallbackError(),
              };

          return switch (widget) {
            null => throw StateError("Widget is null."),
            _ => widget,
          };
        },
      ),
    );
  }
}
