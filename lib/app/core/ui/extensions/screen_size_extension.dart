import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ScreenSizeExtension on num {
  double get adaptWidth => ScreenUtil().setWidth(this);
  double get adaptHeight => ScreenUtil().setHeight(this);
  double get adaptRadius => ScreenUtil().radius(this);
  double get adaptFontSize => ScreenUtil().setSp(this);
  double get screenWidth => ScreenUtil().screenWidth * this;
  double get screenHeight => ScreenUtil().screenHeight * this;
  double get statusBarHeight => ScreenUtil().statusBarHeight * this;
}
