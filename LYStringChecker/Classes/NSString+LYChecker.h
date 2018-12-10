//
//  NSString+LYChecker.h
//  LYStringChecker
//
//  Created by 余河川 on 2018/12/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LYChecker)

- (BOOL)ly_isOnlyNumber;

- (BOOL)ly_isMobilePhoneNumberInChina;

@end

NS_ASSUME_NONNULL_END
