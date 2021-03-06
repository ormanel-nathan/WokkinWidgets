import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:wokkinWidget/Widgets/specifications.dart';
import 'package:wokkinWidget/Widgets/specs.dart';

class SalesCard extends StatelessWidget {
  final List<String> products = ["2009 Toyota Corolla"];
  Widget _buildProduct(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
                aspectRatio: 23 / 11,
                child: Image.asset(
                  "assets/images/item1.jpg",
                  fit: BoxFit.fitWidth,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0),
                  child: Text(
                    products[index],
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 5.0),
                  color: Colors.black12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GH1000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 5.0),
                  child: Text(
                    "SPECS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(color: Colors.black12),
                          bottom: BorderSide(color: Colors.black12),
                          top: BorderSide(color: Colors.black12),
                          right: BorderSide(color: Colors.black12))),
                  child: Column(
                    children: [
                      Specs(),
                      Divider(),
                      Specs(),
                    ],
                  ),
                ),

//              Container(child: Specifications()),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 5.0),
                  color: Colors.black12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.green,
                          ),
                          Text(
                            "+233540209195",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.mail,
                        color: Colors.red,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: _buildProduct,
        itemCount: products.length,
        padding: EdgeInsets.symmetric(vertical: 10.0),
      ),
    );
  }
}
