import 'package:cached_network_image/cached_network_image.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';

class CustomCardCategories extends StatelessWidget {
  const CustomCardCategories({
    super.key,
    this.title,
    this.image,
    this.onTap,
    this.isHeight = false,
    this.isWidth = false,
    this.height,
    this.width,
    this.netWorkImage,
  });

  final String? title;
  final String? image;
  final VoidCallback? onTap;
  final bool? isHeight;
  final bool? isWidth;
  final double? height;
  final double? width;
  final String? netWorkImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15.0),
        width: isWidth == false ? 160.0 : width,
        height: isHeight == false ? 80.0 : height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0.3, 0.5),
              blurStyle: BlurStyle.solid,
              blurRadius: 5,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: theme().textTheme.displayMedium,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.zero,
                width: 90,
                height: 40,
                child: CachedNetworkImage(
                  imageUrl: "$netWorkImage",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              // child: Image.network(
              //     'https://cic.fra1.cdn.digitaloceanspaces.com/cicstaging/uploads/files/original/b8bfb2a7762649b625d58424b868a758.png'),
              // child: CachedNetworkImage(
              //   imageUrl: "$netWorkImage",
              //   imageBuilder: (context, imageProvider) => Container(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: imageProvider,
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ),
              //   placeholder: (context, url) => Center(
              //     child: Shimmer.fromColors(
              //       baseColor: Colors.grey.shade300,
              //       highlightColor: Colors.grey.shade400,
              //       child: Container(
              //         width: 150,
              //         height: 30,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              //   errorWidget: (context, url, error) => const Icon(Icons.error),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
