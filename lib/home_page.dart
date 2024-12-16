

import 'package:flutter/material.dart';
import 'calculator_page.dart';
import 'sign_up_page.dart';
import 'profile_page.dart';
import 'sign_in_page.dart';
import 'package:all_assignments/generated/l10n.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Edit Profile Picture'), // This string is not localized in the provided S class
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(localizations.calculator),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                );
              },
            ),
            ListTile(
              title: Text(localizations.signUp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
            ),
            ListTile(
              title: Text(localizations.signIn),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
            ),
            ListTile(
              title: Text('Edit Profile Picture'), // This string is not localized in the provided S class
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text(localizations.title)), // 'welcome' is not in the S class, using 'title' instead
    );
  }
}
// import 'package:flutter/material.dart';
// import 'calculator_page.dart';
// import 'sign_up_page.dart';
// import 'profile_page.dart';
// import 'l10n/app_localizations.dart'; // Correct import
// import 'sign_in_page.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final localizations = AppLocalizations.of(context);
    

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(localizations?.title ?? 'My App'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text(localizations?.editProfilePicture ?? 'Edit Profile Picture'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text(localizations?.calculator ?? 'Calculator'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => CalculatorPage()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text(localizations?.signUp ?? 'Sign Up'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignUpPage()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text(localizations?.signIn ?? 'Sign In'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignInPage()),
//                 );
//               },
//             ),
//             ListTile(
//               title: Text(localizations?.editProfilePicture ?? 'Edit Profile Picture'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ProfilePage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(child: Text(localizations?.welcome ?? 'Welcome to My App')),
//     );
//   }
// }


