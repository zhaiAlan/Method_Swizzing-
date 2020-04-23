//
//  XZStudent+XZ.m
//  Method_Swizzing坑点
//
//  Created by Alan on 4/23/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "XZStudent+XZ.h"
#import "XZRunTimeTool.h"

@implementation XZStudent (XZ)
+(void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [XZRunTimeTool xz_betterMethodSwizzlingWithClass:self oriSEL:@selector(personInstanceMethod) swizzledSEL:@selector(xz_studentInstanceMethod)];
        //因为helloworld方法没有实现，所有这里就得有best了
        [XZRunTimeTool xz_bestMethodSwizzlingWithClass:self oriSEL:@selector(helloword) swizzledSEL:@selector(xz_helloword)];

    });
}
// personInstanceMethod 我需要父类的这个方法的一些东西
// 给你加一个personInstanceMethod 方法
// imp
- (void)xz_studentInstanceMethod{
    [self xz_studentInstanceMethod];
    NSLog(@"XZStudent分类添加的lg对象方法:%s",__func__);
}
- (void)xz_helloword
{
    [self xz_helloword];
    NSLog(@"%s",__func__);
}

@end
