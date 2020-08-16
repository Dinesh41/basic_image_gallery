# basic_image_gallery

A basic image gallery widget for android and ios.

![Overview](https://github.com/Dinesh41/basic_image_gallery/blob/master/doc/images/basic_image_gallery.gif)

## Features

* Display gallery of images with list of files.
* Display gallery of images with list of network urls.
* Display gallery of images with list of files and network urls.
* Select initial image using initialPage attribute.

## Getting started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  basic_image_gallery: "^0.0.1"
```

In your library add the following import:

```dart
import 'package:basic_image_gallery/image_gallery.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

A `ImageGallery` needs multiple things:

* List of files if you want to display images from files.
* List of network urls if you want to display image from urls.
* initialPage number.

```dart
ImageGallery(
        initialPage: 1,
        files: [],
        networkUrl: [
          "https://bugyalvalley.com/wp-content/uploads/2019/11/IMA-Dehradun.jpg",
          "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"
        ],
)
```

### FAQ

#### How to display only images from network?

set `files` array to empty.

#### How to display only images from files?

set `networkUrls` to empty.

## Changelog

Please see the [Changelog](https://github.com/Dinesh41/basic_image_gallery/blob/master/CHANGELOG.md) page to know what's recently changed.

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/Dinesh41/basic_image_gallery/issues).
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/Dinesh41/basic_image_gallery/pulls).