import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementprovider/Page2.dart';
import 'package:statemanagementprovider/provider/providerDemo.dart';


class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("page 1 build");
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Page 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            SizedBox(height: 50,),
            FlatButton.icon(
              color: Colors.amber,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page2()));
              },
              icon: Icon(Icons.arrow_forward),
              label: Text("GoTo Page2"),
            ),
            Text("below provider variable value"),
            Consumer<ProviderDemo>(
              builder: (context, value, child) {
                return Text(value.test1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),);
              },),
            FlatButton(onPressed: () {
              Provider.of<ProviderDemo>(context,listen: false).changeValue("hello welcome to  world of flutter");
            }, child: Text("Change provider value"),color: Colors.white,),
            Text("provider widget"),
            Consumer<ProviderDemo>(
              builder: (context, value, child) {
                return value.widget();
              },
            ),
          ],
        ),
      ),
    );
  }
}
