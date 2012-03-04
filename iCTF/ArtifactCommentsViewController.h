//
//  ArtifactCommentsViewController.h
//  iCTF
//
//  Created by Raja on 3/5/12.
//  Copyright 2012 Home. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ArtifactCommentsViewController : UITableViewController {
    
}
@property (nonatomic, retain) NSString *artifactId;
@property (nonatomic, retain) UIActivityIndicatorView *spinner;
@property (nonatomic, retain) NSMutableArray *commentList;

-(id) initWithArtifactId: (NSString *) artfId;

@end
