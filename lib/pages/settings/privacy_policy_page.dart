import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../styles/tokens.dart';
import '../../utils/ui_scale_extensions.dart';
import '../../widgets/ui/ui.dart';

/// 隐私政策 —— 本地内置文本页（不再用 WebView 去拉上游服务器的 /privacy）。
///
/// 这一版是个人自用版：没有账号体系，也没有云端入口，
/// 所以这里写的是这个版本的真实行为，而不是上游官网那套通用条款。
class PrivacyPolicyPage extends ConsumerWidget {
  const PrivacyPolicyPage({super.key});

  static const List<(String, List<String>)> _sections = [
    (
      '数据存在哪里',
      [
        '账目、分类、标签、账户、附件、以及你自定义的图标，全部保存在本机数据库里（Android 应用私有目录，其它应用读不到）。',
        '本版本没有云端同步入口，不会把你的账目上传到任何服务器。',
      ],
    ),
    (
      '权限用来做什么',
      [
        '通知：只用于「记账提醒」，在系统设置里随时可以关掉。',
        '相册 / 相机：只有你主动给某笔账单加图片附件时才会用到。',
        '不申请通讯录、位置、短信、通话记录等与记账无关的权限。',
      ],
    ),
    (
      '个人信息',
      [
        '不收集、不上传任何个人身份信息。',
        '不接入广告、统计、埋点类第三方 SDK：你记了什么，只有你自己知道。',
      ],
    ),
    (
      '备份与删除',
      [
        '卸载应用或在系统里执行「清除数据」，会删除本机上的全部记录，且不可恢复。',
        '建议定期在「我的 → 数据管理」导出备份文件，自己保存一份。',
      ],
    ),
    (
      '来源说明',
      [
        '本应用是在开源记账项目（BeeCount，BSL 1.1 许可）基础上做的私人精简改造，遵循原项目开源许可；',
        '改造部分只保留本地记账核心：账目、分类、资产、统计、周期记账与年度账单，其余功能已移除。',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: BeeTokens.scaffoldBackground(context),
      body: Column(
        children: [
          const PrimaryHeader(
            title: '隐私政策',
            subtitle: '本机存储 · 不联网 · 不收集信息',
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
                  24.0.scaled(context, ref),
                ),
                children: [
                  for (final s in _sections) ...[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12.0.scaled(context, ref),
                        bottom: 6.0.scaled(context, ref),
                      ),
                      child: Text(
                        s.$1,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: BeeTokens.textPrimary(context),
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    for (final line in s.$2)
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0.scaled(context, ref),
                        ),
                        child: Text(
                          line,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: BeeTokens.textSecondary(context),
                                    height: 1.7,
                                  ),
                        ),
                      ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
