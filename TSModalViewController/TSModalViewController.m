//
//  TSModalViewController.m
//  TSModalViewControllerDemo
//
//  Created by CreeveLiu on 14/12/26.
//  Copyright (c) 2014年 sumavision. All rights reserved.
//

#import "TSModalViewController.h"

@implementation TSModalViewController
{
    UITapGestureRecognizer *_tapRecognizer;
}

#pragma -mark 点击模态视图外的空白处隐藏模态视图

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    _tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapBehind:)];
    [_tapRecognizer setNumberOfTapsRequired:1];
    _tapRecognizer.cancelsTouchesInView = NO;
    [self.view.window addGestureRecognizer:_tapRecognizer];
    [_tapRecognizer setDelegate:(id<UIGestureRecognizerDelegate>)self];
}

- (void)handleTapBehind:(UITapGestureRecognizer *)sender
{
    if (sender.state == UIGestureRecognizerStateEnded) {
        
        CGPoint location = [sender locationInView:nil];
        
        if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation)) {
            location = CGPointMake(location.y, location.x);
        }
        
        if (![self.view pointInside:[self.view convertPoint:location fromView:self.view.window] withEvent:nil]) {
            
            [self.view.window removeGestureRecognizer:sender];
            [self dismissViewControllerAnimated:YES completion:nil];
        }
    }
}

#pragma mark - UIGestureRecognizer Delegate

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    return YES;
}

@end
