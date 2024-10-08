/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/Accounts_List.svg
  String get accountsList => 'assets/icon/Accounts_List.svg';

  /// File path: assets/icon/Add_Story.svg
  String get addStory => 'assets/icon/Add_Story.svg';

  /// File path: assets/icon/Grid_icon.svg
  String get gridIcon => 'assets/icon/Grid_icon.svg';

  /// File path: assets/icon/Menu.svg
  String get menu => 'assets/icon/Menu.svg';

  /// File path: assets/icon/Private_Icon.svg
  String get privateIcon => 'assets/icon/Private_Icon.svg';

  /// File path: assets/icon/Tags_Icon.svg
  String get tagsIcon => 'assets/icon/Tags_Icon.svg';

  /// File path: assets/icon/Video_Icon.svg
  String get videoIcon => 'assets/icon/Video_Icon.svg';

  /// File path: assets/icon/add.svg
  String get add => 'assets/icon/add.svg';

  /// File path: assets/icon/camera.svg
  String get camera => 'assets/icon/camera.svg';

  /// File path: assets/icon/comment.svg
  String get comment => 'assets/icon/comment.svg';

  /// File path: assets/icon/emptyhome.svg
  String get emptyhome => 'assets/icon/emptyhome.svg';

  /// File path: assets/icon/home.svg
  String get home => 'assets/icon/home.svg';

  /// File path: assets/icon/like.svg
  String get like => 'assets/icon/like.svg';

  /// File path: assets/icon/likenavigator.svg
  String get likenavigator => 'assets/icon/likenavigator.svg';

  /// File path: assets/icon/more.svg
  String get more => 'assets/icon/more.svg';

  /// File path: assets/icon/moreb.svg
  String get moreb => 'assets/icon/moreb.svg';

  /// File path: assets/icon/official.svg
  String get official => 'assets/icon/official.svg';

  /// File path: assets/icon/save.svg
  String get save => 'assets/icon/save.svg';

  /// File path: assets/icon/search.svg
  String get search => 'assets/icon/search.svg';

  /// File path: assets/icon/searchnavigator.svg
  String get searchnavigator => 'assets/icon/searchnavigator.svg';

  /// File path: assets/icon/send.svg
  String get send => 'assets/icon/send.svg';

  /// File path: assets/icon/tv.svg
  String get tv => 'assets/icon/tv.svg';

  /// List of all assets
  List<String> get values => [
        accountsList,
        addStory,
        gridIcon,
        menu,
        privateIcon,
        tagsIcon,
        videoIcon,
        add,
        camera,
        comment,
        emptyhome,
        home,
        like,
        likenavigator,
        more,
        moreb,
        official,
        save,
        search,
        searchnavigator,
        send,
        tv
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Instagram Logo.png
  AssetGenImage get instagramLogo =>
      const AssetGenImage('assets/images/Instagram Logo.png');

  /// File path: assets/images/postimage.png
  AssetGenImage get postimage =>
      const AssetGenImage('assets/images/postimage.png');

  /// File path: assets/images/postuserimage.png
  AssetGenImage get postuserimage =>
      const AssetGenImage('assets/images/postuserimage.png');

  /// File path: assets/images/storyimage.png
  AssetGenImage get storyimage =>
      const AssetGenImage('assets/images/storyimage.png');

  /// File path: assets/images/storyimage1.png
  AssetGenImage get storyimage1 =>
      const AssetGenImage('assets/images/storyimage1.png');

  /// File path: assets/images/storyimage2.png
  AssetGenImage get storyimage2 =>
      const AssetGenImage('assets/images/storyimage2.png');

  /// File path: assets/images/storyimage3.png
  AssetGenImage get storyimage3 =>
      const AssetGenImage('assets/images/storyimage3.png');

  /// File path: assets/images/storyimage4.png
  AssetGenImage get storyimage4 =>
      const AssetGenImage('assets/images/storyimage4.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        instagramLogo,
        postimage,
        postuserimage,
        storyimage,
        storyimage1,
        storyimage2,
        storyimage3,
        storyimage4
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
