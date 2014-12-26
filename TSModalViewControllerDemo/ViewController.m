//
//  ViewController.m
//  TSModalViewControllerDemo
//
//  Created by CreeveLiu on 14/12/26.
//  Copyright (c) 2014年 sumavision. All rights reserved.
//

#import "ViewController.h"
#import "ToShowModalViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)didClickedGoButton:(id)sender
{
    ToShowModalViewController *viewController = [[ToShowModalViewController alloc] init];
    viewController.modalPresentationStyle = UIModalPresentationFormSheet;
    [viewController.view setBackgroundColor:[UIColor whiteColor]];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
