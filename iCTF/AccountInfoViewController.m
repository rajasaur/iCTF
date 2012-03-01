//
//  AccountInfoViewController.m
//  iCTF
//
//  Created by Raja on 2/25/12.
//  Copyright 2012 Home. All rights reserved.
//

#import "AccountInfoViewController.h"
#import "SDZCollabNetSoapService.h"

@implementation AccountInfoViewController
@synthesize spinner, server, fullname, ctfVersion;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        [self.spinner setCenter:CGPointMake(160,124)]; 
        [self.view addSubview:self.spinner]; 
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
    SDZCollabNetSoapService *binding;
    NSString *soapSessionId = [[NSUserDefaults standardUserDefaults] valueForKey:@"SoapSessionId"];
    NSString *serverInfo = [[NSUserDefaults standardUserDefaults] valueForKey:@"Server"];
    NSString *user = [[NSUserDefaults standardUserDefaults] valueForKey:@"Username"];
    
    binding = [[SDZCollabNetSoapService alloc] 
               initWithUrl: [[NSString alloc] initWithFormat:@"%@/ce-soap60/services/CollabNet", serverInfo ]];   
    
    [self.spinner startAnimating];
    [binding getCurrentUserData:self action:@selector(handleCurrentUserData:) sessionId:soapSessionId];
    [binding getVersion:self action:@selector(handleVersion:) sessionId:soapSessionId];
    [username setText: user];
    
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

- (int) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    int index = [indexPath row];
    static NSString *cellIdentifier = @"AccInfoCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	if (cell == nil) { 
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellIdentifier] autorelease];
    }
    
    cell.textLabel.backgroundColor = [UIColor clearColor]; 
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
    
    NSString *cellText = nil;
    NSString *detailedText = nil;
    switch (index)
    {
        case 0:
            cellText = @"Name";
            detailedText = self.fullname;
            break;
        case 1:
        {
            NSString *serverInfo = [[NSUserDefaults standardUserDefaults] valueForKey:@"Server"];
            cellText = @"Server";
            detailedText = serverInfo;
            break;
        }
        case 2:
            cellText = @"Version";
            detailedText = self.ctfVersion;
            break;
    }
    [[cell textLabel] setText: cellText];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [[cell detailTextLabel] setText: detailedText];
    
    [cellText release];
    [detailedText release];
    
    return cell;
    
}

-(void)handleCurrentUserData:(id) value
{
    if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}
    
	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
    
    // Do something with the SDZUserSoapDO* result
    SDZUserSoapDO* result = (SDZUserSoapDO*)value;
    self.fullname = result.fullName;
}

-(void)handleVersion:(id) value
{
    self.ctfVersion = value;
    if ([self.ctfVersion length] == 0)
    {
        self.ctfVersion = @"Dev Build";
    }
    [self.spinner stopAnimating];
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[UITableView class] ])
        {
            [view reloadData];
        }
    }
}

@end
