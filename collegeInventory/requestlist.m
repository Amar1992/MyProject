//
//  requestlist.m
//  collegeInventory
//
//  Created by admin on 2017-03-13.
//  Copyright © 2017 admin. All rights reserved.
//

#import "requestlist.h"
#import "requestdetail.h"

@interface requestlist ()

@end

@implementation requestlist

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *url=@"http://144.217.163.57:8080/cegepgim/mobile/mycall/requestItem";
    NSURLSession *mysession=[NSURLSession sharedSession];
    
    [[mysession dataTaskWithURL:[NSURL URLWithString:url] completionHandler:^(NSData * data, NSURLResponse * response, NSError * error) {
        
        if(data.length>0 && error==nil)
        {
            NSDictionary *myobject=[NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            
            
            NSArray *list1=[myobject objectForKey:@"RequestItems"];
            
            
            NSMutableArray *mylistarray=[NSMutableArray arrayWithCapacity:list1.count];
            
            for(NSDictionary *result in list1 )
            {
                
                NSString *items=[result objectForKey:@"Item_Name"];
                
                NSString *final = [[NSString alloc] initWithFormat:@"%1$@",items ];
                
                
                [mylistarray addObject:final];
                
                
                self.myTitleArray=[mylistarray copy];
                
                
                
            }
        }
        
    }]resume];
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    while([self.myTitleArray count]==0)
    {
        [self.myTitleArray count];
    }
    return [self.myTitleArray count];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"request" forIndexPath:indexPath];
    
    cell.textLabel.text=[self.myTitleArray objectAtIndex:indexPath.row];
    
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"requestdetail"])
    {
        requestdetail *myview=(requestdetail *)segue.destinationViewController;
        NSString *myURL = [NSString stringWithFormat:@"http://144.217.163.57:8080/cegepgim/mobile/mycall/requestItem&%1@",self.myItem];
        
        myview.url = myURL;
        
    }
    
}

-(void) tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    
    self.myItem = [self.myTitleArray objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"requestdetail" sender:self];
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

@end
