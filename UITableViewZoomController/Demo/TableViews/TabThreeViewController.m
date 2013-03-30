//
//  TabTwoViewController.m
//  UITableViewZoomController
//
//  Created by Thomas Thorpe on 25/02/2013.
//  Copyright (c) 2013 Thomas Thorpe. All rights reserved.
//

#import "TabThreeViewController.h"

/**
 This example uses the cellZoomXOffset and cellZoomYOffset properties to get the cell to appear 
 diagonally from the bottom left, as well as the cellZoomAnimationDuration property to increase the speed. 
 */
@implementation TabThreeViewController

-(void)viewDidLoad{
    [self.tableView registerNib:[UINib nibWithNibName:@"FancyCellView" bundle:nil]
         forCellReuseIdentifier:@"FancyCellView"];
    
    self.cellZoomXOffset = [NSNumber numberWithFloat:-75];
    self.cellZoomYOffset = [NSNumber numberWithFloat:75];
    self.cellZoomAnimationDuration = [NSNumber numberWithFloat:0.3];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return 50;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 204;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"FancyCellView";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    return cell;
}



@end
