import 'package:flutter/material.dart';
import 'package:tiket_wisata/presentation/ui/home/models/product_model.dart';
import 'package:tiket_wisata/presentation/ui/home/widgets/ticket_card.dart';
import '../../../../core/core.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Tiket'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
          separatorBuilder: (context,index)=> const SpaceHeight(20.0),
          itemCount: products.length,
          itemBuilder: (context, index)=>TicketCard(item: products[index]),
          ),
    );
  }
}
