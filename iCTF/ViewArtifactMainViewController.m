//
//  ViewArifactMainViewController.m
//  iCTF
//
//  Created by Raja on 3/4/12.
//  Copyright 2012 Home. All rights reserved.
//

#import "ViewArtifactMainViewController.h"
#import "ViewArtifactViewController.h"
#import "ArtifactCommentsViewController.h"

@implementation ViewArtifactMainViewController
@synthesize artifactId;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id) initWithArtifactId:(NSString *)artfId
{
    self = [self init];
    self.artifactId = artfId;
    self = [self initWithNibName:Nil bundle:Nil];
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    UIViewController *viewArtifactController = [[ViewArtifactViewController alloc] initWithArtifactId:[self artifactId]];
    UIViewController *artifactCommentsController = [[ArtifactCommentsViewController alloc] initWithArtifactId:[self artifactId]];
    NSArray *viewControllers = [NSArray arrayWithObjects:viewArtifactController, artifactCommentsController, nil];

    self.viewControllers = viewControllers;
    [viewArtifactController release];

    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
