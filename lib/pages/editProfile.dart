
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        title: Text('SETTING'),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: SafeArea(
        
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/components/topProfile1.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 30.0),
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: 30,
                                  letterSpacing: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 30, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Mantita',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Weangtham',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                width: 155,
                                height: 155,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 4),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/Avatar/zhoufang.jpg'))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                      Positioned(
                      right:20,
                      top: 210,
                                          child: Container(
                        width: 40,
                        height:40,
                        decoration: BoxDecoration(
                          color:Colors.black54,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 360.0),
                      child: Container(
                        width: 65.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/components/telephone.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 130.0, top: 350.0, right: 40.0),
                      child: buildTextField('Phone number', '095-456-7891'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 480.0),
                      child: Container(
                        width: 65.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/components/information.png'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 130.0, top: 480.0, right: 40.0),
                      child: _buildTextField1(
                          'Hi I am Chun, I can\'t sleep if the light still turn on'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 620.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlineButton(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'CANCEL',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                letterSpacing: 2.2,
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: Colors.green,
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'SAVE',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  letterSpacing: 2.2,
                                  color: Colors.white),
                            ),
                          ),
                        
                        ],

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 700.0, right: 20.0,bottom: 30.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder) {
    return TextField(
        decoration: InputDecoration(
              filled: true,
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: placeholder,
      hintStyle: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      labelStyle: TextStyle(fontSize: 28.0, color: Colors.black),
    ));
  }
}
Widget _buildTextField1( String placeholder) {
  final maxLines = 5;

  return Container(
    margin: EdgeInsets.all(0),
    height: maxLines * 24.0,
    child: TextField(
      
      maxLines: maxLines,
      decoration: InputDecoration(
        
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: placeholder,
        hintStyle: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
        fillColor: Colors.grey[200],
        filled: true,
      ),
    ),
  );
}
 