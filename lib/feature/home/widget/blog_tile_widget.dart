// ignore_for_file: public_member_api_docs, inference_failure_on_instance_creation, lines_longer_than_80_chars

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/home/view/article_view.dart';
import 'package:save_disaster/product/widget/big_text.dart';
import 'package:save_disaster/product/widget/desc_text.dart';

///BlogTile widget
final class BlogTile extends StatelessWidget {
  ///BlogTile constructor
  const BlogTile({
    required this.desc,
    required this.imageUrl,
    required this.title,
    required this.url,
    super.key,
  });
  final String imageUrl;
  final String title;
  final String desc;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ArticleView(blogUrl: url)),
        );
      },
      child: Container(
        margin: context.padding.onlyBottomLow,
        child: Padding(
          padding: context.padding.low,
          child: Material(
            color: Theme.of(context).cardColor,
            elevation: context.sized.height * 0.02,
            borderRadius: context.border.normalBorderRadius,
            child: Padding(
              padding: context.padding.low,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: context.border.normalBorderRadius,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      height: context.sized.height * 0.25,
                      width: context.sized.width * 0.25,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: context.sized.width * 0.02,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: context.sized.width / 1.7,
                        child: BigText(title: title),
                      ),
                      SizedBox(
                        width: context.sized.width / 1.7,
                        child: DescText(description: desc),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
