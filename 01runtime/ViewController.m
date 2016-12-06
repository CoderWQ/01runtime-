//
//  ViewController.m
//  01runtime
//
//  Created by coderXu on 16/12/5.
//  Copyright © 2016年 coderXu. All rights reserved.
//  发送消息

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    Person *p = [[Person alloc] init];
//    [p run];
    
    // OC运行时机制。消息机制
    // 消息机制：任何方法调用，本质都是发送消息
    
    // SEL:方法编号可以找到对应的方法名
    [p performSelector:@selector(run)];
    
    // 运行时，谁做事情就拿谁
    // xcode5之后，苹果不建议用底层的方法
    // xcode5之后，使用运行时-->build setting中，搜索msg,然后使用
    
    
    
//    // p发送消息
//    objc_msgSend(p, @selector(run));
//    
//    objc_msgSend(p, @selector(likeColor:),@"红色");
    
    
    // 类名调用类方法，本质类名转换成类对象
//    [Person eat];
    
    
    
    Class personClass = [Person class];
    
    [personClass performSelector:@selector(eat)];
    
    objc_msgSend(personClass, @selector(eat));
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
