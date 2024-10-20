import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with AutomaticKeepAliveClientMixin{

  int _currentQuestionIndex = 0;
  bool _finishQuiz = false;
  late List<int?> _answers;
  int _result = 0;

  final List<Map<String, Object>> _questions = [
    {
      'title': 'Q1',
      'question': 'Are you frequently exposed to UV rays?',
      'description': 'Exposure to higher levels of UV rays are said to play a major role in causing Melanoma.',
      'photo': 'assets/q1.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q2',
      'question': 'Do you have many moles?',
      'description': 'Someone who has many moles is more likely to develop Melanoma. A person with more than 50 moles is more likely to develop Melanoma.',
      'photo': 'assets/q2.jpg',
      'options':['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q3',
      'question': 'Do you have elevated moles?',
      'description': 'The mole is raised compared to nearby skins.',
      'photo': 'assets/q3.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q4',
      'question': 'Do you have firm moles?',
      'description': 'The mole is firm to touch, giving resistance when pressed.',
      'photo': 'assets/q4.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q5',
      'question': 'Do you have asymmetrical moles?',
      'description': 'The shape or color of moles is asymmetrical.',
      'photo': 'assets/q5.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q6',
      'question': 'Are there any abnormalities around the edges of your moles?',
      'description': 'The edges are irregular, ragged, notched, or blurred. Redness or a new swelling beyond the border of the mole.',
      'photo': 'assets/q6.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q7',
      'question': 'Is your mole unusual in diameter?',
      'description': 'The spot is larger than 6 millimeters across (about 1/4 inch or the size of a pencil eraser), although Melanomas can sometimes be smaller than this.',
      'photo': 'assets/q7.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q8',
      'question': 'Do your moles change in the surface?',
      'description': 'There are scaliness, oozing, bleeding, or the appearance of a lump or bump.',
      'photo': 'assets/q8.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q9',
      'question': 'Do you experience changes in sensation in the affected area?',
      'description': 'Such as itching, tenderness, or pain.',
      'photo': 'assets/q9.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
    {
      'title': 'Q10',
      'question': 'Are there any dark vertical lines on your nails?',
      'description': 'It looks like the picture below.',
      'photo': 'assets/q10.jpg',
      'options': ['Yes', 'No', 'Not sure'],
      'score': [2,0,1],
    },
  ];

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      for (var answer in _answers) {_result += answer as int;}
      setState(() {
        _finishQuiz = true;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _answers = List.filled(_questions.length, null);
      _currentQuestionIndex = 0;
      _finishQuiz = false;
      _result = 0;
    });
  }

  @override
  void initState(){
    super.initState();
    _answers = List.filled(_questions.length, null);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final currentQuestion = _questions[_currentQuestionIndex];
    final options = currentQuestion['options'] as List<String>;
    final scores = currentQuestion['score'] as List<int>;

    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    var lineWidth = deviceWidth /1.15; // screen width - 2 * padding
    var space = lineWidth / _questions.length; //space between dots

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child:AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut,
            color: _finishQuiz ? (_result >= 8 ? Colors.red[100]: (_result <= 4 ? Colors.green[100] : Colors.orange[100])) : Colors.transparent,
            child:AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const Text('Melanoma Self-diagnosis Form', style: TextStyle(fontSize:25, fontWeight: FontWeight.w300),),
            ),
          )
      ),
      body: ListView(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut,
            color: _finishQuiz ? (_result >= 8 ? Colors.red[100]: (_result <= 4 ? Colors.green[100] : Colors.orange[100])) : Colors.transparent,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: 2.0,
                  width: lineWidth,
                  color: _finishQuiz ? (_result >= 8 ? Colors.red: (_result <= 4 ? Colors.green : Colors.orange)) : Colors.grey,
                ),
                AnimatedContainer(
                  duration: _finishQuiz ? const Duration(milliseconds: 1000) : const Duration(milliseconds: 450),
                  height: 2.0,
                  width: _finishQuiz ? lineWidth : space*(_currentQuestionIndex) + space/4,
                  color: _finishQuiz ? (_result >= 8 ? Colors.red: (_result <= 4 ? Colors.green : Colors.orange)) : Colors.blue,
                  curve: Curves.fastEaseInToSlowEaseOut,
                ),
                const SizedBox(height: 4.0),
                //circles
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _questions
                      .asMap()
                      .map((i, point) => MapEntry(
                    i,
                    SizedBox(
                      width: space,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.fastEaseInToSlowEaseOut,
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1.5,
                                    color: _finishQuiz
                                        ? Colors.transparent
                                        : i == _currentQuestionIndex
                                        ? Colors.blue : Colors.transparent,
                                  ),
                                ),
                                child: Center(
                                  child: AnimatedContainer(
                                    duration: _finishQuiz ? const Duration(milliseconds: 400) : const Duration(milliseconds: 200),
                                    curve: Curves.fastEaseInToSlowEaseOut,
                                    height: 20.0,
                                    width: 20.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: i < _currentQuestionIndex +1
                                          ? (_finishQuiz ? (_result >= 8 ? Colors.red: (_result <= 4 ? Colors.green : Colors.orange)) : Colors.blue)
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              if (i < _currentQuestionIndex || _finishQuiz)
                                const SizedBox(
                                  height: 30.0,
                                  width: 30.0,
                                  child: Center(
                                    child: Icon(
                                      Icons.check,
                                      size: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          Text(
                            point['title'].toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: i < _currentQuestionIndex +1
                                  ? (_finishQuiz ? (_result >= 8 ? Colors.red: (_result <= 4 ? Colors.green : Colors.orange)) : Colors.blue)
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
                      .values
                      .toList(),
                ),
                const SizedBox(height: 20),

                _finishQuiz
                    ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          reverseDuration: const Duration(milliseconds: 100),
                          switchInCurve: Curves.easeInOutCubicEmphasized,
                          switchOutCurve: Curves.easeInOutCubicEmphasized,
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              key:  ValueKey<int>(_currentQuestionIndex),
                              children:[
                                SizedBox(height: deviceHeight/17),
                                Text(
                                  _result >= 8 ? 'Dangerous' : (_result <= 4 ? 'Fine' : 'Doubtful'),
                                  style: const TextStyle(fontSize: 40),
                                ),
                                SizedBox(height: deviceHeight/50),
                                Text(
                                  _result >= 8 ? 'You\'d better seek medical advice' : (_result <= 4 ? 'Everything is good.' : 'Pay more attention on it.'),
                                  style: const TextStyle(fontSize: 20),
                                ),
                                SizedBox(height: deviceHeight/3.2),
                              ]
                          )
                      ),
                      const SizedBox(height: 70),
                      ElevatedButton(
                        onPressed: _resetQuiz,
                        child: const Text('reset quiz'),
                      ),
                    ]
                )

                    : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          reverseDuration: const Duration(milliseconds: 100),
                          switchInCurve: Curves.easeInOutCubicEmphasized,
                          switchOutCurve: Curves.easeInOutCubicEmphasized,
                          child:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              key:  ValueKey<int>(_currentQuestionIndex),
                              children:[
                                Container(
                                    margin: EdgeInsets.symmetric(horizontal: deviceWidth/25),
                                    width: deviceWidth,
                                    height: deviceHeight/6,
                                    alignment: Alignment.center,
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        AutoSizeText(
                                          textAlign: TextAlign.center,
                                          currentQuestion['question'] as String,
                                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                          minFontSize: 15,
                                          maxLines: 3,
                                        ),
                                        SizedBox(height: deviceHeight/70),
                                        AutoSizeText(
                                          textAlign: TextAlign.center,
                                          currentQuestion['description'] as String,
                                          style: TextStyle(fontSize: 15),
                                          minFontSize: 5,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    )
                                ),
                                SizedBox(height: deviceHeight/50),
                                Image.asset(currentQuestion['photo'] as String, height: deviceHeight/3.5,),
                                SizedBox(height: deviceHeight/50),
                              ]
                          )
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: deviceWidth/18),
                        child: Column(
                            children:[
                              Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: options.asMap().entries.map((entry) {
                                  int idx = entry.key;
                                  String option = entry.value;

                                  return IntrinsicWidth(
                                    child: RadioListTile<int?>(
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                                      title: Text(option),
                                      value: scores[idx],
                                      groupValue: _answers[_currentQuestionIndex],
                                      onChanged: (value) {
                                        setState(() {
                                          _answers[_currentQuestionIndex] = value;
                                        });
                                      },
                                    ),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: _answers[_currentQuestionIndex] != null
                                    ? _nextQuestion
                                    : null,
                                child: Text(_currentQuestionIndex < _questions.length - 1
                                    ? 'Next'
                                    : 'Finish'),
                              ),
                            ]
                        ),
                      ),
                    ]
                )
              ],
            ),
          ),
        ],
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}