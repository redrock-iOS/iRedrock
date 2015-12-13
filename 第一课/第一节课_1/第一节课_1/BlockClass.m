//
//  BlockClass.m
//  第一节课_1
//
//  Created by user on 15/10/17.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import "BlockClass.h"

@implementation BlockClass
- (void) ooo:(int) hun
{
    void (^cOut)()=^(void){
        for (int i = 100; i < 1000; i++) {
            int num = 100;
            num = i%10;
            int ten;
            ten = i/10 % 10;
            int ge = i/100 % 10;
            if (ge * ten * num == i) {
                NSLog(@" %d",i);
            }
        }
    };
    cOut();
}
@end
