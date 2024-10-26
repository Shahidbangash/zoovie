import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:video_player/video_player.dart';
import 'package:zoovie/component/custom_like_button.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/const/resource.dart';

class VideoPostComponent extends StatefulWidget {
  const VideoPostComponent({
    super.key,
    this.videoPath,
    this.profileImageUrl,
    this.userName = 'User Name',
    this.location = 'Location',
    this.timestamp = 'Just now',
    this.caption = 'Caption goes here...',
  });

  final String? videoPath;
  final String? profileImageUrl;
  final String userName;
  final String location;
  final String timestamp;
  final String caption;

  @override
  VideoPostComponentState createState() => VideoPostComponentState();
}

class VideoPostComponentState extends State<VideoPostComponent> {
  late VideoPlayerController _controller;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      widget.videoPath ?? R.ASSETS_DRAGON_MP4,
    )..initialize().then((_) {
        setState(() {});
        _controller.setLooping(true);
      });

    // Add listener to update play state
    _controller.addListener(() {
      setState(() {
        isPlaying = _controller.value.isPlaying;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          if (_controller.value.isInitialized)
            SizedBox(
              height: double.infinity,
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            )
          else
            const Center(child: CircularProgressIndicator()),

          // Centered Play/Pause Button
          Center(
            child: GestureDetector(
              onTap: _togglePlayPause,
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
                size: 64,
              ),
            ),
          ),

          // Column for profile, caption, and other UI elements
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(
                              widget.profileImageUrl ??
                                  'https://randomuser.me/api/portraits/men/1.jpg',
                            ),
                            radius: 24,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.userName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '${widget.timestamp} · ${widget.location}',
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          // const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text('Connect'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.caption,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Positioned for icons
          Positioned(
            right: 16,
            bottom: 80.h,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(
                  0.5,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: const Column(
                children: [
                  ShareComponent(),
                  ShareComponent(
                    // icon: Icon(
                    //   Icons.comment,
                    //   color: Colors.white,
                    //   size: 25,
                    // ),
                    icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedComment01,
                      color: AppColor.whiteColor,
                    ),

                    title: '2.5k',
                  ),
                  ShareComponent(
                    title: 'Share',
                    icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedShare05,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  ShareComponent(
                    icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedDiamond02,
                      color: AppColor.whiteColor,
                    ),
                    title: 'Vip',
                  ),
                ],
              ),
            ),
          ),

          // Linear Progress Indicator
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: LinearProgressIndicator(
              value: _controller.value.isInitialized
                  ? _controller.value.position.inSeconds /
                      _controller.value.duration.inSeconds
                  : 0.0,
              backgroundColor: Colors.white30,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

class ShareComponent extends StatelessWidget {
  const ShareComponent({
    super.key,
    this.icon,
    this.title,
  });

  final Widget? icon;

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon ?? const CustomLikeButton(),
        SizedBox(
          height: 6.h,
        ),
        Text(
          title ?? '10.2k',
          style: GoogleFonts.montserrat(
            color: AppColor.whiteColor,
            fontSize: 10,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
