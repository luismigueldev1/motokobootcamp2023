import Float "mo:base/Float";

actor {
    //HOMEWORK 

    // 1 - Find Motoko documentation on internetcomputer.org
    // Q: the blob module has a function that returns a value. What is its type?
    // A: let hash : (b : Blob) -> Nat32

    // 2 - Write a smart contract that will:
    // - Accept two integers as input
    // - Multiply those two numbers together and return the value
    // 3 Add 10.3 to the value and return the square root of (x*y+10.3)

    // A: here is the answer
    public query func multiply_and_sqrt(x : Int, y: Int) : async Float {
        return Float.sqrt(Float.fromInt(( x * y)) + 10.3);
    };


    //CODING CHALLENGES

    // 1 - Write a function multiply that takes two natural numbers and returns the product.
    //multiply(n : Nat, m : Nat) -> async Nat
    public query func multiply(n : Nat, m : Nat) : async Nat {
        return n * m;
    };

    // 2 - Write a function volume that takes a natural number n and returns the volumte of a cube with side length n.
    //volume(n : Nat) -> async Nat
    public query func volume(n : Nat) : async Nat {
        return n ** 3;
    };

    // 3 - Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
    //hours_to_minutes(n : Nat) -> async Nat
    public query func hours_to_minute(n : Nat) : async Nat {
        return n * 60;
    };

    // 4 - Write two functions set_counter & get_counter .
    // set_counter sets the value of counter to n.
    // set_counter(n : Nat) -> async ()
    // get_counter returns the current value of counter.
    // get_counter() -> async Nat

    var counter: Nat = 0;

    public func set_counter(n : Nat) : async () {
        counter := n;
    };

    public query func get_counter() : async Nat {
        return counter;
    };

    // 5 - Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
    //test_divide(n: Nat, m : Nat) -> async Bool
    public query func test_divide(n: Nat, m : Nat) : async Bool {
        return m != 0;
    };

    // 6 - Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
    // is_even(n : Nat) -> async Bool 
    public query func is_even(n: Nat) : async Bool {
        return n % 2 == 0;
    };

}