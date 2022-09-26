import 'package:mobile_showcases/common/models/product.dart';
import 'package:test/test.dart';

void main() {
  group('Product', () {
    test('increment views', () {
      final product = Product();
      product.incrementViews();

      expect(product.views, 0);
    });
  });
}
