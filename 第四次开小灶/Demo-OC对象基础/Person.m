//
//  Person.m
//  lesson-test-oc
//
//  Created by 李展 on 15/12/3.
//  Copyright © 2015年 李展. All rights reserved.
//

#import "Person.h"

@implementation Person {
    NSString *personName;
    int age;
    Person *friend;
    
}

- (void)setPersonName:(NSString *)newName {
    personName = newName;
}

- (NSString *)personName {
    return personName;
}

- (void)setAge:(int)newAge {
    age = newAge;
}
- (int)age {
    return age;
}

- (void)setFriend:(Person *)newFriend {
    friend = newFriend;
}

- (Person *)friend {
    return friend;
}
@end
