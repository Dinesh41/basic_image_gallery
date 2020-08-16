import 'package:basic_image_gallery/image_gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';

void main() {
  testWidgets("Image Gallery display image if you send network url",
      (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(MaterialApp(
        home: ImageGallery(
          initialPage: 1,
          files: [],
          networkUrl: [
            "https://bugyalvalley.com/wp-content/uploads/2019/11/IMA-Dehradun.jpg"
          ],
        ),
      ));
      //Finders
      final image = find.byType(Image);
      expect(image, findsOneWidget);
    });
  });
}
