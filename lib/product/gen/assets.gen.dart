/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/color.xml
  String get color => 'assets/colors/color.xml';

  /// List of all assets
  List<String> get values => [color];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_avalanche.png
  AssetGenImage get icAvalanche =>
      const AssetGenImage('assets/images/ic_avalanche.png');

  /// File path: assets/images/ic_blood_donation.png
  AssetGenImage get icBloodDonation =>
      const AssetGenImage('assets/images/ic_blood_donation.png');

  /// File path: assets/images/ic_disasters.png
  AssetGenImage get icDisasters =>
      const AssetGenImage('assets/images/ic_disasters.png');

  /// File path: assets/images/ic_earthquake.png
  AssetGenImage get icEarthquake =>
      const AssetGenImage('assets/images/ic_earthquake.png');

  /// File path: assets/images/ic_fire.png
  AssetGenImage get icFire => const AssetGenImage('assets/images/ic_fire.png');

  /// File path: assets/images/ic_flood.png
  AssetGenImage get icFlood =>
      const AssetGenImage('assets/images/ic_flood.png');

  /// File path: assets/images/ic_gemini.png
  AssetGenImage get icGemini =>
      const AssetGenImage('assets/images/ic_gemini.png');

  /// File path: assets/images/ic_meeting_point.png
  AssetGenImage get icMeetingPoint =>
      const AssetGenImage('assets/images/ic_meeting_point.png');

  /// File path: assets/images/ic_save_disaster.png
  AssetGenImage get icSaveDisaster =>
      const AssetGenImage('assets/images/ic_save_disaster.png');

  /// File path: assets/images/ic_sos.png
  AssetGenImage get icSos => const AssetGenImage('assets/images/ic_sos.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icAvalanche,
        icBloodDonation,
        icDisasters,
        icEarthquake,
        icFire,
        icFlood,
        icGemini,
        icMeetingPoint,
        icSaveDisaster,
        icSos
      ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/anim_gemini.json
  LottieGenImage get animGemini =>
      const LottieGenImage('assets/lottie/anim_gemini.json');

  /// File path: assets/lottie/anim_leaf.json
  LottieGenImage get animLeaf =>
      const LottieGenImage('assets/lottie/anim_leaf.json');

  /// File path: assets/lottie/anim_world.json
  LottieGenImage get animWorld =>
      const LottieGenImage('assets/lottie/anim_world.json');

  /// List of all assets
  List<LottieGenImage> get values => [animGemini, animLeaf, animWorld];
}

class $AssetsPdfsGen {
  const $AssetsPdfsGen();

  /// File path: assets/pdfs/avalanchereaction.pdf
  String get avalanchereaction => 'assets/pdfs/avalanchereaction.pdf';

  /// File path: assets/pdfs/avalanchesurviving.pdf
  String get avalanchesurviving => 'assets/pdfs/avalanchesurviving.pdf';

  /// File path: assets/pdfs/earthquakeprepare.pdf
  String get earthquakeprepare => 'assets/pdfs/earthquakeprepare.pdf';

  /// File path: assets/pdfs/earthquakerecover.pdf
  String get earthquakerecover => 'assets/pdfs/earthquakerecover.pdf';

  /// File path: assets/pdfs/earthquakesurvive.pdf
  String get earthquakesurvive => 'assets/pdfs/earthquakesurvive.pdf';

  /// File path: assets/pdfs/firepass.pdf
  String get firepass => 'assets/pdfs/firepass.pdf';

  /// File path: assets/pdfs/firerace.pdf
  String get firerace => 'assets/pdfs/firerace.pdf';

  /// File path: assets/pdfs/floodanticipate.pdf
  String get floodanticipate => 'assets/pdfs/floodanticipate.pdf';

  /// File path: assets/pdfs/floodleave.pdf
  String get floodleave => 'assets/pdfs/floodleave.pdf';

  /// File path: assets/pdfs/floodprepare.pdf
  String get floodprepare => 'assets/pdfs/floodprepare.pdf';

  /// List of all assets
  List<String> get values => [
        avalanchereaction,
        avalanchesurviving,
        earthquakeprepare,
        earthquakerecover,
        earthquakesurvive,
        firepass,
        firerace,
        floodanticipate,
        floodleave,
        floodprepare
      ];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsPdfsGen pdfs = $AssetsPdfsGen();
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

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
