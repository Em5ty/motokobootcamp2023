

1) The ledger of the NNS is ryjl3-tyaaa-aaaaa-aaaba-cai, and it is controlled by canister r7inp-6aaaa-aaaaa-aaabq-cai
2) mwrha-maaaa-aaaab-qabqq-cai canister subnet ID pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe. There is 16 node machines.
3) Approximately 14.2%. Additionally, an annualized voting reward of approximately 7.6%
4) We need to import mo:base/Nat, also 'n' and 't' don't have any use
5) We need to delete "var"
actor {
  let languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [Text] {
    return (languages);
  };
  
}
6) We need to import "mo:base/Array" and delete the 'return'
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    Array.append<Text>(languages, [new_language]);
  };
 
}
