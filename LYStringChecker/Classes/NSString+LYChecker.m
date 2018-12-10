//
//  NSString+LYChecker.m
//  LYStringChecker
//
//  Created by 余河川 on 2018/12/10.
//

#import "NSString+LYChecker.h"

@implementation NSString (LYChecker)

- (BOOL)ly_isOnlyNumber {
    NSString *reg = @"^[0-9]*$";
    return [self _ly_matchesRegular:reg];
}

- (BOOL)ly_isMobilePhoneNumberInChina {
    NSString *reg = @"^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$";
    return [self _ly_matchesRegular:reg];
}

- (BOOL)_ly_matchesRegular:(NSString *)reg {
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [predicate evaluateWithObject:self];
}

@end
