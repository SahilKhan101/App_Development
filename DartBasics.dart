fn() {
  return "This is a basic function.";
}

void main() {
  //print(fn());

/*
  dynamic x = 'SK101';
  x = 30;
  print(x);
  
  print('Something');
  String greet = greeting();
  int age = getAge();
  print(greet);
  print(age);
*/
/*
  List names = ['SK', 'SP', 'PB'];
  names.add('AG');
  names.remove('SP');
  names.add(30);
  print(names);
*/
/*
  List<String> names = ['SK', 'SP', 'PB', 30];  //now int cannot be stored in list
  names.add('AG');
  names.remove('SP');
  names.add(30);  //adding int doesn't work in this case
  print(names);
*/

  User userOne = User('SK', 20);
  print(userOne.username);

  User userTwo = User('PB', 25);
  print(userTwo.username);

  SuperUser userThree = SuperUser('yoshi', 30);
  print(userThree.username);
  userThree.publish();
  userThree.login();
}

/*
String greeting(){
  return "hello";
}

int getAge(){
  return 20;
}
*/

String greeting() => "hello";
int getAge() => 20;

class User {
  String username = '';
  int age = 0;

  User(String username, int age) {
    this.username = username;
    this.age = age;
  }

  void login() {
    print('user is logged in');
  }
}

class SuperUser extends User {
  SuperUser(String username, int age) : super(username, age);

  void publish() {
    print('published update');
    print(this.username);
  }
}
