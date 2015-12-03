//
//  GirlFriend.h
//  lesson-test-oc
//
//  Created by 李展 on 15/12/3.
//  Copyright © 2015年 李展. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface GirlFriend : Person
- (void)setBoyfriend:(Person *)newBoyfriend;
- (Person *)boyfriend;
@end
