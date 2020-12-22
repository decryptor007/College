import 'package:test/test.dart';
import 'dart:math';
import 'decryptoricDS.dart';
// Mazen Soliman Youssef aka decryptor007 , 20171454959
void main() {
  var s;
  var q;
  var r = Random(); // random class usage as your hint suggested :"

  setUp(() {
    //executed once before every test.
    s = new stack<int>();
    q = new queue<int>();
  });
  //first group for stack testing
  group('stack', () {
    test('stack push and pop', () {
      //testing for 10000 push and pop
      for (var i = 0; i < 100000; i++) {
        s.push(r.nextInt(1000000));
        expect(s.getLength(), i + 1);
      }
      for (var i = 1; i < 100000; i++) {
        s.pop();
        expect(s.getLength(), 99999 - i + 1);
      }
    });

    test('stack pop order test', () {
      s.push(1);
      s.push(2);
      expect(s.pop(), 2);
    });

    test('stack peek function', () {
      s.push(1);
      s.push(2);
      s.push(3);
      expect(s.peek(), 3);
    });

    test('stack isEmptyTest', () {
      expect(s.isEmpty(), true);
      s.push(1);
      expect(s.isEmpty(), false);
    });
  });
  //first group for queue testing (same code t2ribn except behaviour differences)
  group('queue', () {
    test('queue push and pop', () {
      for (var i = 0; i < 100000; i++) {
        q.push(r.nextInt(1000000));
        expect(q.getLength(), i + 1);
      }
      for (var i = 1; i < 100000; i++) {
        q.pop();
        expect(q.getLength(), 99999 - i + 1);
      }
    });

    test('queue pop order test', () {
      q.push(1);
      q.push(2);
      expect(q.pop(), 1);
    });

    test('queue peek function', () {
      q.push(1);
      q.push(2);
      q.push(3);
      expect(q.peek(), 1);
    });
    test('queue isEmptyTest', () {
      expect(q.isEmpty(), true);
      q.push(1);
      expect(q.isEmpty(), false);
    });
  });
  
  tearDown(() {
    //runs after every test
    s = null;
    q = null;
  });
}
