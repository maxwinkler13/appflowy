import 'package:appflowy/generated/locale_keys.g.dart';
import 'package:appflowy/startup/startup.dart';
import 'package:appflowy/workspace/presentation/settings/widgets/setting_cloud.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppFlowyCloudPage extends StatelessWidget {
  const AppFlowyCloudPage({super.key});

  static const routeName = '/AppFlowyCloudPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.settings_mobile_privacyPolicy.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SettingCloud(
          didResetServerUrl: () async {
            await runAppFlowy();
          },
        ),
      ),
    );
  }
}
