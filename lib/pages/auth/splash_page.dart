import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../l10n/app_localizations.dart';

/// 启动页：品牌底色 #FF8A5C + 钱包标。
///
/// 和原生启动窗口用同一个底色，冷启动时不会出现白底或跳色。
class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  /// 与原生 splash_bg / 桌面图标同色系（用户指定 #FF8A5C）
  static const Color _brandBg = Color(0xFFFF8A5C);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: _brandBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
          child: Column(
            children: [
              const Spacer(flex: 2),

              // Logo（直接放在品牌底色上，不垫白色底板）
              Image.asset(
                'assets/logo2.webp',
                width: 140,
                height: 140,
                filterQuality: FilterQuality.high,
              ),

              const SizedBox(height: 24),

              // 应用名称
              Text(
                AppLocalizations.of(context).splashAppName,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),

              const SizedBox(height: 14),

              // Slogan
              Text(
                AppLocalizations.of(context).splashSlogan,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.95),
                  fontWeight: FontWeight.w500,
                ),
              ),

              const Spacer(flex: 3),

              // 数据安全说明
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.16),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.3),
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.security_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          AppLocalizations.of(context).splashSecurityTitle,
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '${AppLocalizations.of(context).splashSecurityFeature1}\n'
                      '${AppLocalizations.of(context).splashSecurityFeature2}\n'
                      '${AppLocalizations.of(context).splashSecurityFeature3}',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withValues(alpha: 0.95),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 2,
                ),
              ),

              const SizedBox(height: 14),

              Text(
                AppLocalizations.of(context).splashInitializing,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),

              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
