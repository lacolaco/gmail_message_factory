// Copyright (c) 2015, laco0416. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library gmail_message_factory.base;

import 'dart:convert';
import 'package:crypto/crypto.dart';

class MessageFactory {
  final String from;

  final String to;

  final String subject;

  final String text;

  final Encoding encoding;

  String _contentType = "text/plain";

  set contentType(v) => _contentType = v;

  MessageFactory(this.from, this.to, this.subject, this.text, this.encoding);

  MessageFactory.UTF8(this.from, this.to, this.subject, this.text)
      : encoding = UTF8;
  /**
   * Create Url-Safe Base64 encoded message
   */
  String toRawMessage() {
    var subjectB64 = CryptoUtils.bytesToBase64(encoding.encode(subject));

    var mail = "To: $to\n"
        "Subject: =?${encoding.name}?B?$subjectB64?=\n"
        "MIME-Version: 1.0\n"
        "Content-Type: $_contentType; charset=${encoding.name}\n"
        "Content-Transfer-Encoding: 7bit\n"
        "\n"
        "$text";
    mail = CryptoUtils.bytesToBase64(encoding.encode(mail), urlSafe: true);
    return mail;
  }
}
