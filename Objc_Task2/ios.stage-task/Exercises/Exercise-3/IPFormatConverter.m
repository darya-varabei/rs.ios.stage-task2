#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSString* ip_result = [NSString stringWithFormat:@"%@.%@.%@.%@", @"", @"", @"", @""];
    
    if(numbersArray.count == 0){
        return @"";
    }
    
    for(int i = 0; i < numbersArray.count; i++){
        NSInteger number = [numbersArray[i] intValue];
        if(number > 255){
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        if(number < 0){ 
            return @"Negative numbers are not valid for input.";
        }
    }
    
    NSMutableArray *tmp_array = [NSMutableArray arrayWithArray:numbersArray];
    
    if(numbersArray.count == 4){
        ip_result = [NSString stringWithFormat:@"%@.%@.%@.%@", numbersArray[0], numbersArray[1], numbersArray[2], numbersArray[3]];
    }
    
    else{
        for(int i = 0; i < 4; i++){
            [tmp_array addObject:@0];
        }
        return [NSString stringWithFormat:@"%@.%@.%@.%@", tmp_array[0], tmp_array[1], tmp_array[2], tmp_array[3]];
    }
    
    return ip_result;
}

@end
