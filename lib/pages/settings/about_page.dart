import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:beecount/widgets/biz/bee_icon.dart';

import '../../providers.dart';
import '../../widgets/ui/ui.dart';
import '../../styles/tokens.dart';
import '../../l10n/app_localizations.dart';
import '../../utils/ui_scale_extensions.dart';
import 'privacy_policy_page.dart';

/// 关于页面
class AboutPage extends ConsumerStatefulWidget {
  const AboutPage({super.key});

  @override
  ConsumerState<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends ConsumerState<AboutPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final primary = ref.watch(primaryColorProvider);

    return Scaffold(
      backgroundColor: BeeTokens.scaffoldBackground(context),
      body: Column(
        children: [
          PrimaryHeader(
            title: l10n.aboutPageTitle,
            subtitle: l10n.aboutPageSubtitle,
            showBack: true,
          ),
          Expanded(
            child: SafeArea(
              top: false,
              child: ListView(
                padding: EdgeInsets.fromLTRB(
                  16.0.scaled(context, ref),
                  8.0.scaled(context, ref),
                  16.0.scaled(context, ref),
                  16.0.scaled(context, ref),
                ),
                children: [
                  // ===== 顶部:图标 + 应用名（版本号已下线）=====
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 24.0.scaled(context, ref),
                    ),
                    child: Column(
                      children: [
                        BeeIcon(
                          color: primary,
                          size: 80.0.scaled(context, ref),
                        ),
                        SizedBox(height: 16.0.scaled(context, ref)),
                        Text(
                          l10n.appName,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: BeeTokens.textPrimary(context),
                              ),
                        ),
                      ],
                    ),
                  ),
                  // ===== 开发者的话（两句话，直接展示）=====
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(
                      18.0.scaled(context, ref),
                      16.0.scaled(context, ref),
                      18.0.scaled(context, ref),
                      16.0.scaled(context, ref),
                    ),
                    decoration: BoxDecoration(
                      color: BeeTokens.surface(context),
                      borderRadius: BorderRadius.circular(16.0.scaled(context, ref)),
                      border: Border.all(
                        color: BeeTokens.border(context),
                        width: 0.6,
                      ),
                    ),
                    child: Text(
                      l10n.aboutDeveloperStory,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: BeeTokens.textSecondary(context),
                            height: 1.8,
                          ),
                    ),
                  ),
                  // ===== 底部:隐私政策 =====
                  SizedBox(height: 24.0.scaled(context, ref)),
                  Center(
                    child: _footerLink(
                      context,
                      label: l10n.aboutPrivacyPolicy,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PrivacyPolicyPage()),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 8.0.scaled(context, ref)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 底部文字链接(下划线 + 主题色),更新日志 / 隐私政策共用。
  Widget _footerLink(
    BuildContext context, {
    required String label,
    required VoidCallback onTap,
  }) {
    final primary = ref.watch(primaryColorProvider);
    return GestureDetector(
      onTap: onTap,
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: primary,
              decoration: TextDecoration.underline,
              decorationColor: primary,
            ),
      ),
    );
  }
}
