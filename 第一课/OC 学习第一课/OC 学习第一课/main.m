//
//  main.m
//  OC 学习第一课
//
//  Created by user on 15/10/13.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FatherClass.h"
#import "SonClass.h"

#define kString @"爸爸"
static const NSString *string = @"dady";

int doubleToInt(double paramer){
    return paramer;
}


int main(int argc, const char * argv[]) {
    
    FatherClass *father =  [FatherClass alloc];
    [father setOtherName:[string copy]];
    [father say];
    return 0;
}


