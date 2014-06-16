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


- (IBAction)postToTwitter:(id)sender {

    }
}

- (IBAction)postToFacebook:(id)sender {
}
@end
