import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_pwa/ProductModel.dart';

import 'package:http/http.dart' as httpClicn;

import 'netwokCall/ApiService.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<ProductModel> productModel = [];
  bool isLoading = true;
  @override
  void initState() {
    loadProduct();
    super.initState();
  }

  loadProduct() async {
    httpClicn.Response response =
        await httpClicn.get(Uri.parse('https://fakestoreapi.com/products'));

    //productModel = ProductModel.fromJson(jsonEncode(jsonDecode(response.body)));
//    print("RESPONSE ${jsonEncode(jsonDecode(response.body))}");
    productModel = productModelFromJson(response.body);

    if (kDebugMode) {
      print('LENGTH _ ${productModel.length}');
    }
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
    // productModel = ProductModel.fromJson(jsonDecode(response.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: productModel.length,
            itemBuilder: (BuildContext ctx, index) {
              return ProductItemWidget(
                productModel: productModel,
                index: index,
              );
            });
  }
}

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget(
      {Key? key, required this.productModel, required this.index})
      : super(key: key);

  final List<ProductModel> productModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.5,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            Image.network(
              productModel[index].image!,
              height: 150,
              width: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${productModel[index].title}',
                    style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none),
                  ),
                  Text(
                    '\$ ${productModel[index].price}',
                    style: const TextStyle(
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 241, 120, 6),
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
