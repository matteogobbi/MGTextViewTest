//
//  ViewController.m
//  MGTextViewTest
//
//  Created by Matteo Gobbi on 24/01/2015.
//  Copyright (c) 2015 Matteo Gobbi. All rights reserved.
//

#import "ViewController.h"

#import "MGTextView.h"


@interface ViewController () <UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    MGTextView *textView = [[MGTextView alloc] initWithFrame:(CGRect){{20.f, 100.f}, {300.f, 60.f}}];
    textView.delegate = self;
    [self.view addSubview:textView];
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    NSLog(@"Called");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
