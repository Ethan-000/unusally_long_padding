use dep::std;

fn main(x : Field) -> pub [u8; 254] {
    // The result of this byte array will be little-endian
    let byte_array = x.to_le_bytes(31);
    let mut bytes = [0; 254];
    for i in 0..254 {
        bytes[i] = byte_array[i];
    }
    bytes
}