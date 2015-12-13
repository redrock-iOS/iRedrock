//
//  main.m
//  lesson-test-oc
//
//  Created by 李展 on 15/12/3.
//  Copyright © 2015年 李展. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "GirlFriend.h"

int main(int argc, const char * argv[]) {
    //alloc 分配
    Person *me = [Person alloc];
    [me setPersonName:@"小明"];
    [me setAge:20];
    
    
    GirlFriend *myGirlfrend;
    [myGirlfrend setPersonName:@"小红"];
    [myGirlfrend setAge:19];
    [myGirlfrend setBoyfriend:me];
    
    
    return 0;
}
