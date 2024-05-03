import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          clipBehavior: Clip.antiAlias,
          child: Container(
            width: 250,
            height: 400,
            child: Image.network(
              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
