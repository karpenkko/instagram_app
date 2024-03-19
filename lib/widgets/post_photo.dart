import 'package:flutter/material.dart';

class PostPhoto extends StatelessWidget{
  final String photo;

  const PostPhoto({
    super.key,
    required this.photo
  });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/$photo',
        fit: BoxFit.cover,
      ),
    );
  }
}