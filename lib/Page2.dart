import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementprovider/Page3.dart';
import 'package:statemanagementprovider/provider/providerDemo.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("page 2 build");
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            FlatButton.icon(
              color: Colors.amber,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page3()));
              },
              icon: Icon(Icons.arrow_forward),
              label: Text("Page3"),
            ),
            Text(Provider.of<ProviderDemo>(context).test1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}