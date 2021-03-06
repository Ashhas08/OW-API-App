import 'package:flutter/material.dart';
import 'package:ow_api_app/util/constants/color_const.dart';

class FontConst {
  static final LARGE = TextStyle(
    fontWeight: FontWeight.w700,
    color: ColorConst.lightPrimaryTextColor,
  );

  static final REGULAR = TextStyle(
    fontWeight: FontWeight.w400,
    color: ColorConst.lightPrimaryTextColor,
  );

  //LARGE
  static final LARGE_NAME_TITLE =
      LARGE.copyWith(fontSize: 25, color: ColorConst.darkPrimaryTextColor);

  //LARGE TILE
  static final LARGE_TILE = LARGE.copyWith(fontSize: 21);
  static final LARGE_TILE_WHITE =
      LARGE_TILE.copyWith(color: ColorConst.lightPrimaryTextColor);
  static final LARGE_TILE_BLACK =
      LARGE_TILE.copyWith(color: ColorConst.darkPrimaryTextColor);

  //REGULAR
  static final REGULAR_DEFAULT_BLACK =
      REGULAR.copyWith(fontSize: 15, color: ColorConst.lightPrimaryTextColor);
  static final REGULAR_DEFAULT_WHITE =
      REGULAR.copyWith(fontSize: 15, color: ColorConst.darkPrimaryTextColor);
  static final REGULAR_SMALL_BLACK =
      REGULAR.copyWith(fontSize: 14, color: ColorConst.lightPrimaryTextColor);
  static final REGULAR_SMALL_WHITE =
      REGULAR.copyWith(fontSize: 14, color: ColorConst.darkPrimaryTextColor);
  static final REGULAR_TILE_BLACK =
      REGULAR.copyWith(fontSize: 16, color: ColorConst.lightPrimaryTextColor);
  static final REGULAR_TILE_WHITE =
      REGULAR.copyWith(fontSize: 16, color: ColorConst.darkPrimaryTextColor);

  static final REGULAR_ERROR =
      REGULAR.copyWith(fontSize: 14, color: ColorConst.errorColor);
}
