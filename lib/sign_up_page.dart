// import 'package:flutter/material.dart';
// //import 'l10n/app_localizations.dart';
// import 'package:all_assignments/generated/l10n.dart';

// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   final _formKey = GlobalKey<FormState>();
//   String _email = '';
//   String _password = '';

//   @override
//   Widget build(BuildContext context) {
//     //final localizations = AppLocalizations.of(context);
//     final localizations = S.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(localizations?.signUp ?? 'Sign Up'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 decoration: InputDecoration(labelText: localizations?.email ?? 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return localizations?.emailError ?? 'Please enter your email';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _email = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: localizations?.password ?? 'Password'),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return localizations?.passwordError ?? 'Please enter your password';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _password = value!;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save();
//                     // Perform sign-up action
//                   }
//                 },
//                 child: Text(localizations?.signUp ?? 'Sign Up'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:all_assignments/generated/l10n.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.signUp),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'), // Hardcoded as 'email' is not in S class
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email'; // Hardcoded as 'emailError' is not in S class
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'), // Hardcoded as 'password' is not in S class
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password'; // Hardcoded as 'passwordError' is not in S class
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform sign-up action
                  }
                },
                child: Text(localizations.signUp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}