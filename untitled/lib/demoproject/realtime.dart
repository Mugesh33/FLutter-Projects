import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  final picker = ImagePicker();
  final CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> _uploadImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        print(pickedFile.path);
        _selectedImage = File(pickedFile!.path);

      });
    }
  }

  Future<void> _saveImageToFirestore() async {
    if (_image != null) {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child('$fileName.jpg');

      await ref.putFile(_image!);

      String downloadURL = await ref.getDownloadURL();

      await users.doc('user_id').set({'profile_image': downloadURL});
    }
  }
  File ? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(_selectedImage != null ? _selectedImage!.path : ""),
            ),
           const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadImage,
              child:const Text('Upload Image'),
            ),
            const  SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveImageToFirestore,
              child:const Text('Save to Firestore'),
            ),
           // _selectedImage != null ? Image.network(_selectedImage!.path) : const Text("vijay")
          ],
        ),
      ),
    );
  }
}
