import 'package:flutter/widgets.dart';
import '../../../../core/core.dart';
import '../models/history_model.dart';

class HistoryCard extends StatelessWidget {
  final HistoryModel item;
  const HistoryCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.stroke),
        borderRadius: BorderRadius.circular(16.0)
      ),
      child: Row(
        children: [
          Assets.icons.plus.svg(),
          const SpaceWidth(16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SpaceHeight(5.0),
              Text(
                item.dateTime.toFormattedDayTime(),
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.grey,
                ),
              )
            ],
          ),
          const SpaceHeight(5.0),
              Text(
                item.price.currencyFormatRp,
                style: const TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              )
        ],
      ),
    );
  }
}