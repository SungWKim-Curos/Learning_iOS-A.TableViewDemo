//
//  DetailController.h
//  TableViewDemo
//
//  Created by Demo on 13. 3. 6..
//  Copyright (c) 2013년 curos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailController : UIViewController
{
@public
    NSString* m_oText ;
}

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@end
