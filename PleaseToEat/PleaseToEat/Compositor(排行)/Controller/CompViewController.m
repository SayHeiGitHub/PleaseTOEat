//
//  CompViewController.m
//  PleaseToEat
//
//  Created by 姜鸥人 on 16/4/20.
//  Copyright © 2016年 HeiCoder_OR. All rights reserved.
//

#import "CompViewController.h"
#import "ScreenViewController.h"
@interface CompViewController ()

@end

@implementation CompViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
   self.navigationItem.title = @"返回";
    UISegmentedControl *seg = [[UISegmentedControl alloc]initWithItems:@[@"热门",@"附近" ]];
    seg.tintColor = [UIColor whiteColor];
    seg.frame = CGRectMake(0, 0, 180, seg.frame.size.height);
    seg.selectedSegmentIndex = 0;
    seg.layer.cornerRadius = seg.frame.size.height/2;
    seg.layer.borderWidth = 1.0;
    seg.layer.masksToBounds = YES;
    self.navigationItem.titleView= seg;
//    
//    UIImage *imagess = [[UIImage imageNamed:@"NaviUnFiltered"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"NaviUnFiltered"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBtnAction:)];
//    // 富文本方式 改变颜色
//    NSMutableDictionary *selectedTextAttrs = [NSMutableDictionary dictionary];
//    selectedTextAttrs[NSBackgroundColorAttributeName] = [UIColor whiteColor];
//    [self.navigationItem.rightBarButtonItem setTitleTextAttributes:selectedTextAttrs forState:UIControlStateNormal];
//    [self.navigationItem.rightBarButtonItem setTintColor:[UIColor blackColor]];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    [self.navigationItem setRightBarButtonItem:rightButton];
    
    
}

-(void)rightBtnAction:(UIBarButtonItem *)sender{
    ScreenViewController *screen = [[ScreenViewController alloc]init];
    [self.navigationController pushViewController:screen animated:YES];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}


- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}



/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
