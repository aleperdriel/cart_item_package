import 'package:flutter/material.dart';
import 'package:cart_item/cart_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cart example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var productQuantity = 3;
  void _incrementQuantity() {
    setState(() {
      productQuantity ++;
    });
  }

  void _lessenQuantity() {
    setState(() {
      productQuantity = productQuantity <= 0 ? 0 : productQuantity -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            CartItem(
              color: Colors.white24,
              name: 'Graphic T-shirt',
              price: 12.99,
              quantity: productQuantity,
              imageUrl: 'https://uk.elis.com/sites/uk.elis.com/files/styles/product_cover/public/catalog/product/ID_0300_white_300_dpi_YR14.png?h=7d612996&itok=SrDfm6k8',
              onAdd: () => {
                _incrementQuantity()
              },
              onRemove: () => {
                _lessenQuantity()
              },
            ),
          ]
        ),
      ),
    );
  }
}
