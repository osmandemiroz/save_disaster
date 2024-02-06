import 'package:flutter/material.dart';
import 'package:save_disaster/feature/chat_bot/chat_bot_view.dart';
import 'package:save_disaster/feature/chat_bot/sections/chat.dart';
import 'package:save_disaster/feature/chat_bot/sections/chat_stream.dart';
import 'package:save_disaster/feature/chat_bot/sections/embed_batch_contents.dart';
import 'package:save_disaster/feature/chat_bot/sections/embed_content.dart';
import 'package:save_disaster/feature/chat_bot/sections/response_widget_stream.dart.dart';
import 'package:save_disaster/feature/chat_bot/sections/stream.dart';
import 'package:save_disaster/feature/chat_bot/sections/text_and_image.dart';
import 'package:save_disaster/feature/chat_bot/sections/text_only.dart';

///Chatbot view mixin
mixin ChatBotViewMixin on State<ChatBotView> {
  ///Selected item
  int selectedItem = 0;

  ///sections
  final sections = <SectionItem>[
    SectionItem(0, 'Stream text', const SectionTextStreamInput()),
    SectionItem(1, 'textAndImage', const SectionTextAndImageInput()),
    SectionItem(2, 'chat', const SectionChat()),
    SectionItem(3, 'Stream chat', const SectionStreamChat()),
    SectionItem(4, 'text', const SectionTextInput()),
    SectionItem(5, 'embedContent', const SectionEmbedContent()),
    SectionItem(6, 'batchEmbedContents', const SectionBatchEmbedContents()),
    SectionItem(
      7,
      'response without setState()',
      const ResponseWidgetSection(),
    ),
  ];
}
