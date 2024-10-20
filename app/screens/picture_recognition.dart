
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PictureRecognition extends StatefulWidget{
  const PictureRecognition({super.key});

  @override
  _PictureRecognition createState() => _PictureRecognition();
}

class _PictureRecognition extends State<PictureRecognition> with AutomaticKeepAliveClientMixin{

  final uri_1 = Uri.parse("https://colab.research.google.com/github/ChiuDeYuan/Melanoma_Detection/blob/main/melanoma_app.ipynb");
  final uri_2 = Uri.parse("https://github.com/ChiuDeYuan/Melanoma_Detection");

  Future<void> _web(Uri uri) async{
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication
      );
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context){
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar:PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child:AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const Text('Identify Melanoma Through Photo', style: TextStyle(fontSize:25, fontWeight: FontWeight.w300),),
            ),
        ),
        body:ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            AutoSizeText(
              textAlign: TextAlign.center,
              'How to use the model',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
              minFontSize: 15,
              maxLines: 3,
            ),
            SizedBox(height: deviceHeight/75,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: deviceWidth/100,),
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: deviceWidth/100,),
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight/75,),
            Container(
              margin: EdgeInsets.only(left: deviceWidth/6, right: deviceWidth/6),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    '1. Click the bottom below.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 1,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    '2. Run the model as instructed.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 1,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    '3. Upload your pictures.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 1,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    '4. Wait and see the result.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 1,
                  ),
                ],
              )
            ),
            SizedBox(height: deviceHeight/40,),
            Container(
              margin: EdgeInsets.only(left: deviceWidth/10, right: deviceWidth/10),
              child:Column(
                children: [
                  Image.asset('assets/detect1.png'),
                  SizedBox(height: deviceHeight/30,),
                  ElevatedButton(
                      onPressed:(){ _web(uri_1);},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'Start Detection ',
                            style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                            minFontSize: 10,
                            maxLines: 1,
                          ),
                          Icon(Icons.open_in_new_rounded)
                        ],
                      )
                  )
                ],
              ),
            ),
            SizedBox(height: deviceHeight/30,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.green[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/150,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/150,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.orange[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/30,),
            AutoSizeText(
              textAlign: TextAlign.center,
              'About the model',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
              minFontSize: 15,
              maxLines: 3,
            ),
            SizedBox(height: deviceHeight/75,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: deviceWidth/100,),
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: deviceWidth/100,),
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight/75,),
            Container(
                margin: EdgeInsets.only(left: deviceWidth/12, right: deviceWidth/15),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'The model is based on Mobile-ViT',
                      style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    SizedBox(height: deviceHeight/100,),
                    AutoSizeText(
                      textAlign: TextAlign.center,
                      'You can get source code and other informations on GitHub',
                      style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 2,
                    ),
                    SizedBox(height: deviceHeight/30,),
                    ElevatedButton(
                        onPressed:(){ _web(uri_2);},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Source Code ", style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
                            Icon(Icons.open_in_new_rounded)
                          ],
                        )
                    ),
                  ],
                )
            ),
            SizedBox(height: deviceHeight/30,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.green[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/150,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/150,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.orange[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/30,),
            AutoSizeText(
              textAlign: TextAlign.center,
              'Training metrics of the model',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.normal),
              minFontSize: 15,
              maxLines: 3,
            ),
            SizedBox(height: deviceHeight/75,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: deviceWidth/100,),
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: deviceWidth/100,),
                Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[200],
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight/75,),
            Container(
                margin: EdgeInsets.only(left: deviceWidth/12, right: deviceWidth/15),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'Test on Test set(n=1000)',
                      style:TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    SizedBox(height: deviceHeight/100,),
                    AutoSizeText(
                      'Accuracy: 89.4%',
                      style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      'Loss(categorical cross-entropy): 0.345',
                      style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      'AUC(ROC): 0.949',
                      style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    SizedBox(height: deviceHeight/75,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[200],
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: deviceWidth/100,),
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[200],
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: deviceWidth/100,),
                        Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[200],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight/75,),
                    AutoSizeText(
                      'Below is the training history',
                      style:TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                    SizedBox(height: deviceHeight/30,),
                    Image.asset('assets/model_eval.png'),
                  ],
                )
            ),
            SizedBox(height: deviceHeight/30,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.green[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/150,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.blue[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/150,),
            Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: Colors.orange[200],
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: deviceHeight/30,),
            Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: deviceWidth/10, right: deviceWidth/10),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      textAlign: TextAlign.center,
                      'The result predicted by the model is for reference only.',
                      style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 3,
                    ),
                    SizedBox(height: deviceHeight/70,),
                    AutoSizeText(
                      textAlign: TextAlign.center,
                      'Seek professional medical assistance if you need it.',
                      style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      minFontSize: 10,
                      maxLines: 3,
                    ),
                  ],
                ),
            ),
            SizedBox(height: deviceHeight/15,),
          ],
        )
    );
  }

  @override
  bool get wantKeepAlive => true;
}