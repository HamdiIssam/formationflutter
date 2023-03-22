import 'package:flutter/material.dart';

import 'client.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  List<String> mydata = [];

  getData() {
    mydata= ['axcvxcv','bxcvsdvfsd','csdvsdxv'];
    return mydata;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(itemCount: mydata.length, itemBuilder: (BuildContext context, int index) {
                      return Text(mydata[index]);
                    }),
            ),
        ElevatedButton(onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ClientPage()));
        },child: Text('list'))
          ],
        )
      ),
    );
  }
}