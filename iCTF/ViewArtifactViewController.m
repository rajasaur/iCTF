//
//  ViewArtifactViewController.m
//  iCTF
//
//  Created by Raja on 3/2/12.
//  Copyright 2012 Home. All rights reserved.
//

#import "ViewArtifactViewController.h"
#import "SDZTrackerAppSoapService.h"w


@implementation ViewArtifactViewController
@synthesize artifactData, spinner, artifactId, artifactIdFetched;

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
    self = [self initWithStyle:UITableViewStyleGrouped ];
    self.artifactId = artfId;
    UITabBarItem *tabItem = [self tabBarItem];
    [tabItem setTitle:@"Artifact"];
    [tabItem setImage:[UIImage imageNamed:@"tracker.png"]];

    return self;
}

- (void)dealloc
{
    [self.spinner release];
    [self.artifactData release];
    [self.artifactId release];
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
    // Get the sessionkey and call myartifacts
    SDZTrackerAppSoapService *binding;
    NSString *soapSessionId = [[NSUserDefaults standardUserDefaults] valueForKey:@"SoapSessionId"];
    NSString *serverInfo = [[NSUserDefaults standardUserDefaults] valueForKey:@"Server"];
    
    binding = [[SDZTrackerAppSoapService alloc] 
               initWithUrl: [[NSString alloc] initWithFormat:@"%@/ce-soap60/services/TrackerApp", serverInfo ]];   
    
    [self.spinner startAnimating];
    [binding getArtifactData:self action:@selector(handleArtifactData:) sessionId:soapSessionId artifactId:self.artifactId];

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
    if (![self artifactIdFetched])
    {
        return 0;
    }
    // Return the number of sections -- one for summary, one for regular metadata, one for release fields and one for estimates
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (![self artifactIdFetched])
    {
        return 0;
    }
    
    int numberOfRows = 0;    
    if (section == 0)
    {
        numberOfRows = 6;
    } 
    else if (section == 1)
    {
        numberOfRows =  7;
    }
    else if (section == 2)
    {
        numberOfRows = 2;
    }
    else if (section == 3)
    {
        numberOfRows = 3;
    }
    return numberOfRows;
}

- (NSString *) valueOrDefaultString:(NSString *) str
{
    if ([str length] == 0)
        return @"None";
    else
        return str;
}

- (NSString *) getDetailedTextForSection:(int)section AndRow:(int)row
{
    NSString *detailText = nil;
    if (section == 0)
    {
        switch (row)
        {
            case 0:
            {
                detailText = [self valueOrDefaultString:[self.artifactData folderId]];
                break;
            }
            case 1:
            {
                detailText = [self valueOrDefaultString:[self.artifactData title]];
                break;
            }
            case 2:
            {
                detailText = [self valueOrDefaultString:[self.artifactData description]];
                break;
            }
            case 3:
            {
                detailText = [self.artifactData createdBy];
                break;
            }
            case 4:
            {
                detailText = [[self dateFormatter] stringFromDate: [self.artifactData createdDate]];
                break;
            }
            case 5:
            {
                detailText = [[self dateFormatter] stringFromDate:[self.artifactData lastModifiedDate]];
                break;
            }
        }
    }
    else if (section == 1)
    {
        switch (row)
        {
            case 0:
                detailText = [self valueOrDefaultString:[self.artifactData group]];
                break;
            case 1:
                detailText = [self valueOrDefaultString:[self.artifactData status]];
                break;
            case 2:
                detailText = [self valueOrDefaultString:[self.artifactData category]];
                break;
            case 3:
                detailText = [self valueOrDefaultString:[self.artifactData customer]];
                break;
            case 4:
                detailText = [[NSNumber numberWithInt:[self.artifactData priority]] stringValue];
                break;
            case 5:
                detailText = [self valueOrDefaultString:[self.artifactData assignedTo]];
                break;
            case 6:
                detailText = [self valueOrDefaultString:[self.artifactData planningFolderId]];
                break;
        }
    }
    else if (section == 2)
    {
        switch (row)
        {
            case 0:
                detailText = [self valueOrDefaultString:[self.artifactData reportedReleaseId]];
                break;
            case 1:
                detailText = [self valueOrDefaultString:[self.artifactData resolvedReleaseId]];
                break;
        }
    }
    else if (section == 3)
    {
        switch (row)
        {
            case 0:
                detailText = [[NSNumber numberWithInt:[self.artifactData estimatedEffort]] stringValue];
                break;
            case 1:
                detailText = [[NSNumber numberWithInt:[self.artifactData remainingEffort]] stringValue];
                break;
            case 2:
                detailText = [[NSNumber numberWithInt:[self.artifactData actualEffort]] stringValue];
                break;
        }
    }

    return detailText;
}

