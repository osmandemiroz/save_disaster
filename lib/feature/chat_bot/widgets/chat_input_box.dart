import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';

///ChatInputBox
class ChatInputBox extends StatelessWidget {
  ///ChatInputBox constructor
  const ChatInputBox({
    super.key,
    this.controller,
    this.onSend,
    this.onClickCamera,
  });

  ///controller
  final TextEditingController? controller;

  ///onSend
  final VoidCallback? onSend;

  ///onClickCamera
  final VoidCallback? onClickCamera;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: context.sized.width * 0.03,
        vertical: context.sized.height * 0.08,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (onClickCamera != null)
            Padding(
              padding: context.padding.low,
              child: IconButton(
                onPressed: onClickCamera,
                color: Theme.of(context).dividerColor,
                icon: const Icon(Icons.file_copy_rounded),
              ),
            ),
          Expanded(
            child: RawKeyboardListener(
              focusNode: FocusNode(
                onKey: (node, event) {
                  if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
                    return KeyEventResult.handled;
                  }
                  return KeyEventResult.ignored;
                },
              ),
              onKey: (event) {
                if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
                  onSend?.call();
                }
              },
              child: TextField(
                controller: controller,
                minLines: 2,
                maxLines: 6,
                cursorColor: Theme.of(context).colorScheme.inversePrimary,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: context.padding.low,
                  hintText: 'Enter your message',
                  border: InputBorder.none,
                ),
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
              ),
            ),
          ),
          Padding(
            padding: context.padding.low,
            child: FloatingActionButton.small(
              onPressed: onSend,
              child: const Icon(Icons.send_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
