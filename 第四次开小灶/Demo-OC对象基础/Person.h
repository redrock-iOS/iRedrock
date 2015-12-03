//
//  Person.h
//  lesson-test-oc
//
//  Created by 李展 on 15/12/3.
//  Copyright © 2015年 李展. All rights reserved.
//

//Cocoa是什么？
//Cocoa是一个框架，框架简单的理解就是一堆头文件
#import <Foundation/Foundation.h>
//interface是接口的意思
@interface Person : NSObject
//以下的这些东西叫“方法”，method
//setter and getter
//set方法 与 get方法
- (void)setPersonName:(NSString *)newName;
- (NSString *)personName;
- (void)setAge:(int)newAge;
- (int)age;
- (void)setFriend:(Person *)newFriend;
- (Person *)friend;
@end