- (NSString *) getCellTextForSection:(int)section AndRow:(int) row
{
    NSString *labelText = nil;
    
    if (section == 0)
    {
        switch (row)
        {
            case 0:
                labelText = @"Tracker";
                break;
            case 1:
                labelText = @"Title";
                break;
            case 2:
                labelText = @"Description";
                break;
            case 3:
                labelText = @"Created by";
                break;
            case 4:
                labelText = @"Created on";
                break;
            case 5:
                labelText = @"Modified";
                break;
        }
    } 
    else if (section == 1)
    {
        switch (row)
        {
            case 0:
                labelText = @"Group";
                break;
            case 1:
                labelText = @"Status";
                break;
            case 2:
                labelText = @"Category";
                break;
            case 3:
                labelText = @"Customer";
                break;
            case 4:
                labelText = @"Priority";
                break;
            case 5:
                labelText = @"Assignee";
                break;
            case 6:
                labelText = @"Planned in";
                break;
        }
    }
    else if (section == 2)
    {
        switch (row)
        {
            case 0:
                labelText = @"Reported";
                break;
            case 1:
                labelText = @"Fixed";
                break;
        }
    }
    else if (section == 3)
    {
        switch (row)
        {
            case 0:
                labelText = @"Estimated";
                break;
            case 1:
                labelText = @"Remaining";
                break;
            case 2:
                labelText = @"Actual";
                break;
        }
    }
    return labelText;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"ArtifactData";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellIdentifier] autorelease];
        cell.detailTextLabel.lineBreakMode = UILineBreakModeWordWrap;
        cell.detailTextLabel.numberOfLines = 0;
        cell.detailTextLabel.font = [UIFont fontWithName:@"Helvetica" size:16.0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    if (![self artifactIdFetched])
    {
        return cell;
    }
    
    NSString *labelText = [self getCellTextForSection:[indexPath section] AndRow:[indexPath row]];
    NSString *detailText = [self getDetailedTextForSection:[indexPath section] AndRow:[indexPath row]];
                            

    [[cell textLabel] setText:labelText];
    [[cell detailTextLabel] setText: detailText];
    
    return cell;
}

- (void)handleArtifactData:(id) value
{
    [self.spinner stopAnimating];
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
    
    // Do something with the SDZArtifactSoapDO* result
    self.artifactData = (SDZArtifactSoapDO*)value;
    self.artifactIdFetched = TRUE;
    [[self tableView ] reloadData];
        
}
     

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellText = [self getDetailedTextForSection:[indexPath section] AndRow:[indexPath row]];
    if ([cellText length] == 0)
    {
        cellText = @"DummyString";
    }
    
    UIFont *cellFont = [UIFont fontWithName:@"Helvetica" size:16.0];
    CGSize constraintSize = CGSizeMake(200.0f, MAXFLOAT);
    CGSize labelSize = [cellText sizeWithFont:cellFont constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
    	
    return labelSize.height + 20;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionTitle = nil;
    switch (section)
    {
        case 0:
            sectionTitle = [[NSString alloc] initWithFormat:@"%@: %@", 
                            [self.artifactData _id], 
                            [self.artifactData title]];
                                  
            break;
        case 1:
            sectionTitle = @"Base Fields";
            break;
        case 2:
            sectionTitle = @"Release Information";
            break;
        case 3:
            sectionTitle = @"Effort Information"; 
            break;
    }
    return sectionTitle;
}
@end
