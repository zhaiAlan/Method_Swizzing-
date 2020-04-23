//
//  XZPerson.m
//  Method_Swizzing坑点
//
//  Created by Alan on 4/23/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "XZPerson.h"

@implementation XZPerson
- (void)personInstanceMethod{
    NSLog(@"person对象方法:%s",__func__);
}
+ (void)personClassMethod{
    NSLog(@"person类方法:%s",__func__);
}

@end
