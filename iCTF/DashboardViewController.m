//
//  DashboardViewController.m
//  iCTF
//
//  Created by Raja on 2/18/12.
//  Copyright 2012 Home. All rights reserved.
//

#import "DashboardViewController.h"
#import "AccountInfoViewController.h"
#import "MyArtifactsViewController.h"

#define ORANGE [UIColor colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0f]

@implementation DashboardViewController

- (id) init
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    return [super init];
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
    NSMutableDictionary *threadLocals = [[NSThread currentThread] threadDictionary];
    NSString *key = [threadLocals valueForKey:@"CTFKey"];
    NSLog(@"test: %@",key);
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    int index = [indexPath row];
    
    static NSString *cellIdentifier = @"DashboardCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	if (cell == nil) { 
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:cellIdentifier] autorelease];
	}
    
    UIFont *font = [UIFont fontWithName:@"Helvetica" size: 16];
    
    //UIImage *image = [UIImage imageNamed:@"setting_list.jpg"];
    //UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    //imageView.contentMode = UIViewContentModeScaleToFill;
    //cell.backgroundView = imageView;
    cell.textLabel.backgroundColor = [UIColor clearColor]; 
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];

    switch (index)
    {
        case 0:
            [[cell textLabel] setText: @"Account Information"];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 1:
            [[cell textLabel] setText: @"My Artifacts"];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 2:
            [[cell textLabel] setText: @"About iCTF"];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 3:
            [[cell textLabel] setText: @"Logout"];
            break;
        
    }
    [[cell textLabel] setFont:font];
    [[cell textLabel] setTextColor:ORANGE];
    [cell setSelectionStyle:UITableViewCellSelectionStyleGray];
    
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    return 75;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    int index = [indexPath row];
    switch (index)
    {
        case 0:
        {
            AccountInfoViewController *accountViewController = [[AccountInfoViewController alloc] init];
            accountViewController.title = @"Account Details";
            [self.navigationController pushViewController:accountViewController animated:YES];
            [accountViewController release];
            break;
        }
        case 1:
        {
            MyArtifactsViewController *myArtifactsViewController = [[MyArtifactsViewController alloc] init];
            myArtifactsViewController.title = @"My Artifacts";
            [self.navigationController pushViewController:myArtifactsViewController animated:YES];
            [myArtifactsViewController release];
        }
        default:
            break;
    }
	
}
@end
