## Motoko Sha3 and Keccak Library
Supporting:
- Sha3
  - Sha3-224: SHA3.Sha3(224)
  - Sha3-256: SHA3.Sha3(256)
  - Sha3-384: SHA3.Sha3(384)
  - Sha3-512: SHA3.Sha3(512)
- Keccak
  - Keccak-224: SHA3.Keccak(224)
  - Keccak-256: SHA3.Keccak(256)
  - Keccak-384: SHA3.Keccak(384)
  - Keccak-512: SHA3.Keccak(512)

## Usage
- Create hasher
```
var sha = SHA3.Sha3(224);
```
- Digest data bytes
```
sha.update([104 : Nat8, 101, 108, 108, 111]);
```
- finalize to a [Nat8] array
```
let result = sha.finalize();
```

## Example
- hash "hello world!" using keccak-512
```
var sha = SHA3.Keccak(512);
let hello = Blob.toArray(Text.encodeUtf8("hello"));
let space = Blob.toArray(Text.encodeUtf8(" "));
let world = Blob.toArray(Text.encodeUtf8("world!"));
sha.update(hello);
sha.update(space);
sha.update(world);
let result = sha.finalize();
let hex = Hex.encode(result);
Debug.print(hex);
// assert ("d50b81a30b0ee3b355ae0b5af973fa28518377822165c76b735404470aaf91553ef4a5cf43a3511f2fc0decfd14da1048e244ec1a94aac2fbde2ae87c2d95455" == hex);
```

## Ref
- Sha3 and Keccak implemention is inspired by https://github.com/mjosaarinen/tiny_sha3
- hex encode is from https://github.com/aviate-labs/encoding.mo

