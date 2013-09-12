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
    
    
    
    // QUESTION: IS there a need to alloc if we have ARC working?
    
    
    
    // Change the background color.
    //    UIView *backgroundView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //    backgroundView.backgroundColor = [UIColor blueColor];
    //    [self.view addSubview:backgroundView];
    // Let's set the current view's background directly without creating another one.
    self.view.backgroundColor = [UIColor cyanColor];
    
    // Create a text field.
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(10.0, 34.0, self.view.bounds.size.width - 20.0, 30)  ];
    tf.backgroundColor = [UIColor whiteColor];
    tf.placeholder = @"Please enter your name here";
    
    // Add the text field.
    [self.view addSubview:tf];

    
    // Create a label.
    UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - 30, 100, self.view.bounds.size.width - 20, 30) ];
    l.text = @"Hello, _!";
    l.backgroundColor = self.view.backgroundColor;
    l.font = [UIFont fontWithName:@"Times New Roman" size:18];
    
    // Add the label.
    [self.view addSubview:l];
    
    
    // Create a button.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.backgroundColor = [UIColor whiteColor];
    btn.frame = CGRectMake(10, 300, self.view.bounds.size.width - 20, 30);
    [btn setTitle:@"Enter" forState:UIControlStateNormal];
    
    
    // Add a button.
    [self.view addSubview:btn];

    
    
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
