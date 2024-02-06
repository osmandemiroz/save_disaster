import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/chat_bot/widgets/chat_input_box.dart';
import 'package:save_disaster/product/gen/index.dart';

///SectionEmbedContent
class SectionEmbedContent extends StatefulWidget {
  ///SectionEmbedContent constructor
  const SectionEmbedContent({super.key});

  @override
  State<SectionEmbedContent> createState() => _SectionEmbedContentState();
}

class _SectionEmbedContentState extends State<SectionEmbedContent> {
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  String? searchedText;
  List<num>? result;
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
                      child: SingleChildScrollView(
                        child: Text(result?.toString() ?? ''),
                      ),
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

              gemini.embedContent(searchedText!).then((value) {
                result = value;
                loading = false;
              });
            }
          },
        ),
      ],
    );
  }
}
