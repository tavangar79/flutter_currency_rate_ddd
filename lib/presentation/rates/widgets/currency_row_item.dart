import 'package:currency_rate_ddd/domain/rates/rate.dart';
import 'package:currency_rate_ddd/presentation/core/colors.dart';
import 'package:currency_rate_ddd/presentation/core/colors.dart';
import 'package:currency_rate_ddd/presentation/core/colors.dart';
import 'package:currency_rate_ddd/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class CurrencyRowItem extends StatelessWidget {
  final Rate data;
  final Rate? oldData;

  const CurrencyRowItem({required this.data, this.oldData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: ThemeColors.colorListItemBackgroundColor,
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "${data.symbol}",
                style: const TextStyle(
                    color: ThemeColors.colorTextBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "${data.price?.toStringAsFixed(4)}",
                style: TextStyle(
                    color: getColor(),
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              const SizedBox(
                width: 4,
              ),
              Icon(getIcon(), color: getColor()),
            ],
          )
        ],
      ),
    );
  }

  Color getColor() {
    if (oldData == null) return ThemeColors.colorTextGreen;
    if (data.price! >= oldData!.price!) return ThemeColors.colorTextGreen;
    return ThemeColors.colorTextRed;
  }

  IconData getIcon(){
    if (oldData == null) return Icons.arrow_upward;
    if (data.price! >= oldData!.price!) return Icons.arrow_upward;
    return Icons.arrow_downward;

  }
}
