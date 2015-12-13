//
//  GrilfriendClass.m
//  第一节课_1
//
//  Created by user on 15/10/17.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import "GrilFriendClass.h"

@implementation GrilFriendClass
//@synthesize age = _age;

/** - 返回类型  参数名1:  1类型        1名字   参数名2: 2类型 2名字**/
- (void) sayWithString:(NSString *) string andNumber:(int) number{
    NSLog(@"%@,%d",string,number);
}

- (void)say{
    NSLog(@"hahaha");
}

//set和 get方法
- (NSString *)name{
    return @"sss";
}

- (void)setName:(NSString *)name{
//    self.name == [self name]
}

- (void)testBlock{
    double (^getSummer)(int min,int max)=^(int min,int max){
        if (min>max && 1) {
            min = min + max;
            max = min - max;
            min = min - max;
        }
        double summer=0;
        for (int i=min; i<=max; i++) {
            summer += i;
        }
        
//        [UIAnimation run:^(void){
//            //文字显示
//        } complete:getSummer];
        
        return summer;
        
    };
    
    NSLog(@"%lf",getSummer(5,3));
}

@end
