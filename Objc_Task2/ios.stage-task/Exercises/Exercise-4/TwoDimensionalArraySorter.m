#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray<NSNumber *> *resultArray = [NSMutableArray array];
    NSMutableArray<NSString *> *resultArrayString = [NSMutableArray array];
    
    for(int i = 0; i< array.count; i++){
        
        if (![array[i] isKindOfClass:[NSArray class]]) {
            return @[];
        }
        for(int j = 0; j < array[i].count; j++){
            
            if([array[i][j] isKindOfClass:[NSNumber class]]){
                [resultArray addObject:array[i][j]];
            }
            if([array[i][j] isKindOfClass:[NSString class]]){
                [resultArrayString addObject:array[i][j]];
            }
        }
    }
    
    
    [resultArray sortUsingSelector: @selector(compare:)];
    [resultArrayString sortUsingSelector: @selector(compare:)];
    
    
    if(resultArray.count == 0){
        return resultArrayString;
    }
    
    if(resultArrayString.count == 0){
        return resultArray;
    }
    
    return @[];
    
}

@end
