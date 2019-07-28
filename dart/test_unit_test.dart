import "package:test/test.dart";

void main() {
  test("string and number convert", () {
    var one = int.parse('1');
    expect(one, equals(1));
    var onePointOne = double.parse('1.1');
    expect(onePointOne, equals(1.1));

    String oneAsString = 1.toString();
    expect(oneAsString, equals('1'));

    String piAsString = 3.14159.toStringAsFixed(2);
    expect(piAsString, equals('3.14'));

    var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
    expect(loudify('austin'), equals('!!! AUSTIN !!!'));

  });

  test("string operatoin", () {
    String name = 'Austin';
    expect("Hello $name", equals('Hello Austin'));
    name ='王旭';
    expect("Hello $name", equals('Hello 王旭'));

    var s1 = 'hello'
    ' world';
    expect("hello world", equals(s1));

    s1 = r'hello \n world';   //raw string
    expect(s1.contains('\\'), equals(true));
    expect(s1[7], equals('n'));

    s1 ="";
    expect(s1.isEmpty, equals(true));

  });

  test("list operatoin", () {
    var list = [1, 2, 3];
    var list2 = [0, ...list];
    expect(list2.length, equals(4));

    var list3;
    var list4 = [0, ...?list3];
    expect(list4.length, equals(1));

    var listOfInts = [1, 2, 3];
    var listOfStrings = [
      '#0',
      for (var i in listOfInts) '#$i'
    ];
    expect(listOfStrings[0], equals("#0"));
    expect(listOfStrings[1], equals("#1"));

  });

  test("set operatoin", () {
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    var elements = <String>{};
    elements.add('fluorine');
    elements.addAll(halogens);
    expect(elements.length, equals(5));

  });

  test("map operatoin", () {
    var gifts = {'first': 'partridge'};
    gifts['fourth'] = 'calling birds';
    expect(gifts.length, equals(2));
    expect(gifts['fifth'], equals(null));

  });
}
