import SHA3 "../src";
import Array "mo:base/Array";
import Blob "mo:base/Blob";
import Debug "mo:base/Debug";
import Hex "hex";
import Text "mo:base/Text";

// Results from
// https://emn178.github.io/online-tools/sha3_512.html

/////////////////////////////////////////// finalize ///////////////////////////////////////////
Debug.print("--- finalize ---");
// sha3-224
do {
    var sha = SHA3.Sha3(224);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("6b4e03423667dbb73b6e15454f0eb1abd4597f9a1b078e3f5b5a6bc7" == hex);
};
// sha3-256
do {
    var sha = SHA3.Sha3(256);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a" == hex);
};
// sha3-384
do {
    var sha = SHA3.Sha3(384);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("0c63a75b845e4f7d01107d852e4c2485c51a50aaaa94fc61995e71bbee983a2ac3713831264adb47fb6bd1e058d5f004" == hex);
};
// sha3-512
do {
    var sha = SHA3.Sha3(512);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26" == hex);
};
// keccak-224
do {
    var sha = SHA3.Keccak(224);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("f71837502ba8e10837bdd8d365adb85591895602fc552b48b7390abd" == hex);
};
// keccak-256
do {
    var sha = SHA3.Keccak(256);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470" == hex);
};
// keccak-384
do {
    var sha = SHA3.Keccak(384);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("2c23146a63a29acf99e73b88f8c24eaa7dc60aa771780ccc006afbfa8fe2479b2dd2b21362337441ac12b515911957ff" == hex);
};
// keccak-512
do {
    var sha = SHA3.Keccak(512);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("0eab42de4c3ceb9235fc91acffe746b29c29a8c366b7c60e4e67c466f36a4304c00fa9caf9d87976ba469bcbe06713b435f091ef2769fb160cdab33d3670680e" == hex);
};

/////////////////////////////////////////// hello ///////////////////////////////////////////
Debug.print("--- hello ---");
// sha3-224
do {
    var sha = SHA3.Sha3(224);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("b87f88c72702fff1748e58b87e9141a42c0dbedc29a78cb0d4a5cd81" == hex);
};
// sha3-256
do {
    var sha = SHA3.Sha3(256);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("3338be694f50c5f338814986cdf0686453a888b84f424d792af4b9202398f392" == hex);
};
// sha3-384
do {
    var sha = SHA3.Sha3(384);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("720aea11019ef06440fbf05d87aa24680a2153df3907b23631e7177ce620fa1330ff07c0fddee54699a4c3ee0ee9d887" == hex);
};
// sha3-512
do {
    var sha = SHA3.Sha3(512);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("75d527c368f2efe848ecf6b073a36767800805e9eef2b1857d5f984f036eb6df891d75f72d9b154518c1cd58835286d1da9a38deba3de98b5a53e5ed78a84976" == hex);
};
// keccak-224
do {
    var sha = SHA3.Keccak(224);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("45524ec454bcc7d4b8f74350c4a4e62809fcb49bc29df62e61b69fa4" == hex);
};
// keccak-256
do {
    var sha = SHA3.Keccak(256);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("1c8aff950685c2ed4bc3174f3472287b56d9517b9c948127319a09a7a36deac8" == hex);
};
// keccak-384
do {
    var sha = SHA3.Keccak(384);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("dcef6fb7908fd52ba26aaba75121526abbf1217f1c0a31024652d134d3e32fb4cd8e9c703b8f43e7277b59a5cd402175" == hex);
};
// keccak-512
do {
    var sha = SHA3.Keccak(512);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("52fa80662e64c128f8389c9ea6c73d4c02368004bf4463491900d11aaadca39d47de1b01361f207c512cfa79f0f92c3395c67ff7928e3f5ce3e3c852b392f976" == hex);
};

/////////////////////////////////////////// hello world! ///////////////////////////////////////////
Debug.print("--- hello world! ---");
// sha3-224
do {
    var sha = SHA3.Sha3(224);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("f8551fe638d604e2cac84f39b5c38f400d161245a16359b59a57286c" == hex);
};
// sha3-256
do {
    var sha = SHA3.Sha3(256);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("9c24b06143c07224c897bac972e6e92b46cf18063f1a469ebe2f7a0966306105" == hex);
};
// sha3-384
do {
    var sha = SHA3.Sha3(384);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("64bdfdfda3956f86992c4a0fc9a4f31e9d11c43abb463365a57d360261012e955f078601448a62c38d1528ca068049ff" == hex);
};
// sha3-512
do {
    var sha = SHA3.Sha3(512);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("5aadcaf394961eecc2f4e65c2d82ff7cf0f6fa4574f351d0053574886ac77c961958cef64bc2bb483b4e7430964b55893a7c28a5c6efab7e24e2b7994bba5eb9" == hex);
};
// keccak-224
do {
    var sha = SHA3.Keccak(224);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("e2849a3727a8930fb48167b6f822effc9d150e28b157d7b921b8c89a" == hex);
};
// keccak-256
do {
    var sha = SHA3.Keccak(256);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("57caa176af1ac0433c5df30e8dabcd2ec1af1e92a26eced5f719b88458777cd6" == hex);
};
// keccak-384
do {
    var sha = SHA3.Keccak(384);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("c2be544b3f300ed033e22ff84267260e300cc77928e31578fbe30b71113587855f97215f80f1e00b1a897615dc06b937" == hex);
};
// keccak-512
do {
    var sha = SHA3.Keccak(512);
    sha.update([104 : Nat8, 101, 108, 108, 111]);
    sha.update([32 : Nat8]);
    sha.update([119 : Nat8, 111, 114, 108, 100, 33]);
    let result = sha.finalize();
    let hex = Hex.encode(result);
    Debug.print(hex);
    assert ("d50b81a30b0ee3b355ae0b5af973fa28518377822165c76b735404470aaf91553ef4a5cf43a3511f2fc0decfd14da1048e244ec1a94aac2fbde2ae87c2d95455" == hex);
};

assert (true);
