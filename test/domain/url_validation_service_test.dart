import 'package:flutter_test/flutter_test.dart';
import 'package:sortea_magic_ai/domain/services/url_validation.dart';

void main() {
  group('UrlValidationService', () {
    const UrlValidationService svc = UrlValidationService();

    test('accepts common Instagram post URL patterns', () {
      expect(svc.isLikelyInstagramPostUrl('https://www.instagram.com/p/ABC123xyz/'), isTrue);
      expect(svc.isLikelyInstagramPostUrl('http://instagram.com/p/ABC123'), isTrue);
      expect(svc.isLikelyInstagramPostUrl('instagram.com/p/ABC_123-xyz'), isTrue);
    });

    test('rejects invalid or empty values', () {
      expect(svc.isLikelyInstagramPostUrl(''), isFalse);
      expect(svc.isLikelyInstagramPostUrl('https://www.instagram.com/explore/'), isFalse);
      expect(svc.isLikelyInstagramPostUrl('https://twitter.com/p/123'), isFalse);
    });
  });
}
