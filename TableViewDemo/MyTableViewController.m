
#import "MyTableViewController.h"


@implementation MyTableViewController {
    NSMutableArray* m_oArray ;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if( nil == self ) return nil ;
    
    m_oArray = [ [NSMutableArray alloc] initWithCapacity:100 ] ;
    for( int i=1 ; i<=100 ; ++i )
    {
        NSString* oText = [ NSString stringWithFormat:@"%d", i ] ;
        [ m_oArray addObject:oText ] ;
    }

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
    return m_oArray.count ;
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
        //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // 내용추가
    cell.textLabel.text = m_oArray[indexPath.row] ;
    
    // 반환
    return cell;
}


-(void) tableView:(UITableView*)tableView
            didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    
}

@end
