//
//  Person.m
//  01runtime
//
//  Created by coderXu on 16/12/5.
//  Copyright © 2016年 coderXu. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)run{
    NSLog(@"run");
}

- (void)likeColor:(NSString *)color{
 
    
    NSLog(@"like---%@",color);
}
+ (void)eat{
    NSLog(@"吃");
}
@end
