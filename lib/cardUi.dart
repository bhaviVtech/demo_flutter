import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardUi extends StatefulWidget {
  const CardUi({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CardUiState();
  }
}

class CardUiState extends State<CardUi> {
  bool valuefirst = false;
  bool valueTerms = false;
  var _formKey = new GlobalKey<FormState>();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expirationDateController =
      TextEditingController();
  final TextEditingController _cvcController = TextEditingController();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expirationDateController.dispose();
    _cvcController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Payment"),
        ),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.infinity,
              height: 400,
              margin: const EdgeInsets.all(11.0),
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: const BorderRadius.all(Radius.circular(7)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Payment Option",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        value: valuefirst,
                        onChanged: (bool? value) {
                          setState(() {
                            valuefirst = value!;
                          });
                        },
                      ),
                      const Text(
                        "Pay Through",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(11.0),
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: const BorderRadius.all(Radius.circular(7)),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: TextFormField(
                            controller: _cardNumberController,
                            keyboardType: TextInputType.number,
                            maxLength: 19,
                            style: TextStyle(fontSize: 13),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              CardNumberFormatter(),
                            ],
                            validator: CardUtils.validateCardNum,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Card Number',
                                hintStyle: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.w800),
                                counter: SizedBox.shrink()),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _expirationDateController,
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            style: TextStyle(fontSize: 13),
                            validator: CardUtils.validateDate,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              DateFormatter(),
                            ],
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w800),
                                hintText: 'MM/YY',
                                counter: SizedBox.shrink()),
                          ),
                        ),
                        SizedBox(
                          width: 65,
                          child: TextFormField(
                            controller: _cvcController,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontSize: 13),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(4),
                            ],
                            validator: CardUtils.validateCVV,
                            decoration: const InputDecoration(
                                hintText: 'CVC',
                                hintStyle: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w800),
                                border: InputBorder.none,
                                counter: SizedBox.shrink()),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Powered by STRIPE",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        value: valueTerms,
                        onChanged: (bool? value) {
                          setState(() {
                            valueTerms = value!;
                          });
                        },
                      ),
                      const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gradient: LinearGradient(
                            colors: [Colors.black12, Colors.black],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                          ),
                        ),
                        child: FlatButton(
                          child: const Text(
                            'Back',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.blue.shade900],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                          ),
                        ),
                        child: FlatButton(
                          onPressed: _validateInputs,
                          child: const Text(
                            'Pay Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void _validateInputs() {
    final FormState form = _formKey.currentState!;
    if (!form.validate()) {
      setState(() {
        //_autoValidateMode = AutovalidateMode.always; // Start validating on every change.
      });
      // _showInSnackBar('Please fix the errors in red before submitting.');
      print('Please fix the errors in red before submitting.');
    } else {
      form.save();
      print("valid");
      // Encrypt and send send payment details to payment gateway
      //_showInSnackBar('Payment card is valid');
    }
  }
}

class DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != text.length) {
        buffer.write('/');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: TextSelection.collapsed(offset: string.length));
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

class CardUtils {
  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return Strings.fieldReq;
    }

    if (value.length < 3 || value.length > 4) {
      return "CVV is invalid";
    }
    return null;
  }

  static String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return Strings.fieldReq;
    }

    int year;
    int month;
    // The value contains a forward slash if the month and year has been
    // entered.
    if (value.contains(new RegExp(r'(/)'))) {
      var split = value.split(new RegExp(r'(/)'));
      // The value before the slash is the month while the value to right of
      // it is the year.
      month = int.parse(split[0]);
      year = int.parse(split[1]);
    } else {
      // Only the month was entered
      month = int.parse(value.substring(0, (value.length)));
      year = -1; // Lets use an invalid year intentionally
    }

    if ((month < 1) || (month > 12)) {
      // A valid month is between 1 (January) and 12 (December)
      return 'Expiry month is invalid';
    }

    var fourDigitsYear = convertYearTo4Digits(year);
    if ((fourDigitsYear < 1) || (fourDigitsYear > 2099)) {
      // We are assuming a valid should be between 1 and 2099.
      // Note that, it's valid doesn't mean that it has not expired.
      return 'Expiry year is invalid';
    }

    if (!hasDateExpired(month, year)) {
      return "Card has expired";
    }
    return null;
  }

  /// Convert the two-digit year to four-digit year if necessary
  static int convertYearTo4Digits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static bool hasDateExpired(int month, int year) {
    return isNotExpired(year, month);
  }

  static bool isNotExpired(int year, int month) {
    // It has not expired if both the year and date has not passed
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }

  static List<int> getExpiryDate(String value) {
    var split = value.split(new RegExp(r'(/)'));
    return [int.parse(split[0]), int.parse(split[1])];
  }

  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    // The month has passed if:
    // 1. The year is in the past. In that case, we just assume that the month
    // has passed
    // 2. Card's month (plus another month) is more than current month.
    return hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int fourDigitsYear = convertYearTo4Digits(year);
    var now = DateTime.now();
    // The year has passed if the year we are currently is more than card's
    // year
    return fourDigitsYear < now.year;
  }

  static String getCleanedNumber(String text) {
    RegExp regExp = new RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  /// With the card number with Luhn Algorithm
  /// https://en.wikipedia.org/wiki/Luhn_algorithm
  static String? validateCardNum(String? input) {
    if (input == null || input.isEmpty) {
      return Strings.fieldReq;
    }

    input = getCleanedNumber(input);

    if (input.length < 8) {
      return Strings.numberIsInvalid;
    }

    int sum = 0;
    int length = input.length;
    for (var i = 0; i < length; i++) {
      // get digits in reverse order
      int digit = int.parse(input[length - i - 1]);

      // every 2nd number multiply with 2
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 == 0) {
      return null;
    }

    return Strings.numberIsInvalid;
  }
}

class Strings {
  static const String appName = 'Payment Card Demo';
  static const String fieldReq = 'This field is required';
  static const String numberIsInvalid = 'Card is invalid';
  static const String pay = 'Validate';
}
