import 'package:flutter/material.dart';
import 'package:save_disaster/feature/chat_bot/chat_bot_view.dart';
import 'package:save_disaster/feature/chat_bot/sections/stream.dart';

///Chatbot view mixin
mixin ChatBotViewMixin on State<ChatBotView> {
  ///Selected item
  int selectedItem = 0;

  ///sections
  final SectionItem section =
      const SectionItem(0, 'Gemini', SectionTextStreamInput());
}
