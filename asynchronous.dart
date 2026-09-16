/**
 * 2 classes:
 * Stream: 
 * Future: something happens in the future 
 * Keywords: async, await, then 
 */
void main() async {
  // async1();
  // async2();
  mainStream(); 
}

mainStream() {
  final stream = countStream(5); 
  stream.listen((data) {
    print('data: $data'); 
  }); 
  
}

/**
 * Stream needs async* 
 * yield when ever get the data 
 *  we throw/listen right away and print data 
 * yield return right away 
 */
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1)); 
    yield i; 
  }
}
/**
 * The code below can be replace with 
 *  try and catch
 */
// async4() async{
//   print()
// }

/**
 * Exam 
 */
// async3() async{
//   print('start'); 
//   fetchUserData().then((user)) {
//     print("Received user: $user") {

//     }).catchError((error)) {
//       print("Error: $error"); 
//     }); 

//     print("end"); 
//   }
  
// }

Future <String> fetchUserData() async{
  await Future.delayed(Duration(seconds: 2)); 
  return "John Doe"; 
}

//async-away
// async2() async {
//   print("start fetching"); 
//   await Future.delayed(Duration(seconds:1)). () {
//     print("fetch"); 
//   }; // future.delayed 

//   print("after fetching"); 

//   String computation = "random computation"; 
//   print(computation);
// }

void async1() {
  print("start fetching"); 

  Future.delayed(Duration(seconds: 5), () {
    print("recipes fetched");
  // _tell then is not depended ont previous code 
  }).then((_) {
    // call functions     
    print("after fetching recipes"); 
  }); 

  String str = "random comp";

  print(str); 

}
