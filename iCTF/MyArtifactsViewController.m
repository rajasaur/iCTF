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

@implementation MyArtifactsViewController

@synthesize artifactList;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
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
        
    [ binding getArtifactList:self action:@selector(handleMyArtifacts:) sessionId:soapSessionId 
                  containerId:@"" filters: soapFilters];
    
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
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    
    return cell;
}

- (void)handleMyArtifacts:(id) value
{
    // Handle errors
    if([value isKindOfClass:[NSError class]]) {
        NSLog(@"%@", value);
        return;
    }
    
    // Handle faults
    if([value isKindOfClass:[SoapFault class]]) {
        NSLog(@"%@", value);
        return;
    } 

    SDZArtifactSoapList* artfList = (SDZArtifactSoapList *) value;
    NSMutableArray *artifacts = artfList.dataRows;
    
    for (SDZArtifactSoapRow *record in artifacts) {
        NSLog(@"%@", record.description);
    }
    NSLog(@"Inside hte loop");
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}

@end
