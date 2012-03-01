//
//  LoginViewController.h
//  iCTF
//
//  Created by Raja on 2/18/12.
//  Copyright 2012 Home. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController <UITextFieldDelegate> {
    IBOutlet UITextField *server;
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    IBOutlet UISwitch *protocol;
    IBOutlet UILabel  *status;
 
}

@property (nonatomic, retain) UITextField *server;
@property (nonatomic, retain) UITextField *username;
@property (nonatomic, retain) UITextField *password;
@property (nonatomic, retain) UISwitch *protocol;

@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) UIActivityIndicatorView *spinner;

- (IBAction) login:(id)sender;
@end
