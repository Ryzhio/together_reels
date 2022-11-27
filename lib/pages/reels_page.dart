import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together_reels/_mock_data/mock.dart';
import 'package:together_reels/widgets/reel_side_action_bar.dart';
import 'package:together_reels/widgets/reel_detail.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Togeels',
          style: GoogleFonts.syneMono(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.photo_camera_front_outlined),
            color: Colors.white,
          )
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: reels.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(reels[index].imageUrl),
                ),
              ),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.3),
                            Colors.transparent
                          ],
                          begin: const Alignment(0, -0.75),
                          end: const Alignment(0, -0.1),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.3),
                            Colors.transparent
                          ],
                          end: const Alignment(0, -0.75),
                          begin: const Alignment(0, -0.1),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              flex: 16,
                              child: ReelDetail(
                                reel: reels[index],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: ReelSideActionBar(
                                reel: reels[index],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
