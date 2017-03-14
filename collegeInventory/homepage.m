//
//  homepage.m
//  collegeInventory
//
//  Created by admin on 2017-03-04.
//  Copyright © 2017 admin. All rights reserved.
//

#import "homepage.h"
#import "profileview.h"
#import "ViewController.h"

@interface homepage ()

@end

@implementation homepage



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    
    if ([segue.identifier isEqualToString:@"myprofile"]) {
        profileview *myView=(profileview *)segue.destinationViewController;
        
        
        
        NSString *myUrl = [NSString stringWithFormat:@"http://144.217.163.57:8080/cegepgim/mobile/mycall/userProfile&%1$@&%2$@",self.username,self.passwrd];
    
        
        
        myView.url = myUrl;
        
    }
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)myaccount:(id)sender {
}
@end
