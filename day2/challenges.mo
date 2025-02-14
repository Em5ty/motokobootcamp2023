import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";

actor {
    // Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    public func average_array(array : [Int] ) : async Int {
        var num: Int = array.size();
            var sum : Int = 0;
            for (items in array.vals()) {
                sum += items;
            };
            var result  = sum / num;
            return result;     
    };

    // Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    public func count_character( t : Text, c : Char ) : async Nat {
        var num = 0;     
        for (chinstr in t.chars()) {
            if (chinstr == c) {
                num += 1;
            }
        };
        return num;
    };

    // Write a function factorial that takes a natural number n and returns the factorial of n.
    public func factorial(n : Nat) :  async Nat {
      if (n > 1) {
        return (await factorial(n - 1)) * n;
            } 
      else {
        return n;
            };
     };

    // * Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
    public func number_of_words( t : Text ) : async Nat {
      var x : Nat = 0;
      var y : Bool = true;
      for (numwords in t.chars()) {
        if (numwords == ' ') {
          if ( y == true){
            x += 1;
            y := false;
          };
       }
       else{
         y := true;
        }
     };
    return x + 1;
  };

    // * Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
  public query func find_duplicates(a : [Nat]) : async [Nat] {
    var arr : [Nat] = [];
    for (i in a.vals()) {
      let duplicate : [Nat] = Array.filter<Nat>(a, func (x: Nat) : Bool {x == i});
      if(duplicate.size() > 1) {
        arr := Array.append(arr, [i]);
        };
    };
      return arr;
  };


    // * Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
  public func convert_to_binary(n : Nat) : async Text {
    var binary = 0;
    var ncopy = n;
    var num = 1;
    while(ncopy > 0) {
      let rest = ncopy % 2;
      binary += rest * num;
      ncopy /= 2;
      num *= 10;
    };
    return Nat.toText(binary);
  };
} 
