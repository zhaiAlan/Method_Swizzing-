//
//  ViewController.m
//  Method_Swizzing坑点
//
//  Created by Alan on 4/23/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "ViewController.h"
#import "XZStudent.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 黑魔法坑点二: 子类没有实现 - 父类实现
    XZStudent *s = [[XZStudent alloc] init];
    [s personInstanceMethod];
    
    XZPerson *p = [[XZPerson alloc] init];
    [p personInstanceMethod];
    //类中没有实现helloworld方法
    [s helloword];

    
    // Do any additional setup after loading the view.
}


@end
