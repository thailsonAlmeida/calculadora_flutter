import 'package:calculadora_flutter/widgets/button_custom.dart';
import 'package:flutter/material.dart';

class CalculatorBasic extends StatefulWidget {
  const CalculatorBasic({super.key});

  @override
  State<CalculatorBasic> createState() => _CalculatorBasicState();
}

class _CalculatorBasicState extends State<CalculatorBasic> {
  String screenViewNumber = '0';
  String messageError = '';
  List numbersList = [];
  List simbolList = [];

  setScreen(String number) {
    setState(() => messageError = '');
    if (number == '.') {
      screenViewNumber = screenViewNumber + number;
    } else if (screenViewNumber == '0') {
      screenViewNumber = number;
    } else {
      screenViewNumber = screenViewNumber + number;
    }
    //se depois de apertar = ao pressionar numero, zera a tela
  }

  controllerOperation(String screenViewNumber, String simbol) {
    //Conserva o valor da posição 0 do vetor e impede da lista crescer
    if (double.parse(screenViewNumber) != 0) {
      numbersList.add(screenViewNumber);
    }
    //Conserva o valor da posição 0 do vetor e impede da lista crescer
    if (simbolList.isNotEmpty) {
      simbolList.clear();
    }
    simbolList.add(simbol);
  }

  String removeNumberScreen(String screenViewNumber) {
    int newScreenViewLength = screenViewNumber.length - 1;
    String newscreenViewNumber = '';

    for (int i = 0; i < newScreenViewLength; i++) {
      newscreenViewNumber = newscreenViewNumber + screenViewNumber[i];
    }

    return newscreenViewNumber;
  }

  String calcOperation(
      List numbersList, List simbolList, String screenViewNumber) {
    double resulView;

    if (double.parse(screenViewNumber) == 0 && numbersList.isNotEmpty) {
      simbolList.clear();
      return screenViewNumber = numbersList[0];
    }

    if (simbolList.isNotEmpty) {
      switch (simbolList[0]) {
        case '+':
          resulView =
              double.parse(numbersList[0]) + double.parse(screenViewNumber);
          numbersList.clear();
          simbolList.clear();
          return resulView.toStringAsFixed(2).toString();
        case '-':
          resulView =
              double.parse(numbersList[0]) - double.parse(screenViewNumber);
          numbersList.clear();
          simbolList.clear();
          return resulView.toStringAsFixed(2).toString();
        case '*':
          resulView =
              double.parse(numbersList[0]) * double.parse(screenViewNumber);
          numbersList.clear();
          simbolList.clear();
          return resulView.toStringAsFixed(2).toString();
        case '/':
          if (double.parse(screenViewNumber) == 0) {
            return messageError = 'Não é possivel dividir por 0';
          } else if (numbersList.isEmpty) {
            return screenViewNumber = '0';
          } else {
            resulView =
                double.parse(numbersList[0]) / double.parse(screenViewNumber);
            numbersList.clear();
            simbolList.clear();
            return resulView.toStringAsFixed(2).toString();
          }
      }
    }
    return screenViewNumber;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 100),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Text(
                  messageError, //deixar texto responsivo no screen
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              //sreen
              SizedBox(
                width: double.infinity,
                height: 110,
                child: Text(
                  screenViewNumber, //deixar texto responsivo no screen
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 80),
                ),
              ),

              //keyboard
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonCustom(
                        text: 'C',
                        color: const Color.fromARGB(255, 212, 212, 212),
                        onTap: () {
                          setState(() {
                            screenViewNumber = '0';
                            messageError = '';
                            numbersList.clear();
                            simbolList.clear();
                          });
                        },
                        width: 160,
                      ),
                      ButtonCustom(
                        text: '<',
                        color: const Color.fromARGB(255, 212, 212, 212),
                        onTap: () {
                          setState(() {
                            screenViewNumber =
                                removeNumberScreen(screenViewNumber);
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '/',
                        color: Colors.orange,
                        onTap: () {
                          controllerOperation(screenViewNumber, '/');
                          screenViewNumber = '0';
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonCustom(
                        text: '7',
                        onTap: () {
                          setState(() {
                            setScreen('7');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '8',
                        onTap: () {
                          setState(() {
                            setScreen('8');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '9',
                        onTap: () {
                          setState(() {
                            setScreen('9');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: 'x',
                        color: Colors.orange,
                        onTap: () {
                          setState(() {
                            controllerOperation(screenViewNumber, '*');
                            screenViewNumber = '0';
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonCustom(
                        text: '4',
                        onTap: () {
                          setState(() {
                            setScreen('4');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '5',
                        onTap: () {
                          setState(() {
                            setScreen('5');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '6',
                        onTap: () {
                          setState(() {
                            setScreen('6');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '-',
                        color: Colors.orange,
                        onTap: () {
                          setState(() {
                            controllerOperation(screenViewNumber, '-');
                            screenViewNumber = '0';
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonCustom(
                        text: '1',
                        onTap: () {
                          setState(() {
                            setScreen('1');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '2',
                        onTap: () {
                          setState(() {
                            setScreen('2');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '3',
                        onTap: () {
                          setState(() {
                            setScreen('3');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '+',
                        color: Colors.orange,
                        onTap: () {
                          setState(() {
                            controllerOperation(screenViewNumber, '+');
                            screenViewNumber = '0';
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonCustom(
                        text: '0',
                        width: 160,
                        onTap: () {
                          setState(() {
                            setScreen('0');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: ',',
                        onTap: () {
                          setState(() {
                            setScreen('.');
                          });
                        },
                      ),
                      ButtonCustom(
                        text: '=',
                        color: Colors.orange,
                        onTap: () {
                          setState(() {
                            screenViewNumber = calcOperation(
                                numbersList, simbolList, screenViewNumber);
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
