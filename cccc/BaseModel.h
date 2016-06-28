//
//  BaseModel.h
//  cccc
//
//  Created by quanmai on 16/6/28.
//  Copyright © 2016年 quanmai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mantle.h"


@interface BaseModel : MTLModel<MTLJSONSerializing>

@property(nonatomic, strong) NSString *name;

@property(nonatomic, strong) NSArray *array;


@end
