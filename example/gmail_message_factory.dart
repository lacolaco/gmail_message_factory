// Copyright (c) 2015, laco0416. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library gmail_message_factory.example;

import 'package:gmail_message_factory/gmail_message_factory.dart';

main() {
  var mf =
      new MessageFactory.UTF8("from@example.com", "to@example.com", "件名", "本文");
  ;
  print('raw message');
  print(mf.toRawMessage());
}
