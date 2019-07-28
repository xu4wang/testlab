
class TodoItem extends Comparable {
  int id;
  final String name;
  bool isComplete;

  TodoItem({this.name, this.isComplete = false}); //optional parameter name and isComplete

  TodoItem.fromMap(Map<String, dynamic> map)
  : id = map["id"],
    name = map["name"],
    isComplete = map["isComplete"] == 1;

  @override                   //override Comparable compareTo method
  int compareTo(other) {
    if (this.isComplete && !other.isComplete) {
      return 1;
    } else if (!this.isComplete && other.isComplete) {
      return -1;
    } else {
      return this.id.compareTo(other.id);
    }
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      "name": name,
      "isComplete": isComplete ? 1 : 0
    };
    // Allow for auto-increment
    if (id != null) {
      map["id"] = id;
    }
    return map;
  }
}


/*  Named constructor
 *
 * class Employee {
  int empID;
  String empName;
  String empDept;

  Employee.ID(this.empID); // Named Constructor Creation

  Employee.name(this.empName);

  Employee.department(this.empDept);
}

main() {
  var myEmployee01 = new Employee.ID(15);
  var myEmployee02 = new Employee.department("Testing");
  var myEmployee03 = new Employee.name("Ashu");

  print(myEmployee01.empID);
  print(myEmployee02.empDept);
  print(myEmployee03.empName);
}
 *
 *
 */
