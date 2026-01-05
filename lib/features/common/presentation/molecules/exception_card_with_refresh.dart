import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ErrorMessageWithAction extends StatelessWidget {
  final String errorMessage;
  final void Function()? action;
  const ErrorMessageWithAction({super.key, required this.errorMessage, required this.action});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 98.w,
        padding: const EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: .min,
              mainAxisAlignment: .spaceEvenly,
              children: [
                Text(
                  errorMessage,
                  maxLines: 2,
                  overflow: .ellipsis,
                ),

                TextButton(
                  onPressed: action,
                  child: const Text('إعادة تحميل'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
