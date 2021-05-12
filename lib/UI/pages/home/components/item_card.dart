import 'package:clean_arq_flutter/UI/commons/settings.dart';
import 'package:clean_arq_flutter/domain/model/product/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? press;
  const ItemCard({
    Key? key,
    @required this.product,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _currencyFormat = new NumberFormat("#,##0.00", "en_US");

    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(Settings.defaultPadding),
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product!.id}",
                child: Image.asset(product!.image!),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Settings.defaultPadding / 4),
            child: Text(
              // products is out demo list
              product!.title!,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                  color: Settings.alternativeColor,
                  fontSize: 12
              ),
            ),
          ),
          Text(
            "\$${_currencyFormat.format(product!.price)}",
            style: GoogleFonts.openSans(
                color: Settings.alternativeColor,
                fontWeight: FontWeight.bold,
                fontSize: 13
            ),
          )
        ],
      ),
    );
  }
}
