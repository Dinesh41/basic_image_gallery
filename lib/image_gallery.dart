import 'dart:io';

import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  final List<File> files;
  final int initialPage;
  final List<String> networkUrl;
  ImageGallery(
      {@required this.files,
      @required this.initialPage,
      @required this.networkUrl});
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  PageController pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    pageController = PageController(initialPage: widget.initialPage);
    List<Widget> imageWidgets = [];
    for (String url in widget.networkUrl) {
      imageWidgets.add(Image.network(
        url,
      ));
    }
    for (File imageFile in widget.files) {
      imageWidgets.add(Image.file(imageFile));
    }

    return PageView(
      children: imageWidgets,
      controller: pageController,
    );
  }
}
