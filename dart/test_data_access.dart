import "package:test/test.dart";
import "dataAccess.dart";
import "todoItem.dart";

void main() {
  test("open", () {
    var d = DataAccess();
    d.open();
    var l = d.getTodoItems();
    expect(l.length, equals(3));
  });
  test("insert", () {
    var d = DataAccess();
    d.open();
    var l = d.getTodoItems();
    expect(l.length, equals(3));
  });
}
