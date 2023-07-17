import 'package:p02_yes_no_app/domain/entities/message.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:p02_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:p02_yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:p02_yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:p02_yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/magnificent-young-woman-with-light-makeup-pensive-attractive-girl-posing-brown-wall_197531-14040.jpg?w=2000&t=st=1688774681~exp=1688775281~hmac=79a0b9f61cc3967b60f4c1e45d01846748fc08f49cd2eff145810983f43d7d32'),
          ),
        ),
        title: const Text('My love 💚'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];

                return (message.fromWho == FromWho.hers)
                    ? HerMessageBubble(
                        message: message,
                      )
                    : MyMessageBubble(message: message);
              },
            )),
            MessageFieldBox(
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
