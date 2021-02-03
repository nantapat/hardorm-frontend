import 'package:flutter/material.dart';
import 'package:HarDorm/common_widgets/facilities_check.dart';

class CheckFacilities extends StatefulWidget {
  // final String title;

  // const CheckFacilities({
  //   // @required this.title,
  // });

  @override
  _CheckFacilitiesState createState() => _CheckFacilitiesState();
}

class _CheckFacilitiesState extends State<CheckFacilities> {
  final selectAll = FacilitiesCheck(title: 'Select All');

  final facilities = [
    FacilitiesCheck(title: 'Parking'),
    FacilitiesCheck(title: 'Restaurant'),
    FacilitiesCheck(title: 'Non-smoking rooms'),
    FacilitiesCheck(title: 'Free WiFi'),
    FacilitiesCheck(title: 'Swimming Pool'),
    FacilitiesCheck(title: 'Fitness centre'),
    FacilitiesCheck(title: 'Terrace'),
    FacilitiesCheck(title: 'Flat-screen TV'),
    FacilitiesCheck(title: 'Air conditioning'),
  ];

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.only(right: 40),
    color: Colors.white,
    // color: Colors.blue[300],
        child:  ListView(
      // padding: const EdgeInsets.only(right:40),
            children: [
              buildToggleCheckbox(selectAll),
              Divider(),
              ...facilities.map(buildSingleCheckbox).toList(),
            ],
          ),
       
  );

  Widget buildToggleCheckbox(FacilitiesCheck facility) => buildCheckbox(
      facility: facility,
      onClicked: () {
        final newValue = !facility.value;

        setState(() {
          selectAll.value = newValue;
          facilities.forEach((facility) {
            facility.value = newValue;
          });
        });
      });

  Widget buildSingleCheckbox(FacilitiesCheck facility) => 
  buildCheckbox(
        facility: facility,
        onClicked: () {
          setState(() {
            final newValue = !facility.value;
            facility.value = newValue;

            if (!newValue) {
              selectAll.value = false;
            } else {
              final allow =
                  facilities.every((notification) => notification.value);
              selectAll.value = allow;
            }
          });
        },
      );

  Widget buildCheckbox({
    @required FacilitiesCheck facility,
    @required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          // activeColor: Colors.black,
          // checkColor: Colors.blue,
          value: facility.value,
          onChanged: (value) => onClicked(),
        ),
        title: Text(
          facility.title,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      );
}
