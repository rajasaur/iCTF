//
//  AccountInfoViewController.h
//  iCTF
//
//  Created by Raja on 2/25/12.
//  Copyright 2012 Home. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AccountInfoViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    IBOutlet UILabel *username;
}

@property (nonatomic,retain) NSString *server;
@property (nonatomic,retain) NSString *fullname;
@property (nonatomic, retain) NSString *ctfVersion;
@property (nonatomic, retain) UIActivityIndicatorView *spinner;
@end
