//
//  ViewController.m
//  Social Networking Sharing
//
//  Created by Bilal ARSLAN on 16/06/14.
//
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self buttonCustomazation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) buttonCustomazation
{
    self.twitter.layer.cornerRadius = 10;
    self.twitter.clipsToBounds = YES;
    self.facebook.layer.cornerRadius = 10;
    self.facebook.clipsToBounds = YES;
}


- (IBAction)postToTwitter:(id)sender
{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController
                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
        
        [tweetSheet setInitialText:@"Great fun to learn iOS programming with examples!"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
}

- (IBAction)postToFacebook:(id)sender
{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller addURL:[NSURL URLWithString:@"http://www.apple.com/"]];
        [controller addImage:[UIImage imageNamed:@"socialsharing-facebook-image.jpg"]];
        [controller setInitialText:@"First post from my iPhone app"];
        
        [self presentViewController:controller animated:YES completion:nil];
    }
}
@end
