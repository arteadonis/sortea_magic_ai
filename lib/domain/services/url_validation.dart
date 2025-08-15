/// URL validation helpers for Instagram posts.
class UrlValidationService {
  const UrlValidationService();

  /// Returns true if the given value looks like a valid Instagram post URL.
  bool isLikelyInstagramPostUrl(final String value) {
    final String v = value.trim();
    if (v.isEmpty) return false;
    final RegExp re = RegExp(r'^(https?:\/\/)?(www\.)?instagram\.com\/p\/[A-Za-z0-9._\-]+');
    return re.hasMatch(v);
  }
}
