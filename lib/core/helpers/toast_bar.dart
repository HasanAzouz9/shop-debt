import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/config/const/assets_constants.dart';
import 'package:shop_debts/core/enum/toast_type.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';

class ToastBar {
  static void showToast({
    required BuildContext context,
    required String message,
    required ToastType toastType,
    Duration duration = const Duration(seconds: 2),
  }) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;

    entry = OverlayEntry(
      builder: (context) => Positioned(
        top: 30.h,
        left: 12,
        right: 12,
        child: switch (toastType) {
          .error => ErrorToast(message: message),
          .success => SuccessToast(message: message),
          .failure => FailureToast(message: message),
          .transactionProcessed => TransactionProcessedToast(message: message),
          .loading => LoadingToast(message: message),
        },
      ),
    );

    overlay.insert(entry);

    Future.delayed(duration, () {
      if (entry.mounted) {
        entry.remove();
      }
    });
  }
}

class TransactionProcessedToast extends StatefulWidget {
  final String message;
  const TransactionProcessedToast({super.key, required this.message});

  @override
  State<TransactionProcessedToast> createState() => _TransactionProcessedToastState();
}

class _TransactionProcessedToastState extends State<TransactionProcessedToast> {
  final AudioPlayer _player = AudioPlayer();

  Future<void> _playSound() async {
    await _player.setAsset(AssetsConstants.successSound);
    _player.seek(Duration.zero);
    _player.play();
  }

  @override
  void initState() {
    super.initState();
    _playSound();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: context.padding8,
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: context.radius12,
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.green.shade300, width: 2),
          ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Icon(
              Icons.check_circle_outlined,
              color: Colors.green.shade300,
              size: 42,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                spacing: 8,
                children: [
                  Text(
                    'تمت المعاملة',
                    style: context.textTheme.titleLarge!.copyWith(fontWeight: .bold),
                  ),
                  Text(
                    widget.message,
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: context.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ErrorToast extends StatefulWidget {
  final String message;
  const ErrorToast({super.key, required this.message});

  @override
  State<ErrorToast> createState() => _ErrorToastState();
}

class _ErrorToastState extends State<ErrorToast> {
  final AudioPlayer _player = AudioPlayer();

  Future<void> _playSound() async {
    await _player.setAsset(AssetsConstants.failureSound);
    _player.seek(Duration.zero);
    _player.play();
  }

  @override
  void initState() {
    super.initState();
    _playSound();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: context.padding8,
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: context.radius12,
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.red.shade300, width: 2),
          ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Icon(
              Icons.warning_amber_rounded,
              color: Colors.red.shade300,
              size: 42,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                spacing: 8,
                children: [
                  Text(
                    'خطأ',
                    style: context.textTheme.titleLarge!.copyWith(fontWeight: .bold),
                  ),
                  Text(
                    widget.message,
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: context.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuccessToast extends StatefulWidget {
  final String message;
  const SuccessToast({super.key, required this.message});

  @override
  State<SuccessToast> createState() => _SuccessToastState();
}

class _SuccessToastState extends State<SuccessToast> {
  final AudioPlayer _player = AudioPlayer();

  Future<void> _playSound() async {
    await _player.setAsset(AssetsConstants.successSound);
    _player.seek(Duration.zero);
    _player.play();
  }

  @override
  void initState() {
    super.initState();
    _playSound();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: context.padding8,
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: context.radius12,
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.green.shade300, width: 2),
          ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Icon(
              Icons.check_circle_outlined,
              color: Colors.green.shade300,
              size: 42,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                spacing: 8,
                children: [
                  Text(
                    'نجاح',
                    style: context.textTheme.titleLarge!.copyWith(fontWeight: .bold),
                  ),
                  Text(
                    widget.message,
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: context.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FailureToast extends StatefulWidget {
  final String message;
  const FailureToast({super.key, required this.message});

  @override
  State<FailureToast> createState() => _FailureToastState();
}

class _FailureToastState extends State<FailureToast> {
  final AudioPlayer _player = AudioPlayer();

  Future<void> _playSound() async {
    await _player.setAsset(AssetsConstants.failureSound);
    _player.seek(Duration.zero);
    _player.play();
  }

  @override
  void initState() {
    super.initState();
    _playSound();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: context.padding8,
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: context.radius12,
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.orange.shade300, width: 2),
          ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Icon(
              Icons.error_outline_outlined,
              color: Colors.orange.shade300,
              size: 42,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                spacing: 8,
                children: [
                  Text(
                    'فشل',
                    style: context.textTheme.titleMedium!.copyWith(fontWeight: .bold),
                  ),
                  Text(
                    widget.message,
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: context.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingToast extends StatelessWidget {
  final String message;
  const LoadingToast({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: context.padding8,
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: context.radius12,
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.blue.shade300, width: 2),
          ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Icon(
              Icons.check_circle_outlined,
              color: Colors.blue.shade300,
              size: 42,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                spacing: 8,
                children: [
                  Text(
                    'الرجاء الانتظار',
                    style: context.textTheme.titleLarge!.copyWith(fontWeight: .bold),
                  ),
                  Text(
                    message,
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: context.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
