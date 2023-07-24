import 'dart:io';
var credit;
var istrue=true;
var history=[];
void main(){
  while(istrue){
  print("enter your id");

  var id=stdin.readLineSync();
  print("enter your password");
  var pass=stdin.readLineSync();

  var inp;
  var idpass= [{"email":"sudaiskhalid119@gmail.com","password":"@sudais12"},{"email":"khalidahmed12@gmail.com","password":"khalid12"},{"email":"ahmedsiddique@gmail.com","password":"ahmedsiddique12"}];

  for(var creden in idpass){
    if(creden["email"]==id&& creden["password"]==pass){
credit=creden["email"];
        print("you are welcome");
        menu();




      break;
      }

    else if(inp=="4") {
        istrue = false;
        logoutHistory();
        print("please enter credentials");
      }

    }
  logout();
  }
}

var inp;
var clear=[];
menu(){

  print("1 Issue book");
  print("2 View clearance ");
  print("3 Check Subjects");
  print("4 exit");
  print("please enter your choice");
  inp=stdin.readLineSync();
  if(inp=='1'){
    issuebook();
  }else if(inp=='2'){
      clearance();
  }else if(inp=='3'){
    issuebook();
  }

}
issuebook(){
  print("1 chemistry");
  print("2 physics");
  print("3 Maths");
  print("Which department do you want");
  var deptno=stdin.readLineSync();
  if(deptno=='1'){
    chemistry();
  }else if(deptno=='2'){
    physics();
  }else if(deptno=='3'){
    maths();
  }


}
chemistry(){
  var perio="periodic table";
  var stuff="Stuff maters";
  var Mole="Molecules";
  var issuedbooks=[];
  print("1 Periodic table");
  print("2 Stuff maters");
  print("3 Molecules");
  print("Type number to isse book");
  var v=stdin.readLineSync();
  print("book issued");
  if(v=='1'){
    issuedbooks.add(perio);

  }else if(v=='2'){
    issuedbooks.add(stuff);
  }else if(v=='3'){
    issuedbooks.add(Mole);
  }
  print("Issued books");
  print(issuedbooks);
  print("=============Add clearance status");
  print("Book name");
  var name=stdin.readLineSync();
  print("Enter fees");
  var fee=stdin.readLineSync();
  print("Over due");
  var over= stdin.readLineSync();
  var pena;
  if(over=="yes"){
    pena=500;
  }else {
    pena=0;
  }

  print("====================Book status=============");
  print(name);
  print(fee);
  print(over);
  print(pena);
  clear.add(name);
  clear.add(fee);
  clear.add(over);
  clear.add(pena);
  print("press 1 for back");
  var num=stdin.readLineSync();
  if(num=='1'){
    menu();
  }else{
    istrue=false;
  }
  logout();
}
physics(){
  var book1="A brief history of time";
  var book2="Seven Brief Lessons on Physics";
  var book3="The Feynman Lectures on Physics";
  var issuedbooks=[];
  print("1 A brief history of time");
  print("2 Seven Brief Lessons on Physics");
  print("3 The Feynman Lectures on Physics");
  print("Type number to isse book");
  var v=stdin.readLineSync();
  print("book issued");
  if(v=='1'){
    issuedbooks.add(book1);

  }else if(v=='2'){
    issuedbooks.add(book2);
  }else if(v=='3'){
    issuedbooks.add(book3);
  }
  print("Issued books");
  print(issuedbooks);
  print("=============Add clearance status");
  print("Book name");
  var name=stdin.readLineSync();
  print("Enter fees");
  var fee=stdin.readLineSync();
  print("Over due");
  var over= stdin.readLineSync();
  var pena;
  if(over=="yes"){
    pena=500;
  }else {
    pena=0;
  }

  print("====================Book status=============");
  print(name);
  print(fee);
  print(over);
  print(pena);
  clear.add(name);
  clear.add(fee);
  clear.add(over);
  clear.add(pena);
  print("press 1 for back");
  var num=stdin.readLineSync();
  if(num=='1'){
    menu();
  }else{
    istrue=false;
  }
  logout();
}
maths(){
  var book1="A Mind For Numbers";
  var book2="The Princeton Companion to Mathematics";
  var book3="How Not to Be Wrong";
  var issuedbooks=[];
  print("1 A Mind For Numbers");
  print("2 The Princeton Companion to Mathematics");
  print("3 How Not to Be Wrong");
  print("Type number to isse book");
  var v=stdin.readLineSync();
  print("book issued");
  if(v=='1'){
    issuedbooks.add(book1);

  }else if(v=='2'){
    issuedbooks.add(book2);
  }else if(v=='3'){
    issuedbooks.add(book3);
  }
  print("Issued books");
  print(issuedbooks);
  print("=============Add clearance status");
  print("Book name");
  var name=stdin.readLineSync();
  print("Enter fees");
  var fee=stdin.readLineSync();
  print("Over due");
  var over= stdin.readLineSync();
  var pena;
  if(over=="yes"){
     pena=500;
  }else {
    pena=0;
  }

  print("====================Book status=============");
  print(name);
  print(fee);
  print(over);
  print(pena);
  clear.add(name);
  clear.add(fee);
  clear.add(over);
  clear.add(pena);
  print("press 1 for back");
  var num=stdin.readLineSync();
  if(num=='1'){
    menu();
  }else{
    istrue=false;
  }
  logout();
}
clearance(){
  if(clear.isEmpty){
    print("No clearance found");
    if(num=='1'){
      menu();
    }else{
      istrue=false;
    }
  }else{
    print(clear);
  }
  print("Enter status");
  var status=stdin.readLineSync();
  if(status=='cleared'|| status=="clear"||status=="ok"){
    clear.clear();
  }else{
    print("status not cleared");
    var status="Not cleared";
    clear.add(status);
    if(num=='1'){
      menu();
    }else{
      istrue=false;
    }
  }
  logout();

}
logoutHistory(){
  history.add(credit);
  print(credit);
}
logout(){
  print("Do you want to logout?");
  var logout=stdin.readLineSync();
  if(logout=="yes"){
    istrue=false;
    logoutHistory();
  }else if(logout=="no"){
    menu();
  }else{
    print("please enter a valid value");
  }
}