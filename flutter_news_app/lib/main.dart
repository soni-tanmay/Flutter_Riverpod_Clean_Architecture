import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_news_app/app.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Called when Flutter framework catches an error.
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };

  // Catches all async errors not caught by Flutter framework.
  PlatformDispatcher.instance.onError = (error, stack) {
    FlutterError.presentError(FlutterErrorDetails(
        exception: error, stack: stack, library: "Flutter_News"));
    return true;
  };

  // Force portrait mode.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const ProviderScope(child: App()));
}
