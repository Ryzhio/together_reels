import 'package:together_reels/models/user.dart';

class Reel {
  final User postedBy;
  final String imageUrl;
  final String audioTitle;
  final String caption;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;
  final bool isTagged;

  Reel(
    this.postedBy,
    this.imageUrl,
    this.audioTitle,
    this.caption,
    this.totalLikes,
    this.totalComments,
    this.isLiked,
    this.isTagged,
  );
}
