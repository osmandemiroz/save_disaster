// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:save_disaster/feature/chat_bot/chat_bot_view_mixin.dart';
import 'package:save_disaster/product/widget/big_text.dart';

///ChatBot View of the app
@RoutePage()
class ChatBotView extends StatefulWidget {
  ///ChatBotView constructor
  const ChatBotView({super.key});

  @override
  State<ChatBotView> createState() => _ChatBotViewState();
}

class _ChatBotViewState extends State<ChatBotView> with ChatBotViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: BigText(title: section.title),
      ),
      body: section.widget,
    );
  }
}

@immutable
final class SectionItem {
  const SectionItem(this.index, this.title, this.widget);
  final int index;
  final String title;
  final Widget widget;
}
