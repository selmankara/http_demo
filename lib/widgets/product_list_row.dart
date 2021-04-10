import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget {
  Product product;
  ProductListRowWidget(this.product);
  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.network(
                  'https://www.softwarearge.com/wp-content/uploads/2018/09/no-image-icon-6.png'),
              height: 130,
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(product.productName),
            Text(
              product.unitPrice.toString() + ' ₺',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
