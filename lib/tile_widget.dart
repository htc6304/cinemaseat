import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<int> whiteIndex = <int>[
  1,
  2,5,6,16,17,20,21,22,

];

var hidTextIndex = new Map();

 







class TileWidget extends StatelessWidget {
  const TileWidget(
      {Key key, @required this.index, this.backgroundColor: Colors.green})
      : super(key: key);

  final int index;
  final Color backgroundColor;




Color checkWhiteIndex(index){
    if (whiteIndex.contains(index%21)){
      return Colors.white;
    }else{
      return this.backgroundColor;
    }
}

Text checkTextIndex(index){



  if  (index == 0){
    return Text('Screen');
  }else{
    if (whiteIndex.contains(index%21))
    {
      // return Text('$index');
    return checkRowHeader(index);
    }else{
    return Text('$index');
  }
  }
}


Text checkRowHeader(index){
  hidTextIndex['2'] = 'A';
  hidTextIndex['22'] = 'A';
hidTextIndex['23'] = 'B';
hidTextIndex['43'] = 'B';
hidTextIndex['44'] = 'C';
hidTextIndex['64'] = 'C';
hidTextIndex['65'] = 'D';
hidTextIndex['85'] = 'D';
hidTextIndex['86'] = 'E';
hidTextIndex['106'] = 'E';
hidTextIndex['107'] = 'F';
hidTextIndex['127'] = 'F';
hidTextIndex['128'] = 'G';
hidTextIndex['148'] = 'G';
hidTextIndex['149'] = 'H';
hidTextIndex['169'] = 'H';
hidTextIndex['170'] = 'I';
hidTextIndex['190'] = 'I';
hidTextIndex['191'] = 'J';
hidTextIndex['211'] = 'J';
hidTextIndex['212'] = 'K';
hidTextIndex['232'] = 'K';
hidTextIndex['233'] = 'L';
hidTextIndex['253'] = 'L';
hidTextIndex['254'] = 'M';
hidTextIndex['274'] = 'M';
hidTextIndex['275'] = 'N';
hidTextIndex['295'] = 'N';
hidTextIndex['296'] = 'O';
hidTextIndex['316'] = 'O';

// hidTextIndex.forEach((k,v)=> v);
  if (hidTextIndex.keys.contains(index.toString())){
    return Text(hidTextIndex[index.toString()]);
  }
}



  @override
  Widget build(BuildContext context) {
    return new Container(
      color: checkWhiteIndex(index),
      child: new Center(
        child: checkTextIndex(index),
      //     child: new CircleAvatar(
      //   backgroundColor: Colors.white,
      //   child: checkTextIndex(index),
      // )),
      ),
    );
  }
}
