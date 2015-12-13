//
//  GrilfriendClass.h
//  第一节课_1
//
//  Created by user on 15/10/17.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SonClass.h"

@interface GrilFriendClass : NSObject
//{
#pragma -mark -
#pragma -mark -成员变量
//    NSString *_name;
//    int _age;//第一件事
//    NSInteger _height;
//}

#pragma -mark -
#pragma -mark 属性
@property (nonatomic,readwrite) int age;
@property NSString *name;
//@property (nonatomic, unsafe_unretained, strong, weak, retain,assign)
//@property (nonatomic,strong) SonClass *son;

- (void) sayWithString:(NSString *) string andNumber:(int) number;
- (void) say;
- (void)testBlock;

#pragma -mark -
#pragma -mark 结构体
typedef struct myStruct{
    double grade;
    int personalId;
} PersonInfo;

//@property struct myStruct ms;
@property      PersonInfo   ms;


//typedef enum{
//    UIViewAnimationTransitionNone=0,
//    UIViewAnimationTransitionFlipFromLeft=1,
//    UIViewAnimationTransitionFlipFromRight,
//    UIViewAnimationTransitionCurlUp,
//    UIViewAnimationTransitionCurlDown,
//} MyUIEnum;

typedef NS_ENUM(NSInteger, MyUIEnum) {
    UIViewAnimationTransitionNone,//默认从0开始
    UIViewAnimationTransitionFlipFromLeft,
    UIViewAnimationTransitionFlipFromRight,
    UIViewAnimationTransitionCurlUp,
    UIViewAnimationTransitionCurlDown,
};

typedef NS_OPTIONS(NSInteger, MyEnum) {
    UIViewAnimtionTransitionNone=0,//默认从0开始
    UIViewAnimtionTransitionFlipFromLeft=1,
    UIViewAnimaionTransitionFlipFromRight=1<<1,
    aaaa=1<<2,

};



@end
