import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/chat_bot/widgets/chat_input_box.dart';

///SectionChat
class SectionChat extends StatefulWidget {
  ///SectionChat constructor
  const SectionChat({super.key});

  @override
  State<SectionChat> createState() => _SectionChatState();
}

class _SectionChatState extends State<SectionChat> {
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool set) => setState(() => _loading = set);
  final List<Content> chats = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: chats.isNotEmpty
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    reverse: true,
                    child: ListView.builder(
                      itemBuilder: chatItem,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: chats.length,
                    ),
                  ),
                )
              : const Center(child: Text('Search something!')),
        ),
        if (loading) const CircularProgressIndicator(),
        ChatInputBox(
          controller: controller,
          onSend: () {
            if (controller.text.isNotEmpty) {
              final searchedText = controller.text;
              chats.add(
                Content(role: 'user', parts: [Parts(text: searchedText)]),
              );
              controller.clear();
              loading = true;

              gemini.chat(chats).then((value) {
                chats.add(
                  Content(
                    role: 'model',
                    parts: [Parts(text: value?.output)],
                  ),
                );
                loading = false;
              });
            }
          },
        ),
      ],
    );
  }

  Widget chatItem(BuildContext context, int index) {
    final content = chats[index];

    return Card(
      elevation: 0,
      color: content.role == 'model'
          ? Theme.of(context).primaryColor
          : Colors.transparent,
      child: Padding(
        padding: context.padding.low,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(content.role ?? 'role'),
            Markdown(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              data: content.parts?.lastOrNull?.text ?? 'cannot generate data!',
            ),
          ],
        ),
      ),
    );
  }
}
