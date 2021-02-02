import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementprovider/provider/providerDemo.dart';

import 'Page1.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("page 3 build");
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            FlatButton.icon(
              color: Colors.amber,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page1()));
              },
              icon: Icon(Icons.arrow_forward),
              label: Text("Page1"),
            ),
            Text(Provider.of<ProviderDemo>(context).test1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}