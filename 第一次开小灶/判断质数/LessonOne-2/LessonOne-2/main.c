//
//  main.c
//  LessonOne-2
//
//  Created by RainyTunes on 11/15/15.
//  Copyright © 2015 RainyTunes. All rights reserved.
//

#include <stdio.h>
//printf print output
//scanf scan input
//std standard 标准
//lib library 仓库

#include <stdlib.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int n;
    scanf("%d",&n);//1...n所有的质数
    for (int j = 2; j <= n; j++) {//现在是j在判断质数
        int flag = 0;
        for (int i = 2; i <= j / 2; i++) {//功能：判断j是否是质数
            if (j % i == 0) {
                flag = 1;
                break;
            }
        }
        // 如果flag = 1，说明该数不是质数，j继续往下走
        // 如果flag = 0, 说明该数是质数，打印j，j继续往下走
        if (flag == 0) {
            printf("%d ",j);
        }
    }

    
    
    return 0;
}
