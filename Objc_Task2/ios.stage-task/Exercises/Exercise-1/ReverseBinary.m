#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    bool converted = false;
    int counter = 0;
    UInt8 final_n = 0;
    
    while(!converted){
        final_n = final_n | (n & 1) << (7 - counter);
        n >>= 1;
        counter++;
        if (counter == 7){ 
            converted = true;
        }
    }
    
    return final_n;
}
