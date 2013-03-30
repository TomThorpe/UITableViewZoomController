//
//  TabOneViewController.m
//  UITableViewZoomController
//
//  Created by Thomas Thorpe on 25/02/2013.
//  Copyright (c) 2013 Thomas Thorpe. All rights reserved.
//

#import "TabTwoViewController.h"

@implementation TabTwoViewController

/**
 This example changes the initial alpha to be 1.0 so that the cell does not fade in. It also changes the animation duration to 0.5 seconds rather than the default, and changes the scale of both axes to be 0.9 so they are stretched less than the default, and zoom in (because the number is less than 1) rather than zooming out like the default does. It uses standard table view cells with text in rather than custom cells.
 */
-(void)viewDidLoad{
    self.cellZoomInitialAlpha = [NSNumber numberWithFloat:1.0];
    self.cellZoomAnimationDuration = [NSNumber numberWithFloat:0.5];
    self.cellZoomXScaleFactor = [NSNumber numberWithFloat:0.9];
    self.cellZoomYScaleFactor = [NSNumber numberWithFloat:0.9];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 3;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section Number %d", section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [NSString stringWithFormat:@"This is cell number %d", indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.detailTextLabel.text = @"Some more text here";
    cell.detailTextLabel.textColor = [UIColor whiteColor];
    return cell;
}



@end
