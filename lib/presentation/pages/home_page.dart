import 'package:benjamin_web/presentation/pages/pages.dart';
import 'package:benjamin_web/presentation/widgets/background.dart';
import 'package:benjamin_web/settings/device_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundApp(),
          PageView(children: [getBody(context)]),
        ],
      ),
    );
  }

  static Widget getBody(BuildContext context) {
    if (DeviceInfo.isMobile(context)) {
      return const Mobile();
    } else if (DeviceInfo.isTablet(context)) {
      return const Tablet();
    } else if (DeviceInfo.isDesktop(context)) {
      return const Desktop();
    } else {
      return const CircularProgressIndicator(backgroundColor: Colors.blue);
    }
  }
}
