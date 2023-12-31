/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/HomeActive.svg
  SvgGenImage get homeActive => const SvgGenImage('assets/img/HomeActive.svg');

  /// File path: assets/img/adamak.png
  AssetGenImage get adamak => const AssetGenImage('assets/img/adamak.png');

  /// File path: assets/img/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/img/calendar.svg');

  /// File path: assets/img/clock.svg
  SvgGenImage get clock => const SvgGenImage('assets/img/clock.svg');

  /// File path: assets/img/hospital.svg
  SvgGenImage get hospital => const SvgGenImage('assets/img/hospital.svg');

  /// File path: assets/img/link.svg
  SvgGenImage get link => const SvgGenImage('assets/img/link.svg');

  /// File path: assets/img/location.svg
  SvgGenImage get location => const SvgGenImage('assets/img/location.svg');

  /// File path: assets/img/message.svg
  SvgGenImage get message => const SvgGenImage('assets/img/message.svg');

  /// File path: assets/img/profile-add.svg
  SvgGenImage get profileAdd => const SvgGenImage('assets/img/profile-add.svg');

  /// File path: assets/img/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/img/profile.svg');

  /// File path: assets/img/profile1.png
  AssetGenImage get profile1 => const AssetGenImage('assets/img/profile1.png');

  /// File path: assets/img/profile2.png
  AssetGenImage get profile2 => const AssetGenImage('assets/img/profile2.png');

  /// File path: assets/img/sun.svg
  SvgGenImage get sun => const SvgGenImage('assets/img/sun.svg');

  /// List of all assets
  List<dynamic> get values => [
        homeActive,
        adamak,
        calendar,
        clock,
        hospital,
        link,
        location,
        message,
        profileAdd,
        profile,
        profile1,
        profile2,
        sun
      ];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
