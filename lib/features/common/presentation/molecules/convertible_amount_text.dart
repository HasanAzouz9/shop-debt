import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';

import '../../../../core/extensions/double.extension.dart';
import '../../application/exchange_rate_converter.dart';

class ConvertibleAmountText extends ConsumerStatefulWidget {
  final double value;
  final TextStyle? style;
  const ConvertibleAmountText({super.key, required this.value, this.style});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExchangeRateConverterButtonState();
}

class _ExchangeRateConverterButtonState extends ConsumerState<ConvertibleAmountText> {
  late double convertedValue;
  final exchangeConvertedProvider = StateProvider<bool>((ref) => false);

  @override
  void initState() {
    super.initState();
    convertedValue = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    final converted = ref.watch(exchangeConvertedProvider);
    final convertedState = ref.watch(exchangeConvertedProvider.notifier);
    return InkWell(
      onTap: () {
        if (converted) {
          convertedValue = widget.value;
        }
        if (!converted) {
          convertedValue = ref.read(ExchangeRateConverter.provider.notifier).convert(value: widget.value);
        }
        convertedState.state = !converted;
      },
      child: Text(
        converted ? '\u200E${convertedValue.compact()} SP' : '\$ ${convertedValue.toStringAsFixed(2)}',
        style: widget.style ?? context.textTheme.titleMedium,
      ),
    );
  }
}
