import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key});

  final String imageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-jlhi_Ucs8p5gnmvGs-hkbxpmz6yPXKspNo2tUooAwTLkq0_nq-MM7Km9sg6fNXz9Uag&usqp=CAU';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Center(
        child: FutureBuilder(
          future: loadImage(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return Image.network(
                imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              );
            }
          },
        ),
      ),
    );
  }

  Future<void> loadImage() async {
    await Future.delayed(Duration(seconds: 2));
  }
}
