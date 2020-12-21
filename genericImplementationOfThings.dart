void main() {
  var test=new queue();
  test.push(10);
  //test.push(100);
  test.pop();
  print(test.isEmpty());
}
class queue<T>{
  var myQueue=<T>[];
  void push(x){
    myQueue.add(x);
    print(myQueue);
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
    print(myStack);
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
