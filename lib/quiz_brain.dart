import 'questions.dart';

int _questionNumber = 0;
class QuizBrain {
final List<Question> _questionSource = [
  Question('The Great Wall of China is visible from space.', false),
  Question('The human body has four lungs.', false),
  Question('The Earth has two moons.', false),
  Question('All cacti are native to the Americas.', true),
  Question('The Statue of Liberty was a gift from France to the United States.', true),
  Question('The Great Pyramid of Giza is the oldest of the Seven Wonders of the Ancient World.', true),
  Question('Hawaii is the only U.S. state that grows coffee.', false),
  Question('The planet Neptune has rings.', true),
  Question('The country of Monaco is larger than Vatican City.', true),
  Question('Bats are blind.', false),
  Question('The Amazon River is the longest river in the world.', false),
  Question('All the cells in a human body have the same DNA.', true),
  Question('The country of Peru is located in South America.', true),
  Question('The Great Barrier Reef is the largest living structure on Earth.', true),
  Question('Mount Everest is the highest mountain in the world.', true),
  Question('The country of Japan is made up of over 6,800 islands.', true),

];

void crashCheck ()
{
  if(_questionNumber < _questionSource.length -1  )
    {
      _questionNumber++;
    }
  print('Question Number $_questionNumber ');
}

  String setQuestionText (){
    return _questionSource[_questionNumber].question;
  }
  bool getQuestionText (){
    return _questionSource[_questionNumber].answer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionSource.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
  void reset() {
    _questionNumber = 0;
  }
}

