import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akash Biswas',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LinksLandingPage(),
    );
  }
}

class LinksLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                'https://lh3.googleusercontent.com/fkftnzFNETmtxplpAYrJ_faKMBatqMXauipIZRYB7eU3RCEpIh_RFRmfnVt8DB7J9VgA9ABhHVHwZgZInRyeSDAp2XsN1q4bhzHG1gJcfXz4w-GzqL0pwBatYyFwGd7Q8bvCgP2FgXKry2T4A43Hp80xQ-1U_99RjHd0n74po-ja3qAz_nVi8Iuza4J4rA-jik5y7z_OgO_iXoFj-69JxsLXvEtEh7NbiK39YDk9HRR25T1ZZHWgJCe-HdI5oMYF3Y1zgCjnXlWEtB5oBuh-drMiK5KTGB7U6YYyPV3uYGbsFRfOVMRdqUyug2Cia5T8QO_aG0MwNNf2dm7RldCEu7_vfiig28eq9dWElnSVQVFvlJqk1LeXCbsL1CLxvHWEpTTSybSDQSXZVg6QjuumTm3gpCCjeFmTR4sM-RAOBRKpYScYJqFUMajn8usEG5HaYQGmKGCCGb_AduS8WSMr79FPytBtVL4cIV-l_RLZblBN2G9UvephGRSYiJf5lDOA2LLDoexT7TdjRTYGlfShqQEQtEbx-B0SEfcb1k8GZ7VRAypsfuXRKuLEHP7Yw8nFEySPWqo3hr92eH09aAoilNgDGap4aEomNrbFg-rKVJfVXTy0OkvHNJSZL5_mpSzG8LNXBXs1GJ3kDNB7jZPl-dGCamQfCUPP_RqCRjrc5ltLG1wdM0OjGtp0ppZt=w640-h853-no?authuser=0',
            height: 96,
            width: 96,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text('@aakashbiswas1337'),
          ),
          SizedBox(
            height: 29,
          ),
          LinkButton(
            title: 'Youtube',
            url:
                "https://www.youtube.com/channel/UClXoHnhs5vi9mbBFmQSwZug?view_as=subscriber",
          ),
          LinkButton(
            title: 'Instagram',
            url: "https://www.instagram.com/akashbiswas1337/",
          ),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Made with 🙄 Flutter',
                style: TextStyle(
                  fontFamily: 'Comic Sans MS',
                  fontSize: 24,
                ),
              ),
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://www.codemate.com/wp-content/uploads/2016/02/flutter-logo-round.png',
                height: 25,
                width: 25,
              )
            ],
          ),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  const LinkButton({
    Key key,
    @required this.title,
    @required this.url,
  }) : super(key: key);
  final String title;
  final String url;
  @override
  Widget build(BuildContext context) {
    final smallWidth = MediaQuery.of(context).size.width * 0.90;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
          width: smallWidth,
          child: FlatButton(
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            onPressed: () => launch(url),
            child: Text(
              '$title',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          )),
    );
  }
}
