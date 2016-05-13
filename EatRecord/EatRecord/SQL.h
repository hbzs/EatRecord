//
//  SQL.h
//  EatRecord
//
//  Created by hourunjing on 16/5/11.
//  Copyright © 2016年 hourunjing. All rights reserved.
//

//添加
extern NSString *const InsertEatRecordTable;
//更新
extern NSString *const UpdateEatRecordTable;
//删除
extern NSString *const DeleteEatRecordTable;
//查询
extern NSString *const SelectEatCategoryTable;
extern NSString *const SelectEatRecordTable;
//条件
extern NSString *const WhereCondition;
extern NSString *const AndCondition;
extern NSString *const EatCategoryCategoryId;
extern NSString *const EatCategoryCategoryName;
extern NSString *const EatCategoryCategoryType;
extern NSString *const EatRecordRecordDate;
extern NSString *const EatRecordEatCategory;
extern NSString *const EatRecordRecordUrls;

#import <Foundation/Foundation.h>

@interface SQL : NSObject

@end
