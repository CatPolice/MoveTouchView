//
//  CustomView.m
//  MoveTouchView
//
//  Created by gavin on 15/8/18.
//  Copyright (c) 2015年 gavin. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

int curX;
int curY;

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    
    CGPoint point = [touch locationInView:self];
    
    curX = point.x;
    curY = point.y;
    
    [self setNeedsDisplay];
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch =  [touches anyObject];
    
    CGPoint point = [touch locationInView:self];
    
    curX = point.x;
    curY = point.y;
    
    [self setNeedsDisplay];
}


- (void)drawRect:(CGRect)rect{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [[UIColor redColor] CGColor]);
    
    CGContextFillRect(context, CGRectMake(curX, curY, 10, 10));
}

@end
