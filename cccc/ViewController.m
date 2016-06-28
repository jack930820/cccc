//
//  ViewController.m
//  cccc
//
//  Created by quanmai on 16/6/28.
//  Copyright © 2016年 quanmai. All rights reserved.
//

#import "ViewController.h"
#import <MXScrollView/MXScrollView.h>
#import "GHIssue.h"
#import "BaseModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MXImageView *imageView = [[MXImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100) hasTable:NO];
    imageView.backgroundColor = [UIColor redColor];
    [self.view addSubview:imageView];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *JSONDictionary = @{
                                     @"user_name": @"john",
                                     @"html_urlcc": @"www.baidu.com",
                                     @"number": @"222",
                                     @"array": @(1),
                                     @"reporterLogin": @"123123",
                                     @"updatedAt": @"123123232",
                                     };
        
    BaseModel *model = [[BaseModel alloc] initWithDictionary:JSONDictionary error:nil];
//    [model setValue:@"grace" forKey:@"name"];
    NSLog(@"model.dic:%@",model.dictionaryValue);
    model.name = @"jack";
    NSLog(@"model.dic:%@",[model array]);
    NSString *type = nil;
    NSLog(@"type is %d",[type isKindOfClass:[NSString class]]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
