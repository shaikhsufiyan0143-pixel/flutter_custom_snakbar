import 'package:flutter/material.dart';

class CustomToast {
  static void show({
    required BuildContext context,
    required String message,
    IconData? icon,
    Color backgroundColor = Colors.black,
    Color textColor = Colors.white,
    double borderRadius = 10,
    Duration duration = const Duration(seconds: 2),
  }) {
    final overlay = Overlay.of(context);

    final overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          bottom: 80,
          left: 20,
          right: 20,
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    Icon(
                      icon,
                      color: textColor,
                    ),
                    const SizedBox(width: 10),
                  ],
                  Expanded(
                    child: Text(
                      message,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration, () {
      overlayEntry.remove();
    });
  }
}