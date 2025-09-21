import 'package:flutter/material.dart';

class ActivityBottomSheet extends StatelessWidget {
  const ActivityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.08, // closed height (8% of screen)
      minChildSize: 0.08,
      maxChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5), // grey sheet color
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            border: Border.all(color: Color(0xffdcdcdc), width: 1),
          ),
          child: Column(
            children: [
              // drag handle
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: 20,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Color(0xff808080),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              // Scrollable content
              Expanded(
                child: ListView(
                  controller: scrollController,
                  children: const [
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'No Activity yet',
                        style: TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
