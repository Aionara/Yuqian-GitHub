import 'package:flutter/material.dart';

/// 品牌标：统一渲染 assets/logo2.webp（橙底元宝钱包贴纸）。
///
/// 改造前这里是 assets/bee.svg 的 currentColor 着色版；换品牌后所有调用点
/// （开屏、首页头、我的页头、关于页、解锁页、AI 品牌位）都直接吃这张图，
/// 不再按主题色着色，所以 `color` 参数保留只为兼容旧调用点。
class BeeIcon extends StatelessWidget {
  final Color color; // 兼容旧调用点，实际不参与绘制
  final double size;

  const BeeIcon({super.key, required this.color, this.size = 256});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo2.webp',
      width: size,
      height: size,
      filterQuality: FilterQuality.high,
    );
  }
}
