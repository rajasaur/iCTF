//
//  LoginViewController.m
//  iCTF
//
//  Created by Raja on 2/18/12.
//  Copyright 2012 Home. All rights reserved.
//

#import "SDZCollabNetSoapService.h"
#import "LoginViewController.h"
#import "DashboardViewController.h"

#define ORANGE [UIColor colorWithRed:0.154 green:0.154 blue:0.154 alpha:1.0f]

@interface LoginViewController()
  -(void) testLogin;
@end

@implementation LoginViewController

@synthesize navigationController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super.navigationController release];
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

- (BOOL) textFieldShouldReturn:(UITextField *)textField 
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction) login:(id)sender
{
    NSString *serverName = [ server text ];
    NSString *user = [ username text ];
    NSString *userPass = [ password text ];
    Boolean protocolStatus = [ protocol isOn ];
    SDZCollabNetSoapService *binding;
    
    if (protocolStatus) {
        binding = [[SDZCollabNetSoapService alloc] 
                   initWithUrl: [[NSString alloc] initWithFormat:@"https://%@/ce-soap60/services/CollabNet", serverName ]];
        
        
    } else {
        binding = [[SDZCollabNetSoapService alloc] 
                   initWithUrl: [[NSString alloc] initWithFormat:@"http://%@/ce-soap60/services/CollabNet", serverName ]];    
    }
    //[ binding login:self action:@selector(handleLogin:) userName:user password:userPass];
    [self testLogin];
}

- (void)showDashboardPage
{
    DashboardViewController *dashboardViewController = [[DashboardViewController alloc] initWithNibName:@"DashboardViewController" bundle:nil];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:dashboardViewController];
    CGRect frame = navigationController.view.frame;
    frame.origin.y = 0.0f;
    frame.origin.x = 0.0f;
    self.navigationController.view.frame = frame;
    self.navigationController.navigationBar.tintColor = ORANGE;
    [dashboardViewController setTitle:@"Dashboard"];
    [dashboardViewController release];
}

- (void)testLogin {
    [self showDashboardPage];
    NSMutableDictionary *threadLocals = [[NSThread currentThread] threadDictionary];
    [threadLocals setValue:@"TestString" forKey:@"CTFKey"];
    [self presentModalViewController:navigationController animated:NO	];
	
}

// This will be called when we actually start using SOAP calls.
- (void)handleLogin:(id)value {
    NSString *display;
    if ([value isKindOfClass:([SoapFault class])]) {
        display = [ value faultString ];
        [status setText:display ];
        return;
    } 
    [self showDashboardPage];
    NSMutableDictionary *threadLocals = [[NSThread currentThread] threadDictionary];
    [threadLocals setValue:@"TestString" forKey:@"CTFKey"];
    [self presentModalViewController:navigationController animated:NO	];
}


@end
