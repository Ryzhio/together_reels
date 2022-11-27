import 'package:flutter/material.dart';
import 'package:together_reels/models/reel.dart';

class ReelSideActionBar extends StatelessWidget {
  const ReelSideActionBar({super.key, required this.reel});
  final double _iconSize = 28;
  final Reel reel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => {},
          icon: Icon(!reel.isLiked ? Icons.favorite : Icons.favorite_outline),
          iconSize: _iconSize,
          color: !reel.isLiked ? Colors.red : Colors.white,
        ),
        Text(
          reel.totalLikes,
          style: const TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.chat_bubble_outline),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        Text(
          reel.totalComments,
          style: const TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.send_outlined),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.more_vert_outlined),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(reel.postedBy.profileImageUrl),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
