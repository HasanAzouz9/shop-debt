import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';

class CalculatorState {
  final String expression;
  final double result;

  CalculatorState({this.expression = '', this.result = 0.0});

  CalculatorState copyWith({String? expression, double? result}) {
    return CalculatorState(
      expression: expression ?? this.expression,
      result: result ?? this.result,
    );
  }
}

class CalculatorNotifier extends StateNotifier<CalculatorState> {
  CalculatorNotifier() : super(CalculatorState());

  void onInput(String char) {
    String newExpr = state.expression;

    if (char == '\u2190') {
      if (newExpr.isNotEmpty) {
        newExpr = newExpr.substring(0, newExpr.length - 1);
      }
    } else if (char == 'C') {
      newExpr = '';
    } else {
      newExpr += char;
    }

    state = state.copyWith(
      expression: newExpr,
      result: _evaluate(newExpr),
    );
  }

  double _evaluate(String expression) {
    try {
      String cleanExpression = expression.replaceAll('x', '*');

      GrammarParser parser = GrammarParser();

      Expression parsedExpression = parser.parse(cleanExpression);

      RealEvaluator real = RealEvaluator();
      num result = real.evaluate(parsedExpression);

      return double.parse(result.toStringAsFixed(2));
    } catch (e) {
      return 0.0;
    }
  }
}

final calcProvider = StateNotifierProvider.autoDispose<CalculatorNotifier, CalculatorState>((ref) {
  return CalculatorNotifier();
});

class CustomCalculator extends ConsumerWidget {
  final ValueChanged<double>? onResultChanged;
  final ValueChanged<String>? onExpressionChanged;
  final Color? primaryColor;

  const CustomCalculator({
    super.key,
    this.onResultChanged,
    this.onExpressionChanged,
    this.primaryColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<CalculatorState>(calcProvider, (prev, next) {
      if (prev?.result != next.result) onResultChanged?.call(next.result);
      if (prev?.expression != next.expression) onExpressionChanged?.call(next.expression);
    });

    final state = ref.watch(calcProvider);
    final notifier = ref.read(calcProvider.notifier);

    return Column(
      mainAxisSize: .min,
      spacing: 16,
      children: [
        Container(
          width: double.infinity,
          height: 12.h,
          padding: context.padding8,
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor ?? context.colorScheme.primaryContainer),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: .spaceBetween,
            children: [
              Align(
                alignment: .center,
                child: Text(
                  state.result.toStringAsFixed(1),
                  style: context.textTheme.headlineMedium,
                ),
              ),
              FittedBox(
                child: Text(
                  state.expression.isEmpty ? '0' : state.expression,
                  maxLines: 1,
                  style: context.textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
        _buildButtonGrid(notifier, context),
      ],
    );
  }

  Widget _buildButtonGrid(CalculatorNotifier notifier, BuildContext context) {
    final buttons = [
      ['/', '3', '2', '1'],
      ['x', '6', '5', '4'],
      ['-', '9', '8', '7'],
      ['+', '\u2190', '0', 'C'],
    ];

    return Column(
      spacing: 8,
      children: buttons.map((row) {
        return Row(
          spacing: 8,

          children: row.map((btn) {
            return Expanded(
              child: ElevatedButton(
                style: const ButtonStyle().copyWith(
                  padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
                  ),

                  minimumSize: WidgetStatePropertyAll(Size.fromHeight(6.h)),
                ),
                onPressed: () => notifier.onInput(btn),
                child: Text(
                  btn,
                  style: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.primary, fontWeight: .w600),
                ),
              ),
            );
          }).toList(),
        );
      }).toList(),
    );
  }
}
