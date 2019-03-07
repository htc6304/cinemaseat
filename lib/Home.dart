import 'package:flutter/material.dart';
import 'package:snaplist/snaplist.dart';
import 'CinemasList.dart';
import 'package:flutter/services.dart';
import 'seatPlan.dart';

class HomeWidget extends StatefulWidget {
// @override

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeWidget> {
  List<String> urls = [
    "https://www.uacinemas.com.hk/api-get-image-file?file=7&type=CINEMA_COVER&20190209",
    "http://www.mclcinema.com/Content/Image/MCLCinemas/telford.jpg",
    "https://media.goldenharvest.com/cinema/201812201214146907.jpg",
    "https://www.plazahollywood.com.hk/uploads/shopping/detail/2372.jpg",
    "https://topick.hket.com/res/v3/image/content/1870000/1872085/tomn20170802104_1024_1024.jpg",
    "https://www.lcsd.gov.hk/en/stadium/hks/images/tc/photo/vision01_l.jpg",
    "https://www.lcsd.gov.hk/en/hkc/common/images/HKC%20Photos/Photo%20Gallery/LowRES_Photo%20Gallery_HKC%20(14&16&17&18)/IMG_0814(17).jpg",
    "https://static.panoramio.com.storage.googleapis.com/photos/original/12581795.jpg"
  ];

  List<String> cinName = [
    "UA Cinemas",
    "MCL Cinema",
    "嘉禾院線",
    "百老匯院線",
    "Cinema City",
    "香港大球場",
    "香港體育館",
    "亞洲國際博覽館",
  ];

  @override
  Widget build(BuildContext context) {


    final Size cardSize = Size(350.0, 180.0);
    final Size textSize = Size(350.0, 10.0);
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            if (index % 2 == 0) {
              return ClipRRect(
                  borderRadius: new BorderRadius.circular(16.0),
                  child: InkWell(
                      child: Image.network(
                        urls[index ~/ 2],
                        fit: BoxFit.cover,
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CinemasList()))));
            } else {
              return Center(child: Text(cinName[index ~/ 2]));
            }
          },
          itemCount: urls.length*2,
              // Stack(children: <Widget>[
              // ClipRRect(
              //         borderRadius: new BorderRadius.circular(16.0),
              //         child: InkWell(
              //             child: Image.network(
              //               urls[index ],
              //               fit: BoxFit.cover,
              //             ),
              //             onTap: () => Navigator.push(context,
              //                 MaterialPageRoute(builder: (context) => CinemasList())))),
              //                 Text(cinName[index],)

              // ],)
              
        ));
  }
}

class GuestureW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () => "test",
    );
  }
}
