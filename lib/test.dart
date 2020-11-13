void main() {
  // Future.delayed(Duration(seconds: 2), () {
  //   //return "hello world";
  //   throw AssertionError("Error");
  // }).then((data) {
  //   print("onsuccess");
  // }).catchError((e){
  //   print(e);
  // }).whenComplete(()=> print('不论如何也得走我这'));

  Future.wait([
    // 2秒后返回结果
    Future.delayed(new Duration(seconds: 2), () {
      return "hello";
    }),
    // 4秒后返回结果  
    Future.delayed(new Duration(seconds: 4), () {
      return " world";
    })
  ]).then((results){
    print(results[0]+results[1]);
  }).catchError((e){
    print(e);
  });
}