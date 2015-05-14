library test;

import 'package:test/test.dart';
import 'package:gmail_message_factory/gmail_message_factory.dart';

main() {
  var mf =
      new MessageFactory.UTF8("from@example.com", "to@example.com", "件名", "本文");

  test("Build", () {
    expect(mf.toRawMessage(), isNotEmpty);
  });
}
