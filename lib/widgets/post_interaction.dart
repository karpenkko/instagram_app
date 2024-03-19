import 'package:flutter/material.dart';

class PostInteraction extends StatelessWidget{

  const PostInteraction({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        SizedBox(
          width: 42,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color:Colors.black,
              size: 26,
            ),
          ),
        ),
        SizedBox(
          width: 42,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/comments.png',
              height: 24,
            ),
          ),
        ),
        SizedBox(
          width: 42,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/sent.png',
              height: 24,
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/saved.png',
                height: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}