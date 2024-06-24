import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/controler/product_controller.dart';
import 'package:project/model/Product_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

ProductController controller = ProductController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.add_alert_sharp,
            color: Colors.red,
          )
        ],
        title: const Text(
          "Hamro Online Shop",
          style: TextStyle(
              color: Colors.green, fontSize: 13.0, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.safety_check,
          color: Colors.red,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 14, right: 14, top: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(255, 185, 116, 139)),
            child: Row(
              children: [
                Image.network(
                  "data:image/webp;base64,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+noP812At7YNh4a0uLG6PtAUxcoJW6Cgw+SFa+sQLsSVYjZFY/AOJGx2ALy0WLBGVjI0pMr4fEAAAEVYSUZfAQAARXhpZgAASUkqAAgAAAAEAA4BAgDyAAAAPgAAAJiCAgAZAAAAMAEAABoBBQABAAAASQEAABsBBQABAAAAUQEAAAAAAABNYWdudXMgQ2FybHNlbiBpcyBwYXJ0aWNpcGF0aW5nIGluIHRoZSBwbGF5ZXJzJiMwMzk7IHByZXNlbnRhdGlvbiBhbmQgcHJlc3MgY29uZmVyZW5jZSBiZWZvcmUgdGhlIFN1cGVyYmV0IFJhcGlkICZhbXA7IEJsaXR6IFBvbGFuZCAyMDI0IGNoZXNzIHRvdXJuYW1lbnQgaW4gV2Fyc2F3LCBQb2xhbmQsIG9uIE1heSA3LCAyMDI0LiAoUGhvdG8gYnkgQW5kcnplaiBJd2FuY3p1ay9OdXJQaG90byB2aWEgR2V0dHkgSW1hZ2VzKUFuZHJ6ZWogSXdhbmN6dWsvTnVyUGhvdG8sAQAAAQAAACwBAAABAAAAAFhNUCB+BgAAaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/Pgo8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIj4KCTxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+CgkJPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczpJcHRjNHhtcENvcmU9Imh0dHA6Ly9pcHRjLm9yZy9zdGQvSXB0YzR4bXBDb3JlLzEuMC94bWxucy8iICAgeG1sbnM6R2V0dHlJbWFnZXNHSUZUPSJodHRwOi8veG1wLmdldHR5aW1hZ2VzLmNvbS9naWZ0LzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGx1cz0iaHR0cDovL25zLnVzZXBsdXMub3JnL2xkZi94bXAvMS4wLyIgIHhtbG5zOmlwdGNFeHQ9Imh0dHA6Ly9pcHRjLm9yZy9zdGQvSXB0YzR4bXBFeHQvMjAwOC0wMi0yOS8iIHhtbG5zOnhtcFJpZ2h0cz0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3JpZ2h0cy8iIGRjOlJpZ2h0cz0iQW5kcnplaiBJd2FuY3p1ay9OdXJQaG90byIgcGhvdG9zaG9wOkNyZWRpdD0iTnVyUGhvdG8gdmlhIEdldHR5IEltYWdlcyIgR2V0dHlJbWFnZXNHSUZUOkFzc2V0SUQ9IjIxNTE0MDExNjMiIHhtcFJpZ2h0czpXZWJTdGF0ZW1lbnQ9Imh0dHBzOi8vd3d3LmdldHR5aW1hZ2VzLmNvbS9ldWxhP3V0bV9tZWRpdW09b3JnYW5pYyZhbXA7dXRtX3NvdXJjZT1nb29nbGUmYW1wO3V0bV9jYW1wYWlnbj1pcHRjdXJsIiBwbHVzOkRhdGFNaW5pbmc9Imh0dHA6Ly9ucy51c2VwbHVzLm9yZy9sZGYvdm9jYWIvRE1JLVBST0hJQklURUQtRVhDRVBUU0VBUkNIRU5HSU5FSU5ERVhJTkciID4KPGRjOmNyZWF0b3I+PHJkZjpTZXE+PHJkZjpsaT5OdXJQaG90bzwvcmRmOmxpPjwvcmRmOlNlcT48L2RjOmNyZWF0b3I+PGRjOmRlc2NyaXB0aW9uPjxyZGY6QWx0PjxyZGY6bGkgeG1sOmxhbmc9IngtZGVmYXVsdCI+TWFnbnVzIENhcmxzZW4gaXMgcGFydGljaXBhdGluZyBpbiB0aGUgcGxheWVycyZhbXA7IzAzOTsgcHJlc2VudGF0aW9uIGFuZCBwcmVzcyBjb25mZXJlbmNlIGJlZm9yZSB0aGUgU3VwZXJiZXQgUmFwaWQgJmFtcDthbXA7IEJsaXR6IFBvbGFuZCAyMDI0IGNoZXNzIHRvdXJuYW1lbnQgaW4gV2Fyc2F3LCBQb2xhbmQsIG9uIE1heSA3LCAyMDI0LiAoUGhvdG8gYnkgQW5kcnplaiBJd2FuY3p1ay9OdXJQaG90byB2aWEgR2V0dHkgSW1hZ2VzKTwvcmRmOmxpPjwvcmRmOkFsdD48L2RjOmRlc2NyaXB0aW9uPgo8cGx1czpMaWNlbnNvcj48cmRmOlNlcT48cmRmOmxpIHJkZjpwYXJzZVR5cGU9J1Jlc291cmNlJz48cGx1czpMaWNlbnNvclVSTD5odHRwczovL3d3dy5nZXR0eWltYWdlcy5jb20vZGV0YWlsLzIxNTE0MDExNjM/dXRtX21lZGl1bT1vcmdhbmljJmFtcDt1dG1fc291cmNlPWdvb2dsZSZhbXA7dXRtX2NhbXBhaWduPWlwdGN1cmw8L3BsdXM6TGljZW5zb3JVUkw+PC9yZGY6bGk+PC9yZGY6U2VxPjwvcGx1czpMaWNlbnNvcj4KCQk8L3JkZjpEZXNjcmlwdGlvbj4KCTwvcmRmOlJERj4KPC94OnhtcG1ldGE+Cjw/eHBhY2tldCBlbmQ9InciPz4K",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 14,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aayush Rana Magar",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'STRAIGHT FROM THE L-SIDE',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '234234234',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.myProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Center(
                    child:
                        card(controller.myProducts[index], controller, index));
              })
        ]),
      ),
    );
  }

  Widget card(Product product, ProductController controller, int index) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 245, 248, 78),
        // borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                product.ProductImage ?? '',
                height: 140,
                width: 200,
                fit: BoxFit.fitWidth,
              )),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: [
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.ProductName ?? ''),
                    Text('Rs ${product.Price.toString()}'),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quantity: ${(product.Quantity ?? 0).toString()}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                controller.toggleFavorit(index);
                              });
                            },
                            child: Icon(
                              product.isFavourate
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                            )),
                        const SizedBox(
                          width: 6,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              controller.toggleCart(index);
                            });
                          },
                          child: Icon(
                            product.inCart
                                ? Icons.shopping_cart
                                : Icons.add_shopping_cart,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
