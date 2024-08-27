import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasirsuper/core/core.dart';
part 'sections/item-section.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produk'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(Dimens.defaultSize),
            child: SearchTextInput(hintText: 'Search by produk name or SKU'),
          ),
          const Padding(
            padding: EdgeInsets.all(Dimens.defaultSize),
            child: SubtitleText('3 Produk'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return const _ItemSection();
              }), 
              separatorBuilder: (context, index) {
                return Dimens.dp16.height;
              }, 
              itemCount: 3
              ),
          )
        ],
      ),
    );
  }
}

class RegularTextInput extends StatelessWidget {
  const RegularTextInput({
    super.key, 
    required this.hintText,
    this.controller,
    this.enabled = true,
    this.inputFormatters,
    this.maxLines,
    this.minLines,
    this.maxLength
  });

  final String hintText;
  final TextEditingController? controller;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        prefixIcon: const Icon(AppIcons.search),
        hintText: hintText,
      ),
    );
  }
}
