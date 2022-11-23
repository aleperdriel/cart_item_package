library cart_item;

import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem(
      {super.key,
      required this.name,
      required this.price,
      required this.quantity,
      required this.imageUrl,
      this.color,
      this.onAdd,
      this.onRemove});
      
  final String name;
  final double price;
  final int quantity;
  final String imageUrl;
  final Color? color;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: widget.color ?? Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 20, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image(
                    image: NetworkImage(widget.imageUrl),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,
                        style: const TextStyle(
                          fontSize: 20,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${widget.price} €',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            Row(children: [
              Column(
                children: [
                  IconButton(
                      onPressed: widget.onAdd, icon: const Icon(Icons.add)),
                  Text(widget.quantity.toString()),
                  IconButton(
                      onPressed: widget.onRemove,
                      icon: const Icon(Icons.remove)),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
