import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class About extends StatefulWidget{
  const About({super.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About>  with AutomaticKeepAliveClientMixin{

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
            title: const Text('About Melanoma', style: TextStyle(fontSize:25, fontWeight: FontWeight.w300),),
          ),
        ),
      body:ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          AutoSizeText(
            textAlign: TextAlign.center,
            'What is Melanoma?',
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
              margin: EdgeInsets.only(left: deviceWidth/8, right: deviceWidth/8),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'Melanoma is a kind of skin cancer.Although Melanoma only accounts for 1-2% of skin cancer cases, it is easily the most deadly type of skin cancer. It can grow rapidly over weeks or months and it may spread to other parts of the body and potentially become fatal.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/50,),
                  Container(
                    margin: EdgeInsets.only(left: deviceWidth/10, right: deviceWidth/10),
                    child:Image.asset('assets/melanoma_1.jpg'),
                  ),
                  SizedBox(height: deviceHeight/50,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'According to the American Cancer Society, melanoma has on average a 94% 5-year relative survival rate. For reference, the most common type of skin cancer, Basal Cell Carcinoma, has a 100% 5-year relative survival rate. ',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
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
            ' Key Statics for Melanoma',
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
              margin: EdgeInsets.only(left: deviceWidth/8, right: deviceWidth/8),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'Melanoma is also among one of the most common cancers in young people under 30 years old, especially in young women (#3 most diagnosed cancer among ages 25 to 39 in the United States).',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/50,),
                  Container(
                    child:Image.asset('assets/melanoma_2.jpg'),
                  ),
                  SizedBox(height: deviceHeight/50,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'Despite Melanoma\'s deadliness, it is highly curable if caught early. By spreading awareness of the symptoms of Melanoma, more cases of Melanoma can be spotted in early stages when it can be easily treated. The American Cancer Society’s estimates for melanoma in the United States for 2024 are:',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    '• About 100,640 new melanomas will be diagnosed (about 59,170 in men and 41,470 in women)',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/70,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    '• About 8,290 people are expected to die of melanoma (about 5,430 men and 2,860 women).',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
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
            'Symptoms',
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
              margin: EdgeInsets.only(left: deviceWidth/8, right: deviceWidth/8),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    ' The most important sign of potential Melanoma is a new spot on the skin or a spot that is changing in size, shape or color. A spot that looks different from all of the other spots on the skin could also be an important sign.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/50,),
                  Container(
                    margin: EdgeInsets.only(left: deviceWidth/10, right: deviceWidth/10),
                    child:Image.asset('assets/melanoma_3.jpg'),
                  ),
                  SizedBox(height: deviceHeight/50,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'One of the key rules to be on the lookout for early signs of Melanoma is called The ABCDE rule, it helps us by examining spots or moles and determining whether it is a sign of Melanoma or not.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/75,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'A. Asymmetry: One half of a hole or birthmark does not match the other.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'B. Border: The edges are irregular, ragged, notched, or blurred.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'C. Color: The color is not the same all over and may include different shades of brown or black, or sometimes with patches of pink, red, white or blue.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'D. Diameter: The spot is larger than 6 millimeters across (about 1/4 inch or the size of a pencil eraser), although Melanomas can sometimes be smaller than this.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'E. Evolving: The mole is changing in size, shape, or color.',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
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
            'Risk Factors for Melanoma',
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
              margin: EdgeInsets.only(left: deviceWidth/8, right: deviceWidth/8),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: deviceHeight/100,),
                  Image.asset('assets/melanoma_4.png'),
                  SizedBox(height: deviceHeight/50,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    'A risk factor is anything that raises your risk of getting a disease such as cancer. Risk factors include a variety of things such as personal lifestyle, age or family history.The major risk factors of Melanoma are as follows:',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/75,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    '1. UV Light Exposure',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    '2. Moles',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    '3. History of Melanoma',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    '4. Weakened Immune System',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
                  ),
                  SizedBox(height: deviceHeight/100,),
                  AutoSizeText(
                    textAlign: TextAlign.center,
                    '5. Being Older',
                    style:TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                    minFontSize: 10,
                    maxLines: 100,
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
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: deviceWidth/10, right: deviceWidth/10),
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  textAlign: TextAlign.center,
                  'The information is for reference only.',
                  style:TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  minFontSize: 10,
                  maxLines: 3,
                ),
                SizedBox(height: deviceHeight/150,),
                AutoSizeText(
                  textAlign: TextAlign.center,
                  'Seek professional medical assistance if you need it.',
                  style:TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  minFontSize: 10,
                  maxLines: 3,
                ),
                SizedBox(height: deviceHeight/150,),
                AutoSizeText(
                  textAlign: TextAlign.center,
                  'Some images in the app are from freepik.com',
                  style:TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
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
