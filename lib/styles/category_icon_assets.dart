/// 分类图标资源映射（奶油马卡龙皮肤）
///
/// 一套 20 张手绘贴纸风 PNG（256×256、透明底、同色系深浅两档 + 细手绘描边），
/// 放在 assets/category_icons/。命中映射的分类用这张图，没命中的继续用
/// Material 图标（保证老分类、自定义分类不会突然变成空白）。
class BeeCategoryIcons {
  const BeeCategoryIcons._();

  static const String _base = 'assets/category_icons';

  /// Material 图标 key → 图片名
  static const Map<String, String> _byIconKey = {
    // 餐饮
    'restaurant': 'food',
    'local_dining': 'food',
    'fastfood': 'food',
    'ramen_dining': 'food',
    'delivery_dining': 'food',
    'lunch_dining': 'food',
    'dinner_dining': 'food',
    'breakfast_dining': 'food',
    'set_meal': 'food',
    'bakery_dining': 'food',
    'cake': 'food',
    'icecream': 'food',
    'cookie': 'food',
    'free_breakfast': 'food',
    'local_pizza': 'food',
    'kitchen': 'food',
    'local_cafe': 'food',
    'coffee': 'food',
    'eco': 'food',
    // 交通
    'directions_car': 'transport',
    'directions_bus': 'transport',
    'local_taxi': 'taxi',
    'directions_subway': 'subway',
    'train': 'transport',
    'motorcycle': 'transport',
    'directions_bike': 'transport',
    'directions_walk': 'transport',
    'boat': 'transport',
    'electric_scooter': 'transport',
    'local_gas_station': 'transport',
    'local_parking': 'transport',
    'local_shipping': 'transport',
    // 购物
    'shopping_cart': 'shopping',
    'shopping_bag': 'shopping',
    'checkroom': 'shopping',
    'watch': 'shopping',
    'storefront': 'shopping',
    'card_giftcard': 'shopping',
    // 娱乐
    'movie': 'entertain',
    'sports_esports': 'entertain',
    'theaters': 'entertain',
    'music_note': 'entertain',
    'celebration': 'entertain',
    'confirmation_number': 'entertain',
    // 居家
    'home': 'home',
    'chair': 'home',
    'weekend': 'home',
    'bed': 'home',
    // 家庭
    'family_restroom': 'family',
    'escalator_warning': 'family',
    'child_friendly': 'family',
    // 通讯
    'phone': 'comm',
    'call': 'comm',
    'chat': 'comm',
    'email': 'comm',
    'sms': 'comm',
    'wifi': 'comm',
    // 水电
    'flash_on': 'utility',
    'water_drop': 'utility',
    'lightbulb': 'utility',
    'power': 'utility',
    'bolt': 'utility',
    'electric_bolt': 'utility',
    // 住房
    'home_work': 'housing',
    'apartment': 'housing',
    'house': 'housing',
    'villa': 'housing',
    // 医疗
    'local_hospital': 'medical',
    'medical_services': 'medical',
    'medication': 'medical',
    'healing': 'medical',
    'vaccines': 'medical',
    'monitor_heart': 'medical',
    // 教育
    'school': 'education',
    'menu_book': 'education',
    'auto_stories': 'education',
    'book': 'education',
    'library_books': 'education',
    'class': 'education',
    // 宠物
    'pets': 'pet',
    'pet_supplies': 'pet',
    'cruelty_free': 'pet',
    // 运动
    'fitness_center': 'sport',
    'sports': 'sport',
    'directions_run': 'sport',
    'sports_gymnastics': 'sport',
    'pool': 'sport',
    'hiking': 'sport',
    // 数码
    'smartphone': 'digital',
    'devices': 'digital',
    'headphones': 'digital',
    'computer': 'digital',
    'laptop': 'digital',
    'memory': 'digital',
    'cable': 'digital',
    // 旅行
    'flight': 'travel',
    'luggage': 'travel',
    'beach_access': 'travel',
    'hotel': 'travel',
    'map': 'travel',
    'tour': 'travel',
    // 烟酒
    'local_bar': 'smokewine',
    'liquor': 'smokewine',
    'wine_bar': 'smokewine',
    'smoking_rooms': 'smokewine',
    'nightlife': 'smokewine',
    // 母婴
    'child_care': 'baby',
    'stroller': 'baby',
    'baby_changing_station': 'baby',
    'toys': 'baby',
    // 维修
    'handyman': 'repair',
    'build': 'repair',
    'construction': 'repair',
    'plumbing': 'repair',
    'electrical_services': 'repair',
    // 美容
    'face': 'beauty',
    'spa': 'beauty',
    'content_cut': 'beauty',
    'brush': 'beauty',
    // 社交
    'group': 'social',
    'people': 'social',
    'diversity_3': 'social',
    'handshake': 'social',
  };

