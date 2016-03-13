//
//  SignupNickNameViewController.m
//  tripFinder
//
//  Created by Anson Ng on 3/27/16.
//  Copyright © 2016 Anson Ng. All rights reserved.
//

#import "SignUpNickNameViewController.h"
#import "SignUpGenderViewController.h"
@interface SignUpNickNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nickNameTextField;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (strong, nonatomic) APTripFinderUser *user;
@end

@implementation SignUpNickNameViewController

- (instancetype)initWithNewUser:(APTripFinderUser *)user
{
    self  = [super init];
    if (self) {
        self.user = user;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapNextButton:(id)sender
{
    self.user.nickname = self.nickNameTextField.text;
    SignUpGenderViewController *signUpGenderViewController = [[SignUpGenderViewController alloc] initWithNewUser:self.user];
    [self.navigationController pushViewController:signUpGenderViewController animated:YES];
}

@end