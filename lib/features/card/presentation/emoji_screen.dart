// import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// import 'package:flutter/material.dart';
//
// class EmojiScreen extends StatefulWidget {
//   const EmojiScreen({super.key});
//
//   @override
//   State<EmojiScreen> createState() => _EmojiScreenState();
// }
//
// class _EmojiScreenState extends State<EmojiScreen> {
//   final TextEditingController textEditingController = TextEditingController();
//   bool _emojiShowing = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Emoji Picker")),
//       body: Column(
//         children: [
//           Expanded(child: Container()),
//           Row(
//             children: [
//               IconButton(
//                 icon: const Icon(Icons.emoji_emotions_outlined),
//                 onPressed: () {
//                   setState(() {
//                     _emojiShowing = !_emojiShowing;
//                   });
//                 },
//               ),
//               Expanded(
//                 child: TextField(
//                   controller: textEditingController,
//                   decoration: const InputDecoration(
//                     hintText: "Type a message..."))),
//             ],
//           ),
//           if (_emojiShowing)
//             SizedBox(
//               height: 256,
//               child: EmojiPicker(
//                 onEmojiSelected: (Category? category, Emoji emoji) {
//                   setState(() {
//                     textEditingController.text += emoji.emoji;
//                   });
//                 },
//                 textEditingController: textEditingController,
//                 config: const Config(
//                   height: 256,
//                   emojiViewConfig: EmojiViewConfig(),
//                   categoryViewConfig: CategoryViewConfig(),
//                   bottomActionBarConfig: BottomActionBarConfig(),
//                   searchViewConfig: SearchViewConfig(),
//                   skinToneConfig: SkinToneConfig(),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

















import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class EmojiScreen extends StatefulWidget {
  const EmojiScreen({super.key});

  @override
  State<EmojiScreen> createState() => _EmojiScreenState();
}

class _EmojiScreenState extends State<EmojiScreen> {
  final TextEditingController textEditingController = TextEditingController();
  bool _emojiShowing = false;
  final List<String> messages = []; // মেসেজ লিস্ট

  void sendMessage() {
    final message = textEditingController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        messages.add(message); // মেসেজ লিস্টে যোগ করো
        textEditingController.clear(); // টেক্সট ফিল্ড ক্লিয়ার
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Emoji Picker")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      messages[index],
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.emoji_emotions_outlined),
                onPressed: () {
                  FocusScope.of(context).unfocus(); // কীবোর্ড হাইড
                  setState(() {
                    _emojiShowing = !_emojiShowing;
                  });
                },
              ),
              Expanded(
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    hintText: "Type a message...",
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: sendMessage,
              ),
            ],
          ),
          if (_emojiShowing)
            SizedBox(
              height: 256,
              child: EmojiPicker(
                onEmojiSelected: (Category? category, Emoji emoji) {
                  setState(() {
                    textEditingController.text += emoji.emoji;
                  });
                },
                textEditingController: textEditingController,
                config: const Config(
                  height: 256,
                  emojiViewConfig: EmojiViewConfig(),
                  categoryViewConfig: CategoryViewConfig(),
                  bottomActionBarConfig: BottomActionBarConfig(),
                  searchViewConfig: SearchViewConfig(),
                  skinToneConfig: SkinToneConfig(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
