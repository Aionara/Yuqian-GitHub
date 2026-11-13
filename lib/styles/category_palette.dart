import 'package:flutter/material.dart';

/// 分类配色表（奶油马卡龙皮肤）
///
/// 目标：让分类图标摆脱单一灰色线稿，每个分类有自己的颜色，
/// 圆底用同色低透明度，图标用同色实色，整体像一组彩色小糖豆。
///
/// 取色优先级：
/// 1. 自定义图标/自定义分类名 → 按中文关键词命中固定色
/// 2. 未命中 → 用 icon key（或分类名）的哈希在备用色板里稳定取一个
/// 保证同一个分类在任何页面都是同一个颜色，不会跳。
class BeeCategoryPalette {
  const BeeCategoryPalette._();

  // 主配色：奶油马卡龙系，饱和度中等偏上，白底上不发脏
  static const Color food = Color(0xFFFF8A5C); // 餐饮
  static const Color transport = Color(0xFF5AB0FF); // 交通
  static const Color shopping = Color(0xFFFF7BA9); // 购物
  static const Color fun = Color(0xFFA78BDB); // 娱乐
  static const Color home = Color(0xFF7FB77E); // 居家
  static const Color family = Color(0xFFF6A5C0); // 家庭
  static const Color comm = Color(0xFF5BC8C4); // 通讯
  static const Color utility = Color(0xFFF5B301); // 水电
  static const Color housing = Color(0xFFC08B6B); // 住房
  static const Color medical = Color(0xFFFF6B6B); // 医疗
  static const Color education = Color(0xFF6C8FE0); // 教育/学习
  static const Color pet = Color(0xFFD9A45B); // 宠物
  static const Color sport = Color(0xFF57C2A5); // 运动
  static const Color digital = Color(0xFF8C93A8); // 数码
  static const Color travel = Color(0xFF4FB3D9); // 旅行
  static const Color smokeWine = Color(0xFFB37FB3); // 烟酒
  static const Color baby = Color(0xFFFFA07A); // 母婴
  static const Color beauty = Color(0xFFE48CB0); // 美容
  static const Color repair = Color(0xFF9AA0A6); // 维修
  static const Color social = Color(0xFF7C9DC7); // 社交
  static const Color study = Color(0xFFA98BD9); // 学习/读书
  // 二级分类模式的父分类色
  static const Color snacks = Color(0xFFEE6C93); // 零食
  static const Color fruit = Color(0xFFE35D6A); // 水果
  static const Color beverage = Color(0xFFC98B5E); // 饮品
  static const Color pastry = Color(0xFFF2A0C0); // 糕点
  static const Color cooking = Color(0xFF7FA96B); // 做饭食材
  static const Color clothing = Color(0xFF7FB6D9); // 服饰
  static const Color daily = Color(0xFF6FB3AE); // 日用品
  static const Color investLoss = Color(0xFF7C8FA8); // 投资亏损
  static const Color health = Color(0xFFE0A44E); // 保健品
  static const Color subscription = Color(0xFF5B6FD8); // 订阅服务
  static const Color game = Color(0xFF9D82CF); // 游戏
  // 交通细分：每类一张图、一个色，避免同一辆小巴重复出现
  static const Color car = Color(0xFF4C8DE8); // 汽车
  static const Color taxi = Color(0xFFFFB13D); // 打车
  static const Color subway = Color(0xFF4FB3A0); // 地铁/公交
  static const Color salary = Color(0xFF4CAF93); // 工资/收入
  static const Color bonus = Color(0xFFE9A23B); // 奖金
  static const Color investment = Color(0xFF5BBFB6); // 理财
  static const Color redPacket = Color(0xFFF8905A); // 红包
  static const Color reimbursement = Color(0xFF6BB6A8); // 报销
  static const Color partTime = Color(0xFFE88BA8); // 兼职
  static const Color gift = Color(0xFFE06C9F); // 礼金
  static const Color interest = Color(0xFF5B8FD8); // 利息
  static const Color refund = Color(0xFF9A9AE0); // 退款
  static const Color investIncome = Color(0xFFE5B93C); // 投资收益
  static const Color secondHand = Color(0xFF7FAE6E); // 二手交易
  static const Color socialBenefit = Color(0xFFC69A6B); // 社会福利
  static const Color taxRefund = Color(0xFFA48AD8); // 退税
  static const Color provident = Color(0xFF8A9BB5); // 公积金

