import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ys_cam_open/flutter_ys_cam_open.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_ys_cam_open');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterYsCamOpen.platformVersion, '42');
  });
}
