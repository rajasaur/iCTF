//
//  MyArtifactsViewController.m
//  iCTF
//
//  Created by Raja on 2/26/12.
//  Copyright 2012 Home. All rights reserved.
//

#import "MyArtifactsViewController.h"
#import "SDZTrackerAppSoapService.h"
#import "SDZSoapFilter.h"
#import "SDZArrayOf_tns1_SoapFilter.h"
#import "ViewArtifactViewController.h"

@implementation MyArtifactsViewController

@synthesize artifactList, spinner;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        [self.spinner setCenter:CGPointMake(160,124)]; 
        [self.view addSubview:self.spinner]; 
    }
    return self;
}

- (void)dealloc
{
    [self.artifactList release];
    [self.spinner release];
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
    [super viewDidLoad];

    // Get the sessionkey and call myartifacts
    SDZTrackerAppSoapService *binding;
    NSString *soapSessionId = [[NSUserDefaults standardUserDefaults] valueForKey:@"SoapSessionId"];
    NSString *serverInfo = [[NSUserDefaults standardUserDefaults] valueForKey:@"Server"];
    NSString *username = [[NSUserDefaults standardUserDefaults] valueForKey:@"Username"];
    
    SDZSoapFilter *assignedToSelfFilter = [[SDZSoapFilter alloc] init];
    assignedToSelfFilter.name = @"assignedTo";
    assignedToSelfFilter.value = username;
    SDZSoapFilter *openStatusFilter = [[SDZSoapFilter alloc]init ];
    openStatusFilter.name = @"statusClass";
    openStatusFilter.value = @"Open";
    
    NSArray *filters = [[NSArray alloc] initWithObjects: assignedToSelfFilter, openStatusFilter, nil];
    SDZArrayOf_tns1_SoapFilter *soapFilters = [[SDZArrayOf_tns1_SoapFilter alloc] initWithArray:filters];
    
    [ assignedToSelfFilter release];
    [ openStatusFilter release];
    
    binding = [[SDZTrackerAppSoapService alloc] 
               initWithUrl: [[NSString alloc] initWithFormat:@"%@/ce-soap60/services/TrackerApp", serverInfo ]];   
        
    [self.spinner startAnimating];
    [ binding getArtifactList:self action:@selector(handleMyArtifacts:) sessionId:soapSessionId containerId:@"" filters: soapFilters];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.artifactList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyArtifactsCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:16.0];
    }
    
    // Configure the cell...
    NSString *cellText = [[NSString alloc] initWithFormat:@"%@: %@", 
            [[self.artifactList objectAtIndex:[indexPath row]] _id] ,
                          [[self.artifactList objectAtIndex:[indexPath row]] title]];
    [[cell textLabel] setText: cellText];
    NSString *projectTitle = [[NSString alloc] initWithFormat:@"Filed in Project: '%@'", [[self.artifactList objectAtIndex:[indexPath row]] projectTitle]];
    [[cell detailTextLabel] setText: projectTitle];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;
}

- (void)handleMyArtifacts:(id) value
{
    // Handle errors
    if([value isKindOfClass:[NSError class]]) {
        NSLog(@"%@", value);
        [self.spinner stopAnimating];
        return;
    }
    
    // Handle faults
    if([value isKindOfClass:[SoapFault class]]) {
        NSLog(@"%@", value);
        [self.spinner stopAnimating];
        return;
    } 

    SDZArtifactSoapList* artfList = (SDZArtifactSoapList *) value;
    self.artifactList = artfList.dataRows;
    
    [self.spinner stopAnimating];
    [[self tableView ] reloadData];	
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellText = [[NSString alloc] initWithFormat:@"%@: %@", 
                          [[self.artifactList objectAtIndex:[indexPath row]] _id] ,
                          [[self.artifactList objectAtIndex:[indexPath row]] title]];
    
    UIFont *cellFont = [UIFont fontWithName:@"Helvetica" size:16.0];
    CGSize constraintSize = CGSizeMake(280.0f, MAXFLOAT);
    CGSize labelSize = [cellText sizeWithFont:cellFont constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
    
    return labelSize.height + 20;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewArtifactViewController *viewArtifactViewController = [[ViewArtifactViewController alloc] init];
    viewArtifactViewController.title = @"View Artifact Data";
    [self.navigationController pushViewController:viewArtifactViewController animated:YES];
    [viewArtifactViewController release];
}

@end
