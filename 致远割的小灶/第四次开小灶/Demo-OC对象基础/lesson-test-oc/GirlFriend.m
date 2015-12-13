//
//  GirlFriend.m
//  lesson-test-oc
//
//  Created by 李展 on 15/12/3.
//  Copyright © 2015年 李展. All rights reserved.
//

#import "GirlFriend.h"
#import "Person.h"

@implementation GirlFriend {
    Person *boyfriend;
}
- (void)setBoyfriend:(Person *)newBoyfriend {
    boyfriend = newBoyfriend;
}

- (Person *)boyfriend {
    return boyfriend;
}
@end
