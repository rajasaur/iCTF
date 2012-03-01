//
//  MyArtifactsViewController.h
//  iCTF
//
//  Created by Raja on 2/26/12.
//  Copyright 2012 Home. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MyArtifactsViewController : UITableViewController {
}

@property (nonatomic, retain) UIActivityIndicatorView *spinner;
@property (nonatomic, retain) NSMutableArray *artifactList;
@end
