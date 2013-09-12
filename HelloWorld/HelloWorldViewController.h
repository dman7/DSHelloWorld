//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Dmitri on 9/10/13.
//  Copyright (c) 2013 Dmitri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>
    @property (copy, nonatomic) NSString *userName;
@end
