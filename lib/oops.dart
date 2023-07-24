void main(){
Human obj=Human();
print(obj.name);
print(obj.eat());
Human obj2= Human();
obj2.name="sudais";
print(obj.name);
print(obj2.name);
}
login(){}
register(){}
class Human{
  String name='bilal';
  String age='100';
  eat(){print("hello");}
  sleep(){}
}