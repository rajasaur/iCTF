//
//  ArtifactCommentsViewController.m
//  iCTF
//
//  Created by Raja on 3/5/12.
//  Copyright 2012 Home. All rights reserved.
//

#import "ArtifactCommentsViewController.h"
#import "SDZCollabNetSoapService.h"
#import "SDZCommentSoapList.h"


@implementation ArtifactCommentsViewController
@synthesize artifactId, spinner, commentList;

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

- (id) init
{
    self = [super init ];
    return self;
}

- (id) initWithArtifactId:(NSString *)artfId
{
    self = [self initWithStyle:UITableViewStylePlain ];
    self.artifactId = artfId;
    UITabBarItem *tabItem = [self tabBarItem];
    [tabItem setTitle:@"Comments"];
    [tabItem setImage:[UIImage imageNamed:@"comments.png"]];
    
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
    // Get the sessionkey and call getCommentList
    SDZCollabNetSoapService *binding;
    NSString *soapSessionId = [[NSUserDefaults standardUserDefaults] valueForKey:@"SoapSessionId"];
    NSString *serverInfo = [[NSUserDefaults standardUserDefaults] valueForKey:@"Server"];
    
    binding = [[SDZCollabNetSoapService alloc] 
               initWithUrl: [[NSString alloc] initWithFormat:@"%@/ce-soap60/services/CollabNet", serverInfo ]];   

    [spinner startAnimating];
    [binding getCommentList:self action:@selector(handleCommentList:) sessionId:soapSessionId objectId:[self artifactId]];
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

- (NSDateFormatter *) dateFormatter
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSLocale* enUS = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [formatter setLocale: enUS];
    [enUS release];
    [formatter setLenient: YES];
    [formatter setDateFormat:@"MM/dd/yyyy HH:mm"];
    return formatter;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.commentList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CommentCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:16.0];
    }
    
    // Configure the cell...
    NSString *cellText = [[NSString alloc] initWithString:[[self.commentList objectAtIndex:[indexPath row]] description]];
    [[cell textLabel] setText: cellText];
    NSString *updatedDetails = [[NSString alloc] initWithFormat:@"Updated by: %@ at: %@", [[self.commentList objectAtIndex:[indexPath row]] createdBy], [[self dateFormatter] stringFromDate:[[self.commentList objectAtIndex:[indexPath row]] dateCreated]]];
    [[cell detailTextLabel] setText: updatedDetails];
    
    return cell;
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

- (void)handleCommentList:(id) value
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
    
    SDZCommentSoapList* comments = (SDZCommentSoapList *) value;
    self.commentList = comments.dataRows;
    
    [self.spinner stopAnimating];
    [[self tableView ] reloadData];	
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellText = [[NSString alloc] initWithString:[[self.commentList objectAtIndex:[indexPath row]] description]];
    
    UIFont *cellFont = [UIFont fontWithName:@"Helvetica" size:16.0];
    CGSize constraintSize = CGSizeMake(280.0f, MAXFLOAT);
    CGSize labelSize = [cellText sizeWithFont:cellFont constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
    
    return labelSize.height + 30;
}



@end
