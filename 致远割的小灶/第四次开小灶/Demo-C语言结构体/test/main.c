//
//  main.c
//  test
//
//  Created by 李展 on 15/12/3.
//  Copyright © 2015年 李展. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    
    typedef struct date {
        int year;
        int month;
        int day;
    }Date;
    
    typedef struct Girl {
        int age;
        char *name;
        Date birthday;
    }Girl;
    
    //并没有真正的生命
    Girl myGirlfriend;
    myGirlfriend.age = 18;
    myGirlfriend.name = "小红";
    myGirlfriend.birthday.year = 1995;
    myGirlfriend.birthday.month = 10;
    myGirlfriend.birthday.day = 1;
    
    
    
    
    return 0;
}