  /// 关键词 → 颜色。按顺序匹配，先命中先返回。
  static const List<(List<String>, Color)> _keywords = [
    // 收入子项（v10）：整组跟着父分类色系走
    (['基本工资', '绩效奖金', '年终奖', '加班费'], salary),
    (['基金收益', '股票分红', '理财产品', '其他理财'], investment),
    (['节日红包', '生日红包', '随礼回礼'], redPacket),
    (['年度奖金', '季度奖', '项目奖金', '其他奖金'], bonus),
    (['差旅报销', '餐费报销', '其他报销'], reimbursement),
    (['兼职收入', '外快'], partTime),
    (['结婚礼金', '生日礼金', '其他礼金'], gift),
    (['银行利息', '其他利息'], interest),
    (['购物退款', '服务退款', '其他退款'], refund),
    (['股票收益', '基金投资', '其他投资收益'], investIncome),
    (['闲置物品', '二手商品'], secondHand),
    (['失业保险', '生育津贴', '其他补贴'], socialBenefit),
    (['个税退税', '其他退费'], taxRefund),
    (['公积金提取', '公积金利息'], provident),
    // 二级子项（v9）：整组跟着父分类色系走
    (['股票亏损', '基金亏损', '其他投资亏损'], investLoss),
    (['游戏充值', '游戏装备', '游戏会员'], game),
    (['维生素', '保健食品', '营养品'], health),
    (['视频会员', '音乐会员', '云存储', '其他订阅'], subscription),
    (['健身房', '运动装备', '运动课程', '户外活动'], sport),
    (['房租', '物业费', '房贷', '装修'], housing),
    (['家具', '家电', '装饰品', '床上用品'], home),
    (['护肤品', '化妆品', '美容美发', '美甲'], beauty),
    (['服装', '鞋帽', '包包', '配饰', '日用百货'], shopping),
    (['服饰配件', '上衣', '裤子', '裙子', '鞋子'], clothing),
    (['地铁', '公交'], subway),
    (['出租车', '网约车'], taxi),
    (['停车费', '加油'], transport),
    (['汽车保养', '汽车维修', '汽车保险', '洗车', '违章罚款'], car),
    (['洗护用品', '纸品', '清洁用品', '厨房用品'], daily),
    (['学费', '培训费', '书籍', '文具', '办公用品'], education),
    (['宠物食品', '宠物用品', '宠物医疗', '宠物美容'], pet),
    (['电影', 'KTV', '游乐场', '酒吧', '其他娱乐'], fun),
    // 子分类：跟着父分类的色系走，避免一组里蹦出五颜六色
    (['蔬菜', '肉类', '水产', '调料', '粮油'], cooking),
    (['饼干', '薯片', '糖果', '巧克力', '坚果'], snacks),
    (['苹果', '香蕉', '橙子', '葡萄', '西瓜', '菠萝'], fruit),
    (['奶茶', '咖啡', '果汁', '汽水', '矿泉水'], beverage),
    (['蛋糕', '面包', '甜点', '曲奇'], pastry),
    // 二级分类模式的父分类（名字互相咬得很近，最具体的放前面）
    (['零食', 'snacks'], snacks),
    (['水果', 'fruit'], fruit),
    (['饮品', '饮料', 'beverage'], beverage),
    (['糕点', 'pastry'], pastry),
    (['做饭', '食材', 'cooking'], cooking),
    (['服饰', '服装', '上衣', 'clothing'], clothing),
    (['日用品', '洗护', 'daily'], daily),
    (['投资亏损', 'invest_loss'], investLoss),
    (['保健品', 'health'], health),
    (['订阅', '会员', 'subscription'], subscription),
    (['游戏', 'game'], game),
    (['餐饮', '吃饭', '外卖', 'food', 'restaurant', 'dining'], food),
    (['交通', 'transport'], transport),
    (['打车', 'taxi'], taxi),
    (['地铁', '公交', 'subway', 'bus'], subway),
    (['汽车', 'car'], car),
    (['购物', 'shopping', 'buy'], shopping),
    (['娱乐', 'entertain', 'game'], fun),
    (['居家', 'home'], home),
    (['家庭', 'family'], family),
    (['通讯', '话费', 'comm'], comm),
    (['水电', 'utility', '电费'], utility),
    (['住房', '房租', 'housing'], housing),
    (['医疗', 'medical', 'health'], medical),
    (['学习', '读书', 'study'], study),
    (['教育', 'education'], education),
    (['宠物', 'pet'], pet),
    (['运动', 'sport', 'fitness'], sport),
    (['数码', 'digital', 'device'], digital),
    (['旅行', 'travel'], travel),
    (['烟酒', 'smoke', 'wine'], smokeWine),
    (['母婴', 'baby'], baby),
    (['美容', 'beauty'], beauty),
    (['维修', 'repair'], repair),
    (['社交', 'social'], social),
    (['工资', 'salary', '薪资'], salary),
    (['投资收益', 'invest_income'], investIncome),
    (['投资亏损', 'invest_loss'], investLoss),
    (['理财', 'investment'], investment),
    (['红包', 'red_packet'], redPacket),
    (['奖金', 'bonus'], bonus),
    (['报销', 'reimbursement'], reimbursement),
    (['兼职', 'part_time'], partTime),
    (['礼金', '收礼', 'gift'], gift),
    (['利息', 'interest'], interest),
    (['退款', 'refund'], refund),
    (['二手', 'second_hand'], secondHand),
    (['社会福利', '社保', 'social_benefit'], socialBenefit),
    (['退税', 'tax_refund'], taxRefund),
    (['公积金', 'provident_fund'], provident),
  ];

