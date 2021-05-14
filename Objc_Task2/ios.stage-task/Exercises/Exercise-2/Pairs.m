#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int counter = 0;
    for(int i = 0; i < array.count; i++){
        for (int j = 1+i; j < array.count; j++){
            if ((array[i].integerValue - array[j].integerValue == number.integerValue) || (array[j].integerValue - array[i].integerValue == number.integerValue)){
                counter++;
            }
        }
    }
    return counter;
}

@end
