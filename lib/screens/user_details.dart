import 'package:iti_training/models/user_model.dart';
import 'package:iti_training/screens/map_screen.dart';
import 'package:iti_training/widgets/info_decoration_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserDetails extends StatefulWidget {
  User user;
  UserDetails(this.user);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                //=================== email
                //================================================
                InfoDecorationCard(
                  onPressed: () {
                    launchURL("mailto:${widget.user.email}");
                  },
                  content: "Email: ${widget.user.email}",
                ),
                SizedBox(
                  height: 20,
                ),
                //=================== telephone
                //====================================================
                InfoDecorationCard(
                  onPressed: () {
                    launchURL("tel:${widget.user.phone}");
                  },
                  content: "phone: ${widget.user.phone}",
                ),
                SizedBox(
                  height: 20,
                ),
                //=================== website
                //==================================================
                InfoDecorationCard(
                  onPressed: () {
                    launchURL("https://:${widget.user.website}");
                  },
                  content: "web: ${widget.user.website}",
                ),
                TextButton(
                  child: Text('view my map'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return MapScreen(userLocation: widget.user.address.geo);}));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
