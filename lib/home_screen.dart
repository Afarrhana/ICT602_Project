import 'package:flutter/material.dart';
import 'package:project_ict602/Screens/Location/current_location_screen.dart';
import 'Screens/Welcome/welcome_screen.dart';
import 'main_crud.dart';

void main() => runApp(MyHomepage());

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'LIFESAVER: HEALTH GUARDIAN!';

    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.people),
                title: Text('Health Records'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => crudPage()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.my_location),
              title: Text('My Location'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CurrentLocationScreen()),
                  );
                }
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}