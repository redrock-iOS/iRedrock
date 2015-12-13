//
//  main.c
//  Lesson-2
//
//  Created by RainyTunes on 11/15/15.
//  Copyright © 2015 RainyTunes. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...

    int ans2 = 1;
    
    int i;

    for (i = 1; i <= 11; i++)
    {
        ans2 = ans2 * i;
        printf("好累啊\n");
    }
    
    printf("终于做完了\n");
    
    return 0;
}
