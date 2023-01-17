1) current memory capacity of a canister 48gb
2) Error in file Main.mo:3:4 expected mutable assignment target -  wee need to change let to var to make it work
3) Error in file Main.mo:1:23 literal of type Nat does not have expected type Text - we need to change the var : text = 0 to "0" to make it work
