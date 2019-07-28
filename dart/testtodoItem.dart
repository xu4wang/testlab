import "package:test/test.dart";
import "todoItem.dart";

void main() {
  test("todoItem Create", () {
    var t = TodoItem(name:"Name");
    expect(t.name, equals('Name'));
    expect(t.isComplete, equals(false));
    t = TodoItem(name:"Name",isComplete:true);
    expect(t.isComplete, equals(true));
  });
  test("todoItem Create from Map", () {
    var m = {'name':"Name", 'isComplete':1};
    var t = TodoItem.fromMap(m);
    expect(t.name, equals('Name'));
    expect(t.isComplete, equals(true));
    var m2 = t.toMap();
    expect(m2['name'], equals('Name'));
    expect(m2['isComplete'], equals(1));

  });

  test("todoItem compare", () {
    var m = {'name':"Name", 'isComplete':1};
    var t1 = TodoItem.fromMap(m);
    var m2 = {'name':"Name", 'isComplete':0};
    var t2 = TodoItem.fromMap(m2);

    expect(t2.compareTo(t1), equals(-1));
  });

}
