//
//  ViewController.m
//  UITextField Demo
//
//  Created by Henry on 3/23/13.
//  Copyright (c) 2013 Pyrogusto Studio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void) setTextField:(UITextField *)textField{
    _textField = textField;
    _textField.delegate = self;
}

- (IBAction)makeResponserBtnClicked:(id)sender {
    [self.textField becomeFirstResponder];
}

- (IBAction)exitResponderBtnClicked:(id)sender {
    [self.textField resignFirstResponder];
}

#pragma mark - textview delegate

// Managing Editing
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"textFieldShouldBeginEditing");
    return YES;
}


- (void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"textFieldDidBeginEditing");
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    NSLog(@"textFieldShouldEndEditing");
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"textFieldDidEndEditing");
}

// Editing the Text Field’s Text
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSLog(@"shouldChangeCharactersInRange");
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"textFieldShouldReturn");
    [self.textField resignFirstResponder];
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    NSLog(@"textFieldShouldClear");
    return YES;
}


@end
