//
//  ViewController.m
//  collegeInventory
//
//  Created by admin on 2016-12-27.
//  Copyright © 2016 admin. All rights reserved.
//

#import "ViewController.h"
#import "profileview.h"
#import "homepage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    
    if ([segue.identifier isEqualToString:@"Home"]) {
        homepage *myView=(homepage *)segue.destinationViewController;
        
        myView.username = self.uname.text;
        myView.passwrd = self.password.text;
        
       
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(id)sender {
    
    
    
    
    if([self.uname.text isEqual:@""] && [self.password.text isEqual:@""])
        
    {
        
        UIAlertController * alert= [UIAlertController alertControllerWithTitle:@"Error"
                                                                       message:@"Please Enter user name and password."
                                    
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * defaultAction = [ UIAlertAction actionWithTitle:@"OK"
                                                                 style :UIAlertActionStyleDefault
                                                                handler:^(UIAlertAction * action )
                                         {}];
        [alert addAction :defaultAction ];
        [ self presentViewController : alert animated: YES completion : nil ];
        
        // prevent segue from occurring
        
    }

    
}
@end
