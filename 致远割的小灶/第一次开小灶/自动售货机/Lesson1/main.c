#include <stdio.h>
#define asamu 4
#define kele 3
#define nongfushanquan 2
#define PI 3.1415927

int main() {
    
    int coins;
    printf("请投入硬币\n");
    scanf("%d",&coins);
    printf("投入了多少硬币 = %d\n",coins);
    
    
    // 阿萨姆 --> 1
    // 可乐 --> 2
    // 农夫山泉 --> 3
    int kind;
    printf("您需要什么饮料呢？\n");
    scanf("%d",&kind);
    
    
    
    printf("您得到您想要的饮料\n");
    printf("您得到了找的钱 = %d\n",coins - asamu);
    
    return 0;
}