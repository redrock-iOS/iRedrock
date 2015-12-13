//
//  main.m
//  Foundation_class
//
//  Created by GQuEen on 15/10/24.
//  Copyright © 2015年 GegeChen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1
        NSString *string = [[NSString alloc]init];
        string = @"wDAWDADdaw";
        NSLog(@"1 %@",string);
        
        //2
        NSString *string2 = [[NSString alloc]initWithFormat:@"this string is %@",string];
        NSLog(@"2 %@",string2);

        //3
        NSString *string3 = [NSString stringWithFormat:@"abcde"];
        NSLog(@"3 %@",string3);

        //4 字面量
        NSString *string4 = @"abcd";
        
        NSLog(@"4 %@",string4);

        //大小写转换
        NSString *string5 = [string uppercaseString];//大写
        NSLog(@"5 %@",string5);
        
        NSString *string6 = [string5 lowercaseString];//小写
        NSLog(@"6 %@",string6);
        
        NSString *str = [string capitalizedString];//首字母大写
        NSLog(@"7 %@",str);

        //比较大小  3种返回值:NSOrderedAscending NSOrderedSame NSOrderedDescending
        if ([string3 compare:string4] == NSOrderedSame) {
            NSLog(@"yes");
        }else {
            NSLog(@"no");
        }
        
        //字符串的搜索
        NSString *string7 = @"abcdefgbc";
        BOOL isHave = [string7 containsString:@"bc"];
        NSLog(@"8 %d",isHave);
        //范围搜索 NSRange
        NSRange range = [string7 rangeOfString:@"cde"];
        NSLog(@"9 %ld~~%ld",range.location,range.length);
        
        
        //字符串的替换和截取
        NSString *string8 = [string7 stringByReplacingOccurrencesOfString:@"bc" withString:@"dd"];
        NSLog(@"10 %@",string8);
        
        NSString *string9 = [string7 stringByReplacingCharactersInRange:NSMakeRange(1, 3) withString:@"yy"];
        NSLog(@"11 %@",string9);
        //截取
        NSString *string10 = [string7 substringWithRange:NSMakeRange(2, 5)];
        NSLog(@"12 %@",string10);
        
        //字符串和基本数据类型转换
        NSString *string11 = @"21321312addawd";
        int a;
        a = [string11 intValue];
        NSLog(@"13 %d",a);
        
        //判断前后缀
        NSString *string12 = @"www.baidu.com";
        BOOL is = [string12 hasPrefix:@"www"];
        BOOL is1 = [string12 hasSuffix:@".com"];
        
        NSLog(@"14 %d  %d",is,is1);
        
        //NSArray
        NSArray *array = [[NSArray alloc]initWithObjects:@"string1",@"string2",@"121" , nil];
        NSLog(@"15 %@",array);
        NSArray *array2 = @[@"string1",@"string2",@"121"];
        NSLog(@"16 %@",array2);
        //数组遍历
        for (int i = 0; i < array.count; i ++) {
            NSLog(@"%@",array[i]);
        }
        //数组快速遍历
        for (NSString *string in array) {
            NSLog(@"%@",string);
        }
        
        //NSMutableArray 可变数组
        
        NSMutableArray *array1 = [[NSMutableArray alloc]initWithObjects:@"1212",@"4242ø",@"2323" ,nil];
        NSLog(@"17 %@",array1);
        //数组增加元素
        [array1 addObject:@"151213"];
        NSLog(@"18 %@",array1);
        //数组删除元素
        [array1 removeObject:@"1212"];
        NSLog(@"19 %@",array1);
        
        
        //NSDictionary key - value
        
        NSDictionary *dic = [[NSDictionary alloc]initWithObjectsAndKeys:@"allen",@"name",@"18",@"age", nil];
        NSLog(@"20 %@",dic);
        
        NSDictionary *dic2 = @{@"name":@"allen",@"age":@"18"};
        NSLog(@"21 %@",dic2);
        
        NSString *string13 = [dic objectForKey:@"name"];
        NSString *string14 = dic[@"name"];
        NSLog(@"22 %@",string13);
        NSLog(@"23 %@",string14);
        //字典遍历
        for (NSString *key in dic) {
            NSLog(@"%@",dic[key]);
        }
        
        //NSMutabelDictionary
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"allen",@"name",@"18",@"age" ,nil];
        NSLog(@"24 %@",dic3);
        //字典增加元素
        [dic3 setObject:@"nan" forKey:@"sex"];
        //字典删除元素
        [dic3 removeObjectForKey:@"name"];
        NSLog(@"25 %@",dic3);
        
        //NSSet 无序的 无重复元素
        NSSet *set = [[NSSet alloc]initWithObjects:@"111",@"222",@"111", nil];
        //set的遍历
        for (NSString *string in set) {
            NSLog(@"%@",string);
        }
    }
    return 0;
}
