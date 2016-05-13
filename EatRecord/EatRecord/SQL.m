//
//  SQL.m
//  EatRecord
//
//  Created by hourunjing on 16/5/11.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

NSString *const InsertEatRecordTable = @"INSERT INTO `EatRecord`(`recordDate`,`eatCategory`,`recordUrls`) \
                                          VALUES ('%@','%@','%@');";

NSString *const UpdateEatRecordTable = @"UPDATE EatRecord SET eatCategory='%@',recordUrls='%@' WHERE recordDate='%@'";

NSString *const DeleteEatRecordTable = @"DELETE FROM EatRecord";

NSString *const SelectEatCategoryTable = @"SELECT * FROM EatCategory";
NSString *const SelectEatRecordTable = @"SELECT * FROM EatRecord";

NSString *const WhereCondition = @" where ";
NSString *const AndCondition = @" and ";
NSString *const EatCategoryCategoryId = @"categoryId='%@'";
NSString *const EatCategoryCategoryName = @"categoryName='%@'";
NSString *const EatCategoryCategoryType = @"categoryType='%@'";
NSString *const EatRecordRecordDate = @"recordDate='%@'";
NSString *const EatRecordEatCategory = @"eatCategory='%@'";
NSString *const EatRecordRecordUrls = @"recordUrls='%@'";

#import "SQL.h"

@implementation SQL

@end
