import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
part 'sections/item-section.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produk'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimens.defaultSize),
            child: SubtitleText('3 Produk'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return _ItemSection();
              }), 
              separatorBuilder: (context, index) {
                return Dimens.dp40.height;
              }, 
              itemCount: 3
              ),
          )
        ],
      ),
    );
  }
}
