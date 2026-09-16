import 'dart:io';

int checkVal(int? num) {
  if (num == null)
    return 0; 

  return num.abs(); 
}
void main() {

  /**
   * instead writing if else 
   *
   */
// ??????????????????s
    // int? input; 
    // input ??= "error"; 

    // print(input);
    // var x =double.parse(stdin.readLineSync()!);
  // var y =double.tryParse(stdin.readLineSync()!) ?? 0.0;
  // print('enter y');
  /**
   * assertion operation 
   */

  // int? maybeVal = 42;
  // int val = maybeVal!;
  // print(val);

  // print(checkVal(5)); 
  // print(checkVal(0)); 


  /*
  null safety 
  */

  // list can be null and value of int can be null
  // List<int?>? nums = [null]; 

  // int? length = nums?.length; 
  // print(length);// 1 where null is a item of the list 
  
  // null aware access it will say where the problem
  // prevents from crashing
  // var val;
  // print(val.toLowerCase()); // will crash
  // print(val?.toLowerCase()?.toUpperCase()); // null
  // print(val?.toLowerCase?.toUpperCase()); 

  /**
   * nullable operator
   * nullable variable 
   * int? a; allow it to be null  
   * 
   */

  // String? name = null;  // Use String ? to allow null 
  // String displayName = name ?? "Guest"; 
  // print(displayName); // Output: Guest 

  // int? x = 10; 
  // int? y = null; 

  // int result = y ?? x; 

  // print(result);


}
