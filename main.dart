














import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';


void main()
{
  runApp(new MaterialApp(home:Alok()));
}










class Alok extends StatefulWidget {
  const Alok({Key? key}) : super(key: key);

  @override
  State<Alok> createState() => _AlokState();
}

class _AlokState extends State<Alok> {

  Future? data;

  @override
  void initState()
  {
    super.initState();
    data=fn("https://maps.googleapis.com/maps/api/place/nearbysearch/json?keyword=toilet&location=26.849844828619787, 80.94489935593595&radius=500&type=toilet&key=AIzaSyCwzuYWCY4xuHAcacAmznC3u1kLexmKtUQ");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: Center(
      child: Container(
        child: FutureBuilder(
          future: data,
          builder: (context,AsyncSnapshot a)
          {
            if(a.hasData) {
              return MakingList(a.data, context);
            }
            else
              {
                return CircularProgressIndicator();
              }

          }
          ,
        ),
      ),
    ),
    );
  }

  Future? fn(String s)async
  {
    Response a=await get(Uri.parse(s));
    if(a.statusCode==200) {
      print(a.body);
      print('11111111111111111111111111111111111111111111111111111111111111111111111111');
      var aa=jsonDecode(a.body);
      print(aa);
      return (aa["results"]);
      // var value=(aa["results"]);
    }
    else
      return a.statusCode;
  }

  Widget MakingList(List data, BuildContext context)
  {
    return Container(
      child: ListView.builder(itemCount: data.length,
      itemBuilder: (context,int index)
        {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.purpleAccent,borderRadius: BorderRadius.circular(12)),
                    
                    
                    child: ListTile(
                      title: Text(data[index]["business_status"]),
                      subtitle:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text((data[index]["name"])), Text((data[index]["vicinity"])),
                        ],
                      ),
                      leading: Image(image: NetworkImage((data[index]['icon'])),),
                    ),
                  ),
                ),
              )
            ],
          );
        }
        ,
      ),
    );
  }
}
