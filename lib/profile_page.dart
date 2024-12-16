import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'l10n/app_localizations.dart';
import 'package:all_assignments/generated/l10n.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;
  final picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //final localizations = AppLocalizations.of(context);
    final localizations = S.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations?.title ?? 'Edit Profile Picture'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _image == null
              ? Text('No image selected.')
              : Image.file(_image!),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _pickImage(ImageSource.gallery),
            child: Text(localizations?.selectPicture ?? 'Select from Gallery'),
          ),
          ElevatedButton(
            onPressed: () => _pickImage(ImageSource.camera),
            child: Text(localizations?.takePicture ?? 'Take a Picture'),
          ),
        ],
      ),
    );
  }
}


// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'l10n/app_localizations.dart'; // Correct import

// class ProfilePage extends StatefulWidget {
//   @override
//   _ProfilePageState createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   File? _image;
//   final picker = ImagePicker();

//   Future<void> _pickImage(ImageSource source) async {
//     final pickedFile = await picker.pickImage(source: source);
//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final localizations = AppLocalizations.of(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(localizations?.title ?? 'Edit Profile Picture'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           _image == null
//               ? Text('No image selected.')
//               : Image.file(_image!),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () => _pickImage(ImageSource.gallery),
//             child: Text(localizations?.selectPicture ?? 'Select from Gallery'),
//           ),
//           ElevatedButton(
//             onPressed: () => _pickImage(ImageSource.camera),
//             child: Text(localizations?.takePicture ?? 'Take a Picture'),
//           ),
//         ],
//       ),
//     );
//   }
// }
