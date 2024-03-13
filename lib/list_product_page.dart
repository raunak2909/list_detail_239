import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_detail_239/app_constant.dart';
import 'package:list_detail_239/product_detail_page.dart';

class ListProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Smartphones'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
          itemCount: AppConstants.listProducts.length,
          itemBuilder: (_, index) {
            Map<String, dynamic> currItem = AppConstants.listProducts[index];

            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(itemIndex: index),
                    ));
              },
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(currItem['pImgUrl']))),
                    ),
                    Text(currItem['pName']),
                    Text(currItem['pDesc']),
                  ],

                ),
              ),
            );
          }),
    );
  }
}
