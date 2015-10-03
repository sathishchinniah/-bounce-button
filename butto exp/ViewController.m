//
//  ViewController.m
//  butto exp
//
//  Created by Sathish Chinniah on 09/08/15.
//  Copyright (c) 2015 sathish chinniah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController
@synthesize buttonClick;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    buttonClick.frame = CGRectMake(70, 50, 50, 50);
    
    // animate
    [UIView animateWithDuration:1.75 animations:^{
        buttonClick.frame = CGRectMake(70, 50, 50, 70);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonclick:(id)sender {
    
    
    
}
@end
