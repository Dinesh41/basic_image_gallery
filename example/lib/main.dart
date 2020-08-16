import 'package:basic_image_gallery/image_gallery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ImageGallery(
        initialPage: 1,
        files: [],
        networkUrl: [
          "https://bugyalvalley.com/wp-content/uploads/2019/11/IMA-Dehradun.jpg",
          "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png"
        ],
      ),
    );
  }
}
