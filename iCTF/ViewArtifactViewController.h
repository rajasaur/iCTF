//
//  ViewArtifactViewController.h
//  iCTF
//
//  Created by Raja on 3/2/12.
//  Copyright 2012 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDZArtifactSoapDO.h"


@interface ViewArtifactViewController : UITableViewController {
    
}
@property (nonatomic, retain) NSString *artifactId;
@property (nonatomic, retain) UIActivityIndicatorView *spinner;
@property (nonatomic, retain) SDZArtifactSoapDO *artifactData;

@end
