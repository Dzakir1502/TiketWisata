import 'package:flutter/material.dart';
import '../../../core/core.dart';
import '../models/printer_model.dart';
import '../widgets/menu_printer_button.dart';
import '../widgets/menu_printer_content.dart';

class SettingPrinterPage extends StatefulWidget {
  const SettingPrinterPage({super.key});

  @override
  State<SettingPrinterPage> createState() => _SettingPrinterPageState();
}

class _SettingPrinterPageState extends State<SettingPrinterPage> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kelola Printer'),
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.back.image(),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Container(
            width: context.deviceWidth,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.stroke,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MenuPrinterButton(
                  isActive: selectIndex == 0,
                  label: 'Search',
                  onPressed: () {
                    selectIndex = 0;
                    setState(() {});
                  },
                ),
                MenuPrinterButton(
                isActive: selectIndex == 1,
                label: 'Disconnect',
                onPressed: () {
                    selectIndex = 1;
                    setState(() {});
                  },
                ),
                MenuPrinterButton(
                  isActive: selectIndex == 2,
                  label: 'Test',
                  onPressed: () {
                    selectIndex = 2;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          const SpaceHeight(34.0),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final int selectIndex;
  final List<PrinterModel> datas;

  const _Body({super.key, required this.selectIndex, required this.datas});

  @override
  Widget build(BuildContext context) {
    if (datas.isEmpty) {
      return const Text('No data Available');
    } else if (selectIndex == 0) {
      return Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: AppColors.black.withOpacity(5 / 100),
              blurRadius: 30,
              spreadRadius: 0,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: datas.length,
          separatorBuilder: (context, index) => const SpaceHeight(16.0),
          itemBuilder: (context, index) =>
              MenuPrinterContent(data: datas[index]),
        ),
      );
    } else if (selectIndex == 1) {
      return Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 5),
                color: AppColors.black.withOpacity(5 / 100),
                blurRadius: 30,
                spreadRadius: 0,
                blurStyle: BlurStyle.outer,
              ),
            ]),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: datas.length,
          separatorBuilder: (context, index) => const SpaceHeight(16.0),
          itemBuilder: (context, index) =>
              MenuPrinterContent(data: datas[index]),
        ),
      );
    }
     return const Placeholder();
  }
}
