import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  Future<void> _takePicture() async {
    final imageFile = await ImagePicker().getImage(source: ImageSource.camera,
    maxWidth: 400,  maxHeight: 400);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1, color: Colors.grey
            ),
          ),
          child: _storedImage  != null ? Image.file(_storedImage, fit: BoxFit.cover,
            width: double.infinity,): Text("No Image taken", textAlign: TextAlign.center,) ,
          alignment: Alignment.center,
        ),
        SizedBox(height: 10,),
        Expanded(
          child: FlatButton.icon(
            onPressed: (){
              _takePicture();
            },
            icon: Icon(Icons.camera),
            textColor: Theme.of(context).primaryColor,
            label: Text("Take picture"),
          ),
        ),
      ],
    );
  }
}
