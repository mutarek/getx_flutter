import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter/app/controllers/productController.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shop With X'),
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.view_list_rounded),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.grid_view),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () => GridView.builder(
                    itemCount: productController.productList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16),
                    itemBuilder: (ctx, index) {
                      return Card(
                        elevation: 15,
                        color: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50))),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Image.network(
                                          productController.productList[index].thumbnailUrl,
                                      fit: BoxFit.cover,
                                      width: double.infinity,),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Center(
                                        child: Text(productController.productList[index].id.toString()),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            FractionalTranslation(
                              translation: Offset(-1.5, -0.0),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: Center(
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        width: 2, color: Colors.black)),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ));
  }
}

class NextPage extends StatefulWidget {
  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hke'),
      ),
    );
  }
}
