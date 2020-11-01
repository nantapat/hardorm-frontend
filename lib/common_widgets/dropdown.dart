import 'package:flutter/material.dart';
import 'package:hardorm/my_flutter_app_icons.dart';


class DropDown extends StatefulWidget {
  DropDown() : super();

  @override
  DropDownState createState() => DropDownState();
}

class Distance {
  int id;
  String name;

  Distance(this.id, this.name);

  static List<Distance> getDistance() {
    return <Distance>[
      Distance(1, '0.1 - 0.3 km.'),
      Distance(2, '0.3 - 0.6 km.'),
      Distance(3, '0.6 - 0.9 km.'),
      Distance(4, '1 - 3 km.'),
      Distance(5, '> 3 km.'),
    ];
  }
}

class DropDownState extends State<DropDown> {
  //
  List<Distance> _distance = Distance.getDistance();
  List<DropdownMenuItem<Distance>> _dropdownMenuItems;
  Distance _selectedDistance;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_distance);
    _selectedDistance = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Distance>> buildDropdownMenuItems(List distances) {
    List<DropdownMenuItem<Distance>> items = List();
    for (Distance distance in distances) {
      items.add(
        DropdownMenuItem(
          value: distance,
          child: Text(distance.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Distance selectedDistance) {
    setState(() {
      _selectedDistance = selectedDistance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 19.0, right: 20.0),
        // child: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
          left: 0, bottom: 0,top: 0,
          child: new Icon(IconHardorm.location,),
          ),
            // Icon(MyFlutterApp.location,size: 25.0,),
            Container(
              padding: EdgeInsets.only(left:50,),
              child: DropdownButton(
                hint: Text("select distance"),
                isExpanded: true,
                value: _selectedDistance,
                items: _dropdownMenuItems,
                onChanged: onChangeDropdownItem,
                iconEnabledColor: Colors.black,
              ),
              // Text('Selected: ${_selectedDistance.name}'),
            ),
          ],
        ),
      ),
    );
  }
}
