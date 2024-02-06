// ignore_for_file: inference_failure_on_untyped_parameter

import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/chat_bot/widgets/chat_input_box.dart';
import 'package:save_disaster/feature/chat_bot/widgets/item_image_view.dart';
import 'package:save_disaster/product/gen/index.dart';

///SectionTextInputStream
class SectionTextStreamInput extends StatefulWidget {
  ///SectionTextInputStream constructor
  const SectionTextStreamInput({super.key});

  @override
  State<SectionTextStreamInput> createState() => _SectionTextInputStreamState();
}

class _SectionTextInputStreamState extends State<SectionTextStreamInput> {
  final ImagePicker picker = ImagePicker();
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  String? searchedText;
  String? _finishReason;

  List<Uint8List>? images;

  String? get finishReason => _finishReason;

  set finishReason(String? set) {
    if (set != _finishReason) {
      setState(() => _finishReason = set);
    }
  }

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
                finishReason = null;
                // result = null;
              });
            },
            child: Text('search: $searchedText'),
          ),
        Expanded(
          child: GeminiResponseTypeView(
            builder: (context, child, response, loading) {
              if (loading) {
                return Assets.lottie.animGemini.lottie();
              }

              if (response != null) {
                return Markdown(
                  data: response,
                  selectable: true,
                );
              } else {
                return const Center(child: Text('Search something!'));
              }
            },
          ),
        ),

        /// if the returned finishReason isn't STOP
        if (finishReason != null) Text(finishReason!),

        if (images != null)
          Container(
            height: context.sized.height * 0.2,
            padding: context.padding.low,
            alignment: Alignment.centerLeft,
            child: Card(
              child: ListView.builder(
                itemBuilder: (context, index) => ItemImageView(
                  bytes: images!.elementAt(index),
                ),
                itemCount: images!.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

        /// imported from local widgets
        ChatInputBox(
          controller: controller,
          onClickCamera: () {
            picker.pickMultiImage().then((value) async {
              final imagesBytes = <Uint8List>[];
              for (final file in value) {
                imagesBytes.add(await file.readAsBytes());
              }

              if (imagesBytes.isNotEmpty) {
                setState(() {
                  images = imagesBytes;
                });
              }
            });
          },
          onSend: () {
            if (controller.text.isNotEmpty) {
              searchedText = controller.text;
              controller.clear();
              gemini
                  .streamGenerateContent(searchedText!, images: images)
                  .listen((value) {
                setState(() {
                  images = null;
                });

                if (value.finishReason != 'STOP') {
                  finishReason = 'Finish reason is `RECITATION`';
                }
              }).onError((e) {
                log('streamGenerateContent error', error: e);
              });
            }
          },
        ),
      ],
    );
  }
}
