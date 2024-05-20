import "package:desktop_window/desktop_window.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_news_app/app.dart";
import "package:flutter_news_app/core/localDB/local_database.dart";
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

  // Force full screen for desktops.
  final bool fullScreenSupported = switch (defaultTargetPlatform) {
    TargetPlatform.linux ||
    TargetPlatform.macOS ||
    TargetPlatform.windows =>
      true,
    _ => false
  };
  if (fullScreenSupported) {
    // await DesktopWindow.setFullScreen(true);

    // Uncomment this to simulate 16:9 ratio in debug for accurate UI developemnt.
    await DesktopWindow.setWindowSize(const Size(768, 1366));
  }

  await LocalDatabase.instance.database;

  runApp(const ProviderScope(child: App()));
}