  /// 未命中关键词时的备用色板（10 色轮转）
  static const List<Color> _fallback = [
    Color(0xFFFF8A5C),
    Color(0xFF5AB0FF),
    Color(0xFFA78BDB),
    Color(0xFF7FB77E),
    Color(0xFFFF7BA9),
    Color(0xFF5BC8C4),
    Color(0xFFF5B301),
    Color(0xFF8C93A8),
    Color(0xFFD9A45B),
    Color(0xFF6C8FE0),
  ];

  /// 按分类名/图标 key 取一个稳定颜色
  static Color colorFor({String? name, String? icon}) {
    final haystack = '${name ?? ''}|${icon ?? ''}'.toLowerCase();
    if (haystack.trim() != '|') {
      for (final entry in _keywords) {
        for (final kw in entry.$1) {
          if (haystack.contains(kw.toLowerCase())) {
            return entry.$2;
          }
        }
      }
    }
    // 稳定哈希：同一个 key 每次都是同一色，不用 hashCode（对象/字符串哈希在
    // 不同 isolate 间不稳定，且 Dart 的 string hashCode 随版本可能变化）。
    final seed = (icon?.isNotEmpty == true ? icon! : (name ?? '')).codeUnits;
    var sum = 0;
    for (final unit in seed) {
      sum = (sum * 31 + unit) % 1000003;
    }
    return _fallback[sum % _fallback.length];
  }

  /// 圆底颜色（低透明度，铺在页面背景上）
  static Color background(Color c, {bool isDark = false}) =>
      c.withValues(alpha: isDark ? 0.22 : 0.14);

  /// 图标前景色：亮色下压深一档，浅底上才看得清；暗色下提亮
  static Color foreground(Color c, {bool isDark = false}) => isDark
      ? Color.lerp(c, Colors.white, 0.28)!
      : Color.lerp(c, Colors.black, 0.16)!;
}
