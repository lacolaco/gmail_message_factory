# gmail_message_factory [![Build Status](https://drone.io/github.com/laco0416/gmail_message_factory/status.png)](https://drone.io/github.com/laco0416/gmail_message_factory/latest)

Privide a factory to write a message to send by gmail api.

## Usage

Gmail sending a message sample:

    import 'package:gmail_message_factory/gmail_message_factory.dart';
    
    main() {
      var mf =
          new MessageFactory.UTF8("me", "to@example.com", "件名", "本文");
      var message = new Message();
      message.raw = mf.toRawMessage();
      api.users.messages.send(message, "me");
    }

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/laco0416/gmail_message_factory/issues
