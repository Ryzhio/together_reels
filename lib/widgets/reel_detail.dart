import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:marquee/marquee.dart';
import 'package:together_reels/models/reel.dart';

class ReelDetail extends StatelessWidget {
  const ReelDetail({super.key, required this.reel});
  final Reel reel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 12,
          title: Text(
            '${reel.postedBy.username} • Seguir',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
          leading: CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage(reel.postedBy.profileImageUrl),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ExpandableText(
            reel.caption,
            textAlign: TextAlign.justify,
            style: const TextStyle(
                fontSize: 12.5,
                color: Colors.white,
                fontWeight: FontWeight.w400),
            expandText: 'more',
            collapseText: 'less',
            expandOnTextTap: true,
            collapseOnTextTap: true,
            maxLines: 1,
            linkColor: Colors.grey,
          ),
        ),
        ListTile(
          dense: true,
          minLeadingWidth: 0,
          horizontalTitleGap: 5,
          title: reel.isTagged
              ? Row(
                  children: [
                    Container(
                      height: 20,
                      width: 125,
                      child: Marquee(
                        text: '${reel.audioTitle} • ',
                        scrollAxis: Axis.horizontal,
                        velocity: 10,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        'Lion King',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )
              : Text(
                  reel.audioTitle,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
          leading: const Icon(
            Icons.graphic_eq_outlined,
            size: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
