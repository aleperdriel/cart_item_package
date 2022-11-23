A simple cart item widget to display and edit products.

## Features

You can create a card with a product image, a name, a price and add callbacks to edit the quantity displayed.

## Getting started

In your project's *pubspec.yaml* file, add: 

```yaml
    dependencies:
    cart_item: <latest_version>
```

Check the example to see how to call the card

## Usage

For each CartItem **name**, **price**, **quantity** and **imageUrl** are required.

The rest is optionnal. By default, the color will be white and no callback will be linked to the buttons.

```dart
CartItem(
    color: Colors.blue,
    name: 'M T-shirt',
    price: 20,
    quantity: 2,
    imageUrl: 'https://uk.elis.com/sites/uk.elis.com/files/styles/product_cover/public/catalog/product/ID_0300_white_300_dpi_YR14.png?h=7d612996&itok=SrDfm6k8',
    onAdd: () => { 
        _yourFunctionAdd() 
    },
    onRemove: () => {
        _yourFunctionRemove()
    },
)
```

## Additional information

This is a school project, just to learn how to publish a package. This is not a complex widget with a lot of functionnality and could probably be done better.

Thanks for checking this ! :)