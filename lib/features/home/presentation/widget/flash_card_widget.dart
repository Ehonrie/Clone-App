import 'package:clone_app/core/config/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swipable_stack/swipable_stack.dart';

class FlashCard {
  final String text;
  final Color color;
  FlashCard(this.text, this.color);
}

class FlashCardWidget extends StatefulWidget {
  const FlashCardWidget({super.key});

  @override
  State<FlashCardWidget> createState() => _FlashCardWidgetState();
}

class _FlashCardWidgetState extends State<FlashCardWidget> {
  final controller = SwipableStackController();

  final List<FlashCard> flashcards = [
    FlashCard(
      "A compound singular subject takes a plural verb.\nThe man and his wife come here often.",
      Colors.red,
    ),
    FlashCard("The sun rises in the east.", Colors.green),
    FlashCard("Education is key.", Colors.orange),
    FlashCard("Lfx is awesome!", Colors.blue),
    FlashCard(
      "A compound singular subject takes a plural verb.\nThe man and his wife come here often.",
      Colors.red,
    ),
    FlashCard("The sun rises in the east.", Colors.green),
    FlashCard("Education is key.", Colors.orange),
    FlashCard("Lfx is awesome!", Colors.blue),
  ];

  int currentIndex = 0;
  bool isResetting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flash Card")),
      body: Center(
        child: SwipableStack(
          controller: controller,
          itemCount: flashcards.length,
          allowVerticalSwipe: false,
          builder: (context, properties) {
            // Loop the index so cards repeat infinitely
            final card = flashcards[properties.index % flashcards.length];

            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  50.toColumnSizedBox(),
                  Center(
                    child: Container(
                      height: 400.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        color: card.color,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: const Offset(2, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            card.text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          onSwipeCompleted: (index, direction) {
            // Move to next index — loop back to 0 when at end
            setState(() {
              currentIndex = (index + 1) % flashcards.length;
            });
          },
        ),
      ),
    );
  }
}
