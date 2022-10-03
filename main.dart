// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart' as gett;
// import 'package:google_map/making_class.dart';
// import 'package:http/http.dart' ;
//
// void main()
// {
//   runApp(new gett.GetMaterialApp(
//     home: MyApp(),
//   ));
// }
//
//
// var business_status;
// var lat;
// var long;
// var north_lat;
// var north_long;
// var south_lat;
// var south_long;
// var icon;
// var icon_background_color;
// var icon_mask_uri;
// var name;
// var opening_hour;
// var photo_height;
// var photo_attributions;
// var photo_refrence;
// var place_id;
// var compound_code;
//
//
//
//
//
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   // const MyApp({Key? key}) : super(key: key);
//   // var dataa=student();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Center(
//             child: ElevatedButton(onPressed: ()async{
//              Response response=await post(Uri.parse(
//                  "https://maps.googleapis.com/maps/api/place/nearbysearch/json?keyword=toilet&location=26.849844828619787, 80.94489935593595&radius=500&type=toilet&key=AIzaSyCwzuYWCY4xuHAcacAmznC3u1kLexmKtUQ"
//                  // 'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522%2C151.1957362&radius=1500&type=restaurant&keyword=cruise&key=AIzaSyBZIjLsZkgi6h-Rq3_9h-bDUhmb5D9Rj24'
//              ),);
//               print(response.statusCode);
//                // dataa.name.value="alok";
//               var data=jsonDecode(response.body);
//               ////data will contain whole json
//              //whole json is divided into 2 parts
//              ///second one is results that is imp for us
//               print(data);
//              print("11111111111111111111111111111111111111111111111111111111111");
// // print(jsonDecode(data));
//               print(data.length);
//
//              //get the whole result
//               var value=(data["results"]);
//               print(value.length);
//
//               print(value[0]);
//               //get the business_status
//               var b=(value[0]["business_status"]);
//
//              print(b);
//               //getting the long
//               print (value[0]["geometry"]["location"]["lat"]);
//              print (value[0]["geometry"]["location"]["lng"]);
//               //getting the viewport-northeast-lat
//              print (value[0]["geometry"]["viewport"]["northeast"]["lat"]);
//
//              //getting the viewport-northeast-long
//              print (value[0]["geometry"]["viewport"]["northeast"]["lng"]);
//
//              //getting the viewport-southeast-lat
//              print (value[0]["geometry"]["viewport"]["southwest"]["lat"]);
//
//              //getting the viewport-southeast-long
//              print (value[0]["geometry"]["viewport"]["southwest"]["lng"]);
//
// //get the icon
//              print (value[0]['icon']);
//
//
//               //get the icon_background color
//               print (value[0]['icon_background_color']);
//
//               //get the icon_mask_base_uri
//               print (value[0]['icon_mask_base_uri']);
//
//               //get the name
//               print (value[0]['name']);
//
//               //get the openinghour
//               print (value[0]['opening_hours']["open_now"]);
//
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//               //get the photo
// //               print (value[0]['photos'][0]["height"]);
// //
// // //get the photo html_attribution
// //               print (value[0]['photos'][0]["html_attributions"][0]);
// //
// //
// //
// //               //get the photo_reference
// //               print (value[0]['photos'][0]["photo_reference"]);
// //
// // //get the photo width
// //               print (value[0]['photos'][0]["width"]);
// //
// //               //get the place id
// //               print (value[0]['place_id']);
// //
// //
// //
// //
// //               print (value[0]['plus_code']["compound_code"]);
// //               print (value[0]['plus_code']["global_code"]);
//               ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//               setState(() {
//                 business_status=(value[0]["business_status"]);
//                 lat=(value[0]["geometry"]["location"]["lat"]);
//                 long=(value[0]["geometry"]["location"]["lng"]);
//                 north_lat=(value[0]["geometry"]["viewport"]["northeast"]["lat"]);
//                 north_long=(value[0]["geometry"]["viewport"]["northeast"]["lng"]);
//                 south_lat=(value[0]["geometry"]["viewport"]["southwest"]["lat"]);
//                 south_long=(value[0]["geometry"]["viewport"]["southwest"]["lng"]);
//                 icon=(value[0]['icon']);
//                 icon_background_color=(value[0]['icon_background_color']);
//                 icon_mask_uri=(value[0]['icon_mask_base_uri']);
//
//                 name=(value[0]['name']);
//                 opening_hour=(value[0]['opening_hours']["open_now"]);
//                 // compound_code=(value[0]['plus_code']["compound_code"]);
//               });
//
//             },child: Text("Button"),),
//           ),
//           // gett.Obx(()=>Text("${dataa.name}")),
//
//
//           Column(
//             children: [
//               Text("$business_status"),
//               Text("$lat"),Text("$long"),
//               Text("$north_lat"),Text("$north_long"),
//               Text("$south_lat"),Text("$south_long"),
//     Text("$icon"),Text("$icon_background_color"),
//               Text("$icon_mask_uri"),
//               Text("$name"),
//               Text("$opening_hour"),
//               Text("$compound_code"),
//             ],
//           ),
//
//           // ListView.builder(itemCount:,)
//
//
//
//
//
//
//
//
//
//
//         ],
//       ),
//     );
//   }
// }

















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
