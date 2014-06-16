//
//  ViewController.h
//  Social Networking Sharing
//
//  Created by Bilal ARSLAN on 16/06/14.
//
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *twitter;
@property (weak, nonatomic) IBOutlet UIButton *facebook;

- (IBAction)postToTwitter:(id)sender;
- (IBAction)postToFacebook:(id)sender;



@end
