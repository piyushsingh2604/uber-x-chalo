import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:uberapp/BottomNaviBar/HomeBottomNaviBar.dart';
import 'package:uberapp/HomePages/HomePage.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  String address = '';

  static const List<String> listItems = <String>[
    'Andheri',
    'Bandra',
    'Bhayander',
    'Borivali',
    '	Charni Rd',
    'Churchgate',
    'Dadar',
    'Dahisar',
    'Goregaon',
    '	Vasai Rd',
    '	Naigaon',
    '	Mira Rd',
    'Nalla Sopara',
    '	Virar',
    '	Ram Mandir',
    '	DN Nagar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                            height: 800,
                            child: Column(
                              children: [
                                Autocomplete<String>(
                                  optionsBuilder:
                                      (TextEditingValue textEditingValue) {
                                    if (textEditingValue.text == '') {
                                      return const Iterable<String>.empty();
                                    }
                                    return listItems.where((String item) {
                                      return item.contains(
                                          textEditingValue.text.toLowerCase());
                                    });
                                  },
                                  onSelected: (String item) {
                                    print('The $item was selected');
                                  },
                                ),
                              ],
                            ));
                      });
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeNaviBar()));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 1),
              child: Container(
                height: 640,
                width: 390,
                child: OpenStreetMapSearchAndPick(
                    center: LatLong(23, 89),
                    buttonColor: Colors.blue,
                    buttonText: 'Set Current Location',
                    onPicked: (pickedData) {
                      print(pickedData.latLong.latitude);
                      print(pickedData.latLong.longitude);
                      print(pickedData.address);
                    }),
              ),
            ),
          ],
        ));
  }
}
