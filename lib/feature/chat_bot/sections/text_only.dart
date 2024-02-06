import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/chat_bot/widgets/chat_input_box.dart';
import 'package:save_disaster/product/gen/index.dart';

///SectionTextInput
class SectionTextInput extends StatefulWidget {
  ///SectionTextInput constructor
  const SectionTextInput({super.key});

  @override
  State<SectionTextInput> createState() => _SectionTextInputState();
}

class _SectionTextInputState extends State<SectionTextInput> {
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  String? searchedText;
  String? result;
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool set) => setState(() => _loading = set);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (searchedText != null)
          MaterialButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                searchedText = null;
                result = null;
              });
            },
            child: Text('search: $searchedText'),
          ),
        Expanded(
          child: loading
              ? Assets.lottie.animGemini.lottie()
              : result != null
                  ? Padding(
                      padding: context.padding.low,
                      child: Markdown(data: result!),
                    )
                  : const Center(child: Text('Search something!')),
        ),
        ChatInputBox(
          controller: controller,
          onSend: () {
            if (controller.text.isNotEmpty) {
              searchedText = controller.text;
              controller.clear();
              loading = true;

              gemini.text(searchedText!).then((value) {
                result = value?.content?.parts?.last.text;
                loading = false;
              });
            }
          },
        ),
      ],
    );
  }
}
