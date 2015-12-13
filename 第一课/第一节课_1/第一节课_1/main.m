//
//  main.m
//  第一节课_1
//
//  Created by user on 15/10/17.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//


#import "GrilfriendClass.h"
#define kHelloChinese @"你好"
#import "BlockClass.h"

typedef struct linkChainStruct{
    int value;
    struct linkChainStruct *point;
    struct linkChainStruct *backPoint;
} linkChain;

static const NSString *kHelloConstChinese = @"你好";

void makeChain(){
    linkChain myStruct;
    linkChain *head;
    head = (linkChain *)malloc(sizeof(myStruct));
    head->point = NULL;
    
    for (int i=0; i<4; i++) {
        linkChain *tmpLinkChain;
        tmpLinkChain = (linkChain *)malloc(sizeof(myStruct));
        head->point = tmpLinkChain;
        tmpLinkChain->point = NULL;
    }

}

int main(int argc, const char * argv[]) {
    GrilFriendClass *class = [[GrilFriendClass alloc]init];
    [class sayWithString:kHelloChinese andNumber:233];
    [class say];
    
//    NSLog(@"%d",x);
//    NSLog(@"%d",x*2);
//    [class setAge:20];
//    NSLog(@"%d",[class age]);
    NSSize size; size = CGSizeMake(1,2);
    NSRect rect; rect = CGRectMake(1, 1, 1, 1);
    NSPoint point; point = CGPointMake(2, 1);
    
    size.height =1;
    size.width = 2;
    
  //    [class testBlock];
//    BlockClass *Num = [[BlockClass alloc] init];
//    [Num ooo:300];

    return 0;
}

//新建一个计算类
//添加一个方法输出100-999
//block
