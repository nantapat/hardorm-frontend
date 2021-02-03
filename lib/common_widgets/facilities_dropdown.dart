import 'package:flutter/material.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';



class FacilitiesDropDown extends StatefulWidget {
  FacilitiesDropDown() : super();

  @override
  FacilitiesDropDownState createState() => FacilitiesDropDownState();
}

class Facilities {
  int id;
  String name;

  Facilities(this.id, this.name);

  static List<Facilities> getFacilities() {
    return <Facilities>[
      Facilities(1, 'Parking'),
      Facilities(2, 'Restaurant'),
      Facilities(3, 'Non-smoking rooms'),
      Facilities(4, 'Free WiFi'),
      Facilities(5, 'Swimming Pool'),
      Facilities(6, 'Fitness centre'),
      Facilities(7, 'Terrace'),
      Facilities(8, 'Flat-screen TV'),
      Facilities(9, 'Air conditioning'),
    ];
  }
}


class FacilitiesDropDownState extends State<FacilitiesDropDown> {
  //
  List<Facilities> _facilities = Facilities.getFacilities();
  List<DropdownMenuItem<Facilities>> _dropdownMenuItems;
  Facilities _selectedFacilities;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_facilities);
    _selectedFacilities = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Facilities>> buildDropdownMenuItems(List facilities) {
    List<DropdownMenuItem<Facilities>> items = List();
    for (Facilities facility in facilities) {
      items.add(
        DropdownMenuItem(
          value: facility,
          child: Text(facility.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Facilities selectedFacilities) {
    setState(() {
      _selectedFacilities = selectedFacilities;
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
          child: new Icon(IconHardorm.fitness_facilities),
          ),
                Container(
                  padding: EdgeInsets.only(left:50),
                  child: DropdownButton(
                    hint: Text('hi',style: TextStyle(color: Colors.black),),
                    isExpanded: true,
                    value: _selectedFacilities,
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
      // ),
  }
}
