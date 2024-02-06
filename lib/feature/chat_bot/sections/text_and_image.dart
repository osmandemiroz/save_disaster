import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/chat_bot/widgets/chat_input_box.dart';
import 'package:save_disaster/product/gen/index.dart';

///SectionTextAndImageInput
class SectionTextAndImageInput extends StatefulWidget {
  ///SectionTextAndImageInput constructor
  const SectionTextAndImageInput({super.key});

  @override
  State<SectionTextAndImageInput> createState() =>
      _SectionTextAndImageInputState();
}

class _SectionTextAndImageInputState extends State<SectionTextAndImageInput> {
  final ImagePicker picker = ImagePicker();
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  String? searchedText;
  String? result;
  bool _loading = false;

  Uint8List? selectedImage;

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
          child: Padding(
            padding: context.padding.low,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: loading
                      ? Assets.lottie.animGemini.lottie()
                      : result != null
                          ? Markdown(
                              data: result!,
                              padding: context.padding.horizontalMedium,
                            )
                          : const Center(
                              child: Text('Search something!'),
                            ),
                ),
                if (selectedImage != null)
                  Expanded(
                    child: ClipRRect(
                      borderRadius: context.border.normalBorderRadius,
                      child: Image.memory(
                        selectedImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        ChatInputBox(
          controller: controller,
          onClickCamera: () async {
            // Capture a photo.
            final photo = await picker.pickImage(source: ImageSource.camera);

            if (photo != null) {
              await photo.readAsBytes().then(
                    (value) => setState(() {
                      selectedImage = value;
                    }),
                  );
            }
          },
          onSend: () {
            if (controller.text.isNotEmpty && selectedImage != null) {
              searchedText = controller.text;
              controller.clear();
              loading = true;

              gemini.textAndImage(
                text: searchedText!,
                images: [selectedImage!],
              ).then((value) {
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
