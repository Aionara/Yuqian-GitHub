import 'package:flutter/material.dart';

/// 工具栏单色手绘剪影图标。
///
/// 素材在 `assets/toolbar_icons/`（96×96 单色 + 透明底），默认跟随
/// `IconTheme` 着色，所以同一张图能同时服务浅色/深色两态。
class ToolbarGlyph extends StatelessWidget {
  const ToolbarGlyph(
    this.asset, {
    super.key,
    this.size = 20,
    this.color,
  });

  /// 形如 `assets/toolbar_icons/toolbar_search.png`
  final String asset;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final resolved = color ??
        IconTheme.of(context).color ??
        Theme.of(context).colorScheme.primary;
    return Image.asset(
      asset,
      width: size,
      height: size,
      color: resolved,
      colorBlendMode: BlendMode.srcIn,
      filterQuality: FilterQuality.high,
    );
  }
}
