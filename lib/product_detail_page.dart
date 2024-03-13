import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list_detail_239/app_constant.dart';

class ProductDetailPage extends StatelessWidget{
  int itemIndex;
  ProductDetailPage({required this.itemIndex});

  @override
  Widget build(BuildContext context) {

    Map<String, dynamic> currItem = AppConstants.listProducts[itemIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(currItem['pName']),
      ),

      body: Column(
        children: [
          Image.network(currItem['pImgUrl']),
          SizedBox(
            height: 11,
          ),
          Text(currItem['pName'], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          Text(currItem['pDesc'],)
        ],
      ),
    );
  }
}