import 'package:flutter/material.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  
  group('increment app', () {
      final plusIcon = find.byIcon(Icons.add);

      FlutterDriver driver;

      setUpAll(() async {
        driver = await FlutterDriver.connect(); 
      });

      tearDownAll(() async{
        driver.close();
      });

      test('click plus', ()async{
        await driver.tap(plusIcon);
        await driver.waitFor(find.text('1'));
      });
    });
}
