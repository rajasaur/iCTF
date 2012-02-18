//
//  iCTFAppDelegate.h
//  iCTF
//
//  Created by Raja on 20/10/11.
//  Copyright 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iCTFAppDelegate : NSObject <UIApplicationDelegate, UITextFieldDelegate> {
    IBOutlet UITextField *server;
    IBOutlet UITextField *username;
    IBOutlet UITextField *password;
    IBOutlet UISwitch *protocol;
    IBOutlet UILabel  *status;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction) login:(id)sender;

@end
