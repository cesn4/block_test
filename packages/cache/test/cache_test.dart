import 'package:test/test.dart';
import '../lib/cache.dart';

void main() {
  group('CacheClient', () {
    test('can write and read a value for a given key', () {
      final cache = CacheClient();
      const key = '__key__';
      const value = '__value__';
      expect(cache.read(key: key), isNull);
      cache.write(key: key, value: value);
      expect(cache.read(key: key), equals(value));
    });
  });
}
