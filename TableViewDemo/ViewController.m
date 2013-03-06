
#import "ViewController.h"

#import "MyTableViewController.h"


@implementation ViewController

-(IBAction) DemoDidClick
{
    MyTableViewController* oTblVw =
        [ [MyTableViewController alloc]
            initWithNibName:@"MyTableViewController" bundle:nil ] ;
    
    [ self.navigationController
        pushViewController:oTblVw animated:TRUE ] ;
}

@end
