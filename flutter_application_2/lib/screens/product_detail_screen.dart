// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/app_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProductDetailScreen extends StatelessWidget {
  static const screenRoute = '/product-detail';

  final Function manageFavorite;
  final Function isFvaorite;

  ProductDetailScreen(this.manageFavorite, this.isFvaorite);

  Widget buildSectionTitle(String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.center,
      child: Text(
        titleText,
        style: TextStyle(color: Colors.green, fontSize: 20),
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    // to search thr variable that we have with the one coming from the data
    final selectedProduct =
        Products_data.firstWhere((product) => product.id == productId);
    return Scaffold(
      // if m gonna do a . we have to use {} if not we can put it directly after
      appBar: AppBar(
        title: Text('${selectedProduct.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            buildSectionTitle('${selectedProduct.Title1}'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedProduct.description.length,
                itemBuilder: (ctx, index) => Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedProduct.description[index]),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35),
            buildSectionTitle('${selectedProduct.Title2}'),
            buildListViewContainer(
              ListView.builder(
                // its like a boucle it doesnt get out till it finishes the itemcount
                itemCount: selectedProduct.bienfaits.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('${index + 1}'),
                        backgroundColor: Color.fromARGB(255, 151, 220, 154),
                      ),
                      title: Text(
                        selectedProduct.bienfaits[index],
                      ),
                    ),
                    // for the line between
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            buildSectionTitle('Emballage et livraison'),
            buildListViewContainer(
              ListView.builder(
                // its like a boucle it doesnt get out till it finishes the itemcount
                itemCount: selectedProduct.emballage.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      title: Text(
                        selectedProduct.emballage[index],
                      ),
                    ),
                    // for the line between
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            buildSectionTitle('Détails rapides'),
            buildListViewContainer(
              ListView.builder(
                // its like a boucle it doesnt get out till it finishes the itemcount
                itemCount: selectedProduct.details.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      title: Text(
                        selectedProduct.details[index],
                      ),
                    ),
                    // for the line between
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Produit disponible en marquage privé contactez-nous pour plus d’informations:',
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    child: ElevatedButton(
                      child: Text('Oriental Group'),
                      onPressed: () async {
                        final url =
                            'https://group-oriental.com/fr/contact-nous/';
                        if (await canLaunchUrlString(url)) {
                          await launchUrlString(
                            url,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(isFvaorite(productId) ? Icons.star : Icons.star_border),
          onPressed: () {
            manageFavorite(productId);
          }),
    );
  }
}
