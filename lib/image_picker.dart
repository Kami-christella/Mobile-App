// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart'; // Import this
// import 'dart:io'; // Import this for File class

// // import 'image_picker.dart';

// class ImagePickerPage extends StatefulWidget {
//   @override
//   _ImagePickerPageState createState() => _ImagePickerPageState();
// }

// class _ImagePickerPageState extends State<ImagePickerPage> {
//   File? _image;
//   final ImagePicker _picker = ImagePicker();

//   Future<void> _pickImage(ImageSource source) async {
//     final XFile? pickedFile = await _picker.pickImage(source: source);
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   Future<void> _showImageSourceSelection() async {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('Select Image Source'),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//               _pickImage(ImageSource.gallery);
//             },
//             child: Text('Gallery'),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//               _pickImage(ImageSource.camera);
//             },
//             child: Text('Camera'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _image == null
//                 ? Text('No image selected.')
//                 : Image.file(
//                     _image!,
//                     width: 200,
//                     height: 200,
//                     fit: BoxFit.cover,
//                   ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _showImageSourceSelection,
//               child: Text('Select or Take a Picture'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // Import this
import 'dart:io'; // Import this for File class

class ImagePickerPage extends StatefulWidget {
  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _showImageSourceSelection() async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Select Image Source'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _pickImage(ImageSource.gallery);
            },
            child: Text('Gallery'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _pickImage(ImageSource.camera);
            },
            child: Text('Camera'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null
                ? Text('No image selected.')
                : Image.file(
                    _image!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showImageSourceSelection,
              child: Text('Select or Take a Picture'),
            ),
          ],
        ),
      ),
    );
  }
}
