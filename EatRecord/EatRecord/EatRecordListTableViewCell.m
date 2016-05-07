//
//  EatRecordListTableViewCell.m
//  EatRecord
//
//  Created by hourunjing on 16/5/7.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

#import "EatRecordListTableViewCell.h"

@implementation EatRecordListTableViewCell

- (void)awakeFromNib {
  [super awakeFromNib];
  self.dateLabel.text = [[NSDate dateWithString:@"20160505" formatString:@"yyyyMMdd"] formattedDateWithStyle: NSDateFormatterFullStyle];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
