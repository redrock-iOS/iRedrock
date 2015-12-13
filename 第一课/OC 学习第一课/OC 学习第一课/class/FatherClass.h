//
//  FatherClass.h
//  OC_学习第一课
//
//  Created by user on 15/10/13.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SonClass;
@interface FatherClass : NSObject
{
#pragma -mark -
#pragma -mark -成员变量
    NSString *_name;
    int _age;
    NSInteger _sex;

}

@property (nonatomic, strong) SonClass *son;

#pragma -mark -
#pragma -mark 属性
@property (nonatomic, readwrite, strong) NSString *otherName;
@property (nonatomic , readonly, assign) NSInteger sex;

//@property (nonatomic, unsafe_unretained, strong, weak, retain,assign)

#pragma -mark -
#pragma -mark 结构体
typedef struct myStruct{
    NSInteger grade;
    NSInteger personalId;
} PersonClass;//别名

#pragma -mark -
#pragma -mark 别名使用
@property (nonatomic, assign) PersonClass personal;

//typedef enum{
//    UIViewAnimationTransitionNone,
//    UIViewAnimationTransitionFlipFromLeft,
//    UIViewAnimationTransitionFlipFromRight,
//    UIViewAnimationTransitionCurlUp,
//    UIViewAnimationTransitionCurlDown,
//} MyUIEnum;

typedef NS_ENUM(NSInteger, UIViewAnimationTransition) {
    UIViewAnimationTransitionNone,//默认从0开始
    UIViewAnimationTransitionFlipFromLeft,
    UIViewAnimationTransitionFlipFromRight,
    UIViewAnimationTransitionCurlUp,
    UIViewAnimationTransitionCurlDown,
};


- (void)say;


@end
