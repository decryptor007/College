import 'package:test/test.dart';
import 'decryptoricDS.dart';
void main() {
var s;
setUp((){
s=new stack<int>();
});
group('stack',() {
  test('Stack Testing', () {
    for(var i=0;i<1000;i++){
    	s.push(i);
    	expect(s.getLength(),i+1);
    }
  });
});
}
class queue<T>{
  var myQueue=<T>[];
  void push(x){
    myQueue.add(x);
  }
  T pop(){
    return myQueue.removeAt(0);
  }
  T peek(){
    return myQueue[0];
  }
  bool isEmpty(){
    print(myQueue.length);
    return myQueue.length==0;
  }
  int getLength(){
    return myQueue.length;
  }
}
class stack<T>{
  var myStack=<T>[];
  void push(x){
    myStack.add(x);
  }
  T pop(){
    return(myStack.removeLast());
  }
  T peek(){
    return myStack[myStack.length-1];
  }
  bool isEmpty(){
    print(myStack.length);
    return myStack.length==0;
  }
  int getLength(){
    return myStack.length;
  }
}