  /// 中文分类名（先匹配，因为「交通」「汽车」「打车」「地铁」共用
  /// directions_car 这个 icon key，只看 key 分不开）
  static const List<(List<String>, String)> _byName = [
    // ── 二级分类子项（v9 新入库；整块必须排在所有父条目之前）──
    // 收入子分类（v10：40 张，成对补齐；名字含「工资/奖金/报销/理财/红包/礼金/退款/二手/退税/公积金」等父字根，必须排在父条目前）
    (['基本工资'], 'salary_basic'),
    (['绩效奖金'], 'salary_performance'),
    (['年终奖'], 'salary_year_end'),
    (['加班费'], 'salary_overtime'),
    (['基金收益'], 'investment_fund'),
    (['股票分红'], 'investment_dividend'),
    (['理财产品'], 'investment_product'),
    (['其他理财'], 'investment_other'),
    (['节日红包'], 'red_packet_festival'),
    (['生日红包'], 'red_packet_birthday'),
    (['随礼回礼'], 'red_packet_return'),
    (['年度奖金'], 'bonus_year_end'),
    (['季度奖'], 'bonus_quarterly'),
    (['项目奖金'], 'bonus_project'),
    (['其他奖金'], 'bonus_other'),
    (['差旅报销'], 'reimbursement_travel'),
    (['餐费报销'], 'reimbursement_meal'),
    (['其他报销'], 'reimbursement_other'),
    (['兼职收入'], 'part_time_income'),
    (['外快'], 'part_time_extra'),
    (['结婚礼金'], 'gift_wedding'),
    (['生日礼金'], 'gift_birthday'),
    (['其他礼金'], 'gift_other'),
    (['银行利息'], 'interest_bank'),
    (['其他利息'], 'interest_other'),
    (['购物退款'], 'refund_shopping'),
    (['服务退款'], 'refund_service'),
    (['其他退款'], 'refund_other'),
    (['股票收益'], 'invest_income_stock'),
    (['基金投资'], 'invest_income_fund'),
    (['其他投资收益'], 'invest_income_other'),
    (['闲置物品'], 'second_hand_idle'),
    (['二手商品'], 'second_hand_goods'),
    (['失业保险'], 'social_benefit_unemployment'),
    (['生育津贴'], 'social_benefit_maternity'),
    (['其他补贴'], 'social_benefit_other'),
    (['个税退税'], 'tax_refund_personal'),
    (['其他退费'], 'tax_refund_other'),
    (['公积金提取'], 'provident_fund_withdrawal'),
    (['公积金利息'], 'provident_fund_interest'),
    // 投资亏损
    (['股票亏损'], 'invest_loss_stock'),
    (['基金亏损'], 'invest_loss_fund'),
    (['其他投资亏损'], 'invest_loss_other'),
    // 游戏
    (['游戏充值'], 'game_recharge'),
    (['游戏装备'], 'game_equipment'),
    (['游戏会员'], 'game_membership'),
    // 保健品
    (['维生素'], 'health_vitamin'),
    (['保健食品'], 'health_food'),
    (['营养品'], 'health_nutrition'),
    // 订阅服务
    (['视频会员'], 'subscription_video'),
    (['音乐会员'], 'subscription_music'),
    (['云存储'], 'subscription_cloud'),
    (['其他订阅'], 'subscription_other'),
    // 运动
    (['健身房'], 'sports_gym'),
    (['运动装备'], 'sports_equipment'),
    (['运动课程'], 'sports_course'),
    (['户外活动'], 'sports_outdoor'),
    // 住房
    (['房租'], 'housing_rent'),
    (['物业费'], 'housing_property'),
    (['房贷'], 'housing_mortgage'),
    (['装修'], 'housing_decoration'),
    // 居家
    (['家具'], 'home_furniture'),
    (['家电'], 'home_appliance'),
    (['装饰品'], 'home_decor'),
    (['床上用品'], 'home_bedding'),
    // 美容
    (['护肤品'], 'beauty_skincare'),
    (['化妆品'], 'beauty_cosmetics'),
    (['美容美发'], 'beauty_salon'),
    (['美甲'], 'beauty_nail'),
    // 购物
    (['服装'], 'shopping_clothing'),
    (['鞋帽'], 'shopping_shoes'),
    (['包包'], 'shopping_bag'),
    (['日用百货'], 'shopping_daily'),
    (['配饰'], 'shopping_accessory'),
    // 服饰
    (['服饰配件'], 'clothing_accessory'),
    (['上衣'], 'clothing_top'),
    (['裤子'], 'clothing_pants'),
    (['裙子'], 'clothing_skirt'),
    (['鞋子'], 'clothing_shoes'),
    // 交通
    (['地铁'], 'transport_subway'),
    (['公交'], 'transport_bus'),
    (['出租车'], 'transport_taxi'),
    (['网约车'], 'transport_ride'),
    (['停车费'], 'transport_parking'),
    (['加油'], 'transport_fuel'),
    // 汽车
    (['汽车保养'], 'car_maintenance'),
    (['汽车维修'], 'car_repair'),
    (['汽车保险'], 'car_insurance'),
    (['洗车'], 'car_wash'),
    (['违章罚款', '罚款'], 'car_fine'),
    // 日用品
    (['洗护用品'], 'daily_toiletries'),
    (['纸品'], 'daily_paper'),
    (['清洁用品'], 'daily_cleaning'),
    (['厨房用品'], 'daily_kitchen'),
    // 教育
    (['学费'], 'education_tuition'),
    (['培训费'], 'education_training'),
    (['书籍'], 'education_books'),
    (['文具'], 'education_stationery'),
    (['办公用品'], 'education_office'),
    // 宠物
    (['宠物食品'], 'pets_food'),
    (['宠物用品'], 'pets_supplies'),
    (['宠物医疗'], 'pets_medical'),
    (['宠物美容'], 'pets_grooming'),
    // 娱乐
    (['电影'], 'entertainment_movie'),
    (['KTV'], 'entertainment_ktv'),
    (['游乐场'], 'entertainment_amusement'),
    (['酒吧'], 'entertainment_bar'),
    (['其他娱乐'], 'entertainment_other'),

    // 子分类（与父分类同字根，必须排在父条目之前）
    (['蔬菜'], 'cooking_vegetable'),
    (['肉类'], 'cooking_meat'),
    (['水产', '海鲜', '鱼类'], 'cooking_seafood'),
    (['调料', '调味品', '酱料'], 'cooking_seasoning'),
    (['粮油', '米面', '大米', '食用油'], 'cooking_grain'),
    (['饼干'], 'snacks_biscuit'),
    (['薯片'], 'snacks_chips'),
    (['糖果'], 'snacks_candy'),
    (['巧克力'], 'snacks_chocolate'),
    (['坚果'], 'snacks_nuts'),
    (['其他水果', '菠萝'], 'fruit_other'),
    (['苹果'], 'fruit_apple'),
    (['香蕉'], 'fruit_banana'),
    (['橙子'], 'fruit_orange'),
    (['葡萄'], 'fruit_grape'),
    (['西瓜'], 'fruit_watermelon'),
    (['奶茶'], 'beverage_milk_tea'),
    (['咖啡'], 'beverage_coffee'),
    (['果汁'], 'beverage_juice'),
    (['汽水'], 'beverage_soda'),
    (['矿泉水'], 'beverage_water'),
    (['蛋糕'], 'pastry_cake'),
    (['面包'], 'pastry_bread'),
    (['甜点'], 'pastry_dessert'),
    (['曲奇'], 'pastry_biscuit'),
    // 收入分类（父 + 子共用一套名字，最具体的先匹配）
    (['工资', '薪资'], 'salary'),
    (['投资收益'], 'investincome'),
    (['投资亏损'], 'investloss'),
    (['理财'], 'investment'),
    (['红包'], 'redpacket'),
    (['奖金'], 'bonus'),
    (['报销'], 'reimbursement'),
    (['兼职'], 'parttime'),
    (['礼金', '收礼'], 'gift'),
    (['利息'], 'interest'),
    (['退款'], 'refund'),
    (['二手'], 'secondhand'),
    (['社会福利', '社保'], 'socialbenefit'),
    (['退税'], 'taxrefund'),
    (['公积金'], 'provident'),
    // 二级分类（最具体的先匹配）
    (['早餐'], 'dining_breakfast'),
    (['午餐'], 'dining_lunch'),
    (['晚餐'], 'dining_dinner'),
    (['美团外卖'], 'dining_meituan'),
    (['饿了么外卖'], 'dining_eleme'),
    (['京东外卖'], 'dining_jd'),
    (['餐厅'], 'dining_restaurant'),
    (['美食'], 'dining_food'),
    // 二级分类模式的父分类（名字互相咬得很近，最具体的放前面）
    (['零食'], 'snacks'),
    (['水果'], 'fruit'),
    (['饮品'], 'beverage'),
    (['糕点'], 'pastry'),
    (['做饭食材', '做饭', '食材'], 'cooking'),
    (['服饰', '服装', '上衣'], 'clothing'),
    (['日用品', '洗护'], 'daily'),
    (['投资亏损'], 'investloss'),
    (['保健品'], 'health'),
    (['订阅服务', '会员', '订阅'], 'subscription'),
    (['游戏'], 'game'),
    (['餐饮', '吃饭', '外卖', '零食', '饮品', '水果', '糕点', '做饭', '食堂'], 'food'),
    (['打车', '出租车', '网约车'], 'taxi'),
    (['地铁', '公交', '轻轨', '高铁'], 'subway'),
    (['汽车', '加油', '停车', '养护', '洗车'], 'car'),
    (['交通', '出行', '车费', '打车费'], 'transport'),
    (['购物', '衣服', '鞋', '日用', '百货'], 'shopping'),
    (['娱乐', '游戏', '电影', '演唱会', 'KTV', '剧本杀'], 'entertain'),
    (['居家', '家居', '家具'], 'home'),
    (['家庭', '孩子', '亲子', '家人'], 'family'),
    (['通讯', '话费', '网费', '流量'], 'comm'),
    (['水电', '电费', '水费', '燃气', '取暖'], 'utility'),
    (['住房', '房租', '房贷', '物业'], 'housing'),
    (['医疗', '看病', '药', '保健', '体检'], 'medical'),
    (['学习', '读书', '阅读', '书'], 'study'),
    (['教育', '学费', '培训', '学校'], 'education'),
    (['宠物', '猫', '狗'], 'pet'),
    (['运动', '健身', '体育', '游泳'], 'sport'),
    (['数码', '电子', '手机', '电脑', '耳机'], 'digital'),
    (['旅行', '旅游', '酒店', '机票'], 'travel'),
    (['烟', '酒', '酒吧', '咖啡'], 'smokewine'),
    (['母婴', '宝宝', '婴儿', '奶粉', '尿布'], 'baby'),
    (['维修', '修理', '改造'], 'repair'),
    (['美容', '护肤', '理发', '化妆'], 'beauty'),
    (['社交', '人情', '送礼', '聚会', '请客'], 'social'),
  ];

  /// 返回图片资源路径，未命中返回 null（调用方回落到 Material 图标）
  static String? assetFor({String? iconKey, String? name}) {
    final n = name?.trim();
    if (n != null && n.isNotEmpty) {
      for (final entry in _byName) {
        for (final kw in entry.$1) {
          if (n.contains(kw)) return '$_base/${entry.$2}.webp';
        }
      }
    }
    final key = iconKey?.trim();
    if (key != null && key.isNotEmpty) {
      final hit = _byIconKey[key];
      if (hit != null) return '$_base/$hit.webp';
    }
    return null;
  }
}
