
#import "MyTableViewController.h"


@implementation MyTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if( nil == self ) return nil ;

    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
}


-(NSInteger) numberOfSectionsInTableView:(UITableView*)tableView
{
    return 1 ;
}


-(NSInteger) tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0 ;
}

@end
