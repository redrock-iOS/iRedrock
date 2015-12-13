//
//  DataBuild.h
//  OC_学习第一课
//
//  Created by user on 15/10/13.
//  Copyright (c) 2015年 Orange-W. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FatherClass.h"

@interface SonClass : FatherClass

@property (nonatomic, weak) FatherClass *myFather;

@end
