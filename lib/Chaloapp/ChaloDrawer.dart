import 'package:flutter/material.dart';

class ChaloDrawer extends StatefulWidget {
  const ChaloDrawer({super.key});

  @override
  State<ChaloDrawer> createState() => _ChaloDrawerState();
}

class _ChaloDrawerState extends State<ChaloDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListTile(
              leading: Icon(
                Icons.person,size: 60,
                color: Colors.black,
              ),
              title: Text("Sign In/Register"),
              subtitle: Text("To See your Tickets/Passes"),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 7,
          ),
          ListTile(
            leading: Icon(
              Icons.stars,
              color: Colors.black,
            ),
            title: Text("Your Tickets / Passed"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.account_balance_wallet,
              color: Colors.black,
            ),
            title: Text("Chalo Pay Wallet"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.add_card_rounded,
              color: Colors.black,
            ),
            title: Text("Card Recharges"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.location_searching,
              color: Colors.black,
            ),
            title: Text("Stops and Stations "),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.star_rate,
              color: Colors.black,
            ),
            title: Text("Favorites"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.password,
              color: Colors.black,
            ),
            title: Text("Bhalo Bus Pass"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.chair,
              color: Colors.black,
            ),
            title: Text("Your Reserved Trips"),
            onTap: () {},
          ),
          Divider(
            thickness: 7,
          ),
          ListTile(
            leading: Icon(
              Icons.lightbulb,
              color: Colors.black,
            ),
            title: Text("Electricity Bill"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            title: Text("Alerts"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.question_mark,
              color: Colors.black,
            ),
            title: Text("Support"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: Colors.black,
            ),
            title: Text("Change City"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Colors.black,
            ),
            title: Text("Change Language"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.sos_sharp,
              color: Colors.black,
            ),
            title: Text("SOS"),
            onTap: () {},
          ),
          Divider(
            thickness: 7,
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.black,
            ),
            title: Text("Share With Friends"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text("Follow us on"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://creazilla-store.fra1.digitaloceanspaces.com/icons/3233129/square-facebook-icon-md.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.shutterstock.com/shutterstock/videos/1063781164/thumb/5.jpg?ip=x480'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.freebiesupply.com/images/large/2x/instagram-logo-white-on-black.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          Divider(thickness: 2,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(children: [
          Text("Terms and Conditions"),
          SizedBox(
            width: 80,
          ),
          Text("V 9.6.5")
            ],),
          ),
          SizedBox(
            height: 30,
          ),
          Text("No More")
        ],
      ),
    );
  }
}
