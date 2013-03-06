
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
    return 1 ;
}


-(UITableViewCell*) tableView:(UITableView*)tableView
                        cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    // 생성/설정
    static NSString* const CellIdentifier = @"Cell";
    UITableViewCell *cell =
        [ tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if( nil == cell )
    {
        cell = [ [UITableViewCell alloc]
                    initWithStyle:UITableViewCellStyleDefault
                    reuseIdentifier:CellIdentifier ];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // 내용추가
    cell.textLabel.text = @"1" ;
    
    // 반환
    return cell;
}

@end
