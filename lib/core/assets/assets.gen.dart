  // import 'package:flutter/material.dart';
  // import 'package:flutter_svg/flutter_svg.dart';

  // class Assets {
  //   Assets._();

  //   static const $AssetsIconsGen icons = $AssetsIconsGen();
  //   static const $AssetsImagesGen images = $AssetsImagesGen();
  // }

  // class $AssetsImagesGen {
  //   const $AssetsImagesGen();

  //   /// File path: assets/images/back.png
  //   AssetGenImage get logoIdn =>
  //       const AssetGenImage('assets/images/logo_idn.png');

  //   /// File path: assets/images/logo_blue.png
  //   AssetGenImage get logoBlue =>
  //       const AssetGenImage('assets/images/logo_blue.png');

  //   AssetGenImage get logoWhite =>
  //       const AssetGenImage('assets/images/logo_white.png');
  //   /// List of all assets
  //   List<AssetGenImage> get values => [logoBlue, logoIdn];
  // }

  // class AssetGenImage {
  //   const AssetGenImage(this._assetName);

  //   final String _assetName;

  //   Image image({double? width, double? height, BoxFit? fit}) {
  //     return Image.asset(_assetName, width: width, height: height, fit: fit);
  //   }

  //   ImageProvider provider() => AssetImage(_assetName);

  //   String get path => _assetName;
  // }

  // class SvgGenImage {
  //   const SvgGenImage(this._assetName);

  //   final String _assetName;

  //   SvgPicture svg(
  //       {double? width,
  //       double? height,
  //       BoxFit fit = BoxFit.contain,
  //       Color? color}) {
  //     return SvgPicture.asset(
  //       _assetName,
  //       width: width,
  //       height: height,
  //       fit: fit,
  //       colorFilter:
  //           color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
  //     );
  //   }

  //   String get path => _assetName;
  // }

  // class $AssetsIconsGen {
  //   const $AssetsIconsGen();

  //   /// File path: assets/icons/add_quantity.svg
  //   SvgGenImage get addQuantity =>
  //       const SvgGenImage('assets/icons/add_quantity.svg');

  //   /// File path: assets/icons/delete.svg
  //   SvgGenImage get delete => const SvgGenImage('assets/icons/delete.svg');

  //   /// File path: assets/icons/edit.svg
  //   SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  //   $AssetsIconsNavGen get nav => const $AssetsIconsNavGen();
  //   $AssetsIconsPaymentGen get payment => const $AssetsIconsPaymentGen();

  //   /// File path: assets/icons/plus.svg
  //   SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  //   /// File path: assets/icons/reduce_quantity.svg
  //   SvgGenImage get reduceQuantity =>
  //       const SvgGenImage('assets/icons/reduce_quantity.svg');

  //   $AssetsIconsSettingsGen get settings => const $AssetsIconsSettingsGen();

  //   /// List of all assets
  //   List<SvgGenImage> get values => [
  //         addQuantity,
  //         delete,
  //         edit,
  //         plus,
  //         reduceQuantity,
  //         ...nav.values,
  //         ...payment.values,
  //         ...settings.values,
  //       ];
  // }

  // class $AssetsIconsNavGen {
  //   const $AssetsIconsNavGen();

  //   /// File path: assets/icons/nav/history.svg
  //   SvgGenImage get history => const SvgGenImage('assets/icons/nav/history.svg');

  //   /// File path: assets/icons/nav/home.svg
  //   SvgGenImage get home => const SvgGenImage('assets/icons/nav/home.svg');

  //   /// File path: assets/icons/nav/scan.svg
  //   SvgGenImage get scan => const SvgGenImage('assets/icons/nav/scan.svg');

  //   /// File path: assets/icons/nav/setting.svg
  //   SvgGenImage get setting => const SvgGenImage('assets/icons/nav/setting.svg');

  //   /// File path: assets/icons/nav/ticket.svg
  //   SvgGenImage get ticket => const SvgGenImage('assets/icons/nav/ticket.svg');

  //   /// List of all assets
  //   List<SvgGenImage> get values => [history, home, scan, setting, ticket];
  // }

  // class $AssetsIconsPaymentGen {
  //   const $AssetsIconsPaymentGen();

  //   // Add your payment icons here
  //   List<SvgGenImage> get values => [];
  // }

  // class $AssetsIconsSettingsGen {
  //   const $AssetsIconsSettingsGen();

  //   // Add your settings icons here
  //   List<SvgGenImage> get values=>[];
  // }

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add_quantity.svg
  SvgGenImage get addQuantity =>
      const SvgGenImage('assets/icons/add_quantity.svg');

  /// File path: assets/icons/delete.svg
  SvgGenImage get delete => const SvgGenImage('assets/icons/delete.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  $AssetsIconsNavGen get nav => const $AssetsIconsNavGen();
  $AssetsIconsPaymentGen get payment => const $AssetsIconsPaymentGen();

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/reduce_quantity.svg
  SvgGenImage get reduceQuantity =>
      const SvgGenImage('assets/icons/reduce_quantity.svg');

  $AssetsIconsSettingsGen get settings => const $AssetsIconsSettingsGen();

  /// List of all assets
  List<SvgGenImage> get values =>
      [addQuantity, delete, edit, plus, reduceQuantity];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/back.png
  AssetGenImage get back => const AssetGenImage('assets/images/back.png');

    /// File path: assets/images/back.png
    AssetGenImage get logoIdn =>
        const AssetGenImage('assets/images/logo_idn.png');

    /// File path: assets/images/logo_blue.png
    AssetGenImage get logoBlue =>
        const AssetGenImage('assets/images/logo_blue.png');

  /// File path: assets/images/logo_cwb.png
  AssetGenImage get logoCwb =>
      const AssetGenImage('assets/images/logo_cwb.png');

  /// File path: assets/images/logo_white.png
  AssetGenImage get logoWhite =>
      const AssetGenImage('assets/images/logo_white.png');

  /// File path: assets/images/receipt_card.png
  AssetGenImage get receiptCard =>
      const AssetGenImage('assets/images/receipt_card.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [back, logoBlue, logoCwb, logoWhite, receiptCard];
}

class $AssetsIconsNavGen {
  const $AssetsIconsNavGen();

  /// File path: assets/icons/nav/history.svg
  SvgGenImage get history => const SvgGenImage('assets/icons/nav/history.svg');

  /// File path: assets/icons/nav/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/nav/home.svg');

  /// File path: assets/icons/nav/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/icons/nav/scan.svg');

  /// File path: assets/icons/nav/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/icons/nav/setting.svg');

  /// File path: assets/icons/nav/ticket.svg
  SvgGenImage get ticket => const SvgGenImage('assets/icons/nav/ticket.svg');

  /// List of all assets
  List<SvgGenImage> get values => [history, home, scan, setting, ticket];
}

class $AssetsIconsPaymentGen {
  const $AssetsIconsPaymentGen();

  /// File path: assets/icons/payment/qris.svg
  SvgGenImage get qris => const SvgGenImage('assets/icons/payment/qris.svg');

  /// File path: assets/icons/payment/transfer.svg
  SvgGenImage get transfer =>
      const SvgGenImage('assets/icons/payment/transfer.svg');

  /// File path: assets/icons/payment/tunai.svg
  SvgGenImage get tunai => const SvgGenImage('assets/icons/payment/tunai.svg');

  /// List of all assets
  List<SvgGenImage> get values => [qris, transfer, tunai];
}

class $AssetsIconsSettingsGen {
  const $AssetsIconsSettingsGen();

  /// File path: assets/icons/settings/logout.svg
  SvgGenImage get logout =>
      const SvgGenImage('assets/icons/settings/logout.svg');

  /// File path: assets/icons/settings/printer.svg
  SvgGenImage get printer =>
      const SvgGenImage('assets/icons/settings/printer.svg');

  /// File path: assets/icons/settings/sync-data.svg
  SvgGenImage get syncData =>
      const SvgGenImage('assets/icons/settings/sync-data.svg');

  /// List of all assets
  List<SvgGenImage> get values => [logout, printer, syncData];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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