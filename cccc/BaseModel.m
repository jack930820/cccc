//
//  BaseModel.m
//  cccc
//
//  Created by quanmai on 16/6/28.
//  Copyright © 2016年 quanmai. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

 + (NSDictionary *)JSONKeyPathsByPropertyKey {
     return @{
         @"name": @"user_name",
//         @"point": @[ @"latitude", @"longitude" ],
         @"array": @"array"
     };
 }

+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key{
    NSLog(@"key");
    return @"";
}


-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"key:%@ is not define",key);
    NSString *serialKey = nil;
    NSDictionary *serialDic = [[self class] JSONKeyPathsByPropertyKey];
    NSArray *serialDicAllKeys = [serialDic allKeys];
    for (NSInteger i = 0; i < serialDicAllKeys.count; i ++) {
        NSString *currentKey = [serialDicAllKeys objectAtIndex:i];
        NSString *currentSerialKey = [serialDic valueForKey:currentKey];
        if ([currentSerialKey isEqualToString:key]) {
            serialKey = currentKey;
            break;
        }
    }
    if (serialKey !=nil && [self respondsToSelector:NSSelectorFromString(serialKey)]) {
        NSLog(@"YES");
        [self  setValue:value forKey:serialKey];
    }
    
}


@end
