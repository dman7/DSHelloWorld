//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Dmitri on 9/10/13.
//  Copyright (c) 2013 Dmitri. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@property (weak, nonatomic) UITextField *textField;
@property (weak, nonatomic) UILabel *label;

//- (IBAction)changeGreeting:(id)sender;
//
@end

@implementation HelloWorldViewController

- (id) init
{
    self = [super init];
    return self;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Change the background color.
//    UIView *backgroundView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    backgroundView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:backgroundView];
//    
    //
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    
    NSString *greeting = [ [NSString alloc] initWithFormat:@"Hello, %@!", nameString ];
    self.label.text = greeting;
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}




@end
