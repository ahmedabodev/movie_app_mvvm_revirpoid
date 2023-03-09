import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_revirpoid/core/utils/assets.dart';
import 'package:mvvm_revirpoid/core/utils/const.dart';
import 'package:mvvm_revirpoid/core/utils/style.dart';

class BestSellerWidget extends StatelessWidget {
  final String image;
  final String name;
  final dynamic vote;
  final dynamic count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
      child: SizedBox(
        height: 130,
        child: Row(

          children: [
            SizedBox(
              child: AspectRatio(
                aspectRatio: 2.7/4,
                child: CachedNetworkImage(
                  imageUrl: strings.imgsor+image,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                  errorWidget: (context, url, error){
                    return Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png');
                  },

                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child:  Text(name,style: Styles.textStyleGT,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    Row(
                      children:  [
                        const Icon(Icons.star,color: Color(0xffFFDD4F),),
                        Text(vote.toString(),style: Styles.textStyle16,),
                        const  SizedBox(width: 10,),
                          Text('($count)',style: Styles.textStyle12,),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  const BestSellerWidget({
    required this.image,
    required this.name,
    required this.vote,
    required this.count,
  });
}
