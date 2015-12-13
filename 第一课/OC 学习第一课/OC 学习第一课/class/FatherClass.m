//
//  FatherClass.m
//  OC_学习第一课
//
//  Created by user on 15/10/13.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import "FatherClass.h"

@interface FatherClass()

@end

@implementation FatherClass
@synthesize otherName = _name;

#pragma -mark -
#pragma -mark 消息
- (void)say{
    
    NSLog(@"%@ Say:我是%@",[self className],self.otherName);
    
}

#pragma -mark -
#pragma -mark set 和 get方法
- (void)setOtherName:(NSString *)otherName{
    _name = [otherName mutableCopy];
}

- (NSString *)otherName{
    return [_name mutableCopy];
}

#pragma -mark -
#pragma -mark block代码块
- (void)testBlock{
    void (^test)(int param1, int param2) = ^(int min, int max){
        if (min>max) {
            max = max + min;
            min = max - min;
            max = max - min;
        }
        double summer=0;
        for (int i=min; i<=max; i++) {
            summer += i;
        }
        NSLog(@"summer:%lf",summer);
    };
    
    test(1,2);
}
@end
