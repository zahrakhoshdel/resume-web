import 'package:flutter/material.dart';
import 'package:resume_web/constants.dart';
import 'package:resume_web/pages/about/about_page.dart';
import 'package:resume_web/pages/home/home_page.dart';
import 'package:resume_web/pages/projects/projects_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF251D29),
      child: ListView(
        children: [
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/profile.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            trailing: Icon(
              Icons.home,
              color: Colors.white.withOpacity(0.4),
            ),
            title: Text(
              'Home',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontSize: 20,
              ),
            ),
            onTap: () {
              kNavigator(HomePage.id);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            trailing: Icon(
              Icons.person,
              color: Colors.white.withOpacity(0.4),
            ),
            title: Text(
              'About',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontSize: 20,
              ),
            ),
            onTap: () {
              kNavigator(AboutPage.id);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            trailing: Icon(
              Icons.palette,
              color: Colors.white.withOpacity(0.4),
            ),
            title: Text(
              'Projects',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                fontSize: 20,
              ),
            ),
            onTap: () {
              kNavigator(ProjectsPage.id);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: const Color(0xFF251D29),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width - 100,
            //color: Colors.white.withOpacity(0.4),
            child: Text(
              "Designed & Built by\n<Zahra Khoshdel/> ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white.withOpacity(0.4),
                letterSpacing: 1.75,
                fontSize: 14.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
