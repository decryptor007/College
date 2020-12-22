// Mazen Soliman Youssef aka decryptor007 , 20171454959

class queue<T> {
  var myQueue = <T>[];
  void push(x) {
    myQueue.add(x);
  }

  T pop() {
    return myQueue.removeAt(0);
  }

  T peek() {
    return myQueue[0];
  }

  bool isEmpty() {
    return myQueue.length == 0;
  }

  int getLength() {
    return myQueue.length;
  }
}

class stack<T> {
  var myStack = <T>[];
  void push(x) {
    myStack.add(x);
  }

  T pop() {
    return (myStack.removeLast());
  }

  T peek() {
    return myStack[myStack.length - 1];
  }

  bool isEmpty() {
    return myStack.length == 0;
  }

  int getLength() {
    return myStack.length;
  }
}
