//
//  ViewArifactMainViewController.h
//  iCTF
//
//  Created by Raja on 3/4/12.
//  Copyright 2012 Home. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewArtifactMainViewController : UITabBarController {
    
}
@property (nonatomic, retain) NSString *artifactId;

- (id) initWithArtifactId:(NSString *)artfId;
@end
