// 1.abstract 
abstract class student{
  static String clg="MCE";
  String  name;
  String rollnum;
  int marks;
  String fees;
  String department="Computer science";
  // constructor
  student(this.name,this.rollnum,this.marks,this.fees);
  //polymorphism
  void message();
 
  void details(){
    print("Name:$name\nRoll No:$rollnum\nCollege:$clg\nDepartment:$department\nMarks:$marks\nFees Status:$fees");
  }
}

// inheritance

class Regular extends student{
  Regular(String name,String rollnum,int marks,String fees):super(name,rollnum,marks,fees);
@override
void message(){
  print("Fees Status:Maintain attendance and performance\n");
}
}

class scholarship extends student{
  scholarship(String name,String rollnum,int marks,String fees):super(name,rollnum,marks,fees);
  @override
  void message(){
    print("Fees status:Scholarship granted! Keep up the good work\n");
  }
}


void main(){
  Regular r1=Regular("Ramya", "4MC24IS104", 95,"Pending");
  r1.department="Information science";
  r1.details();
  r1.message();
  scholarship s1=scholarship("Sharanya S", "4MC24IS144", 100, "Discounted");
  s1.details();
  s1.message();
 
}



