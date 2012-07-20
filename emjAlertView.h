//
//  emjAlertView.h
//  
//
//  Created by Radif Sharafullin on 7/5/12.
//  Copyright (c) 2012 Radif Sharafullin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface emjAlertView : UIAlertView <UIAlertViewDelegate>
- (id)initWithTitle:(NSString *)title message:(NSString *)message completion:(void (^)(emjAlertView * alertView, NSInteger buttonIndex))completion cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;
+(void)showAlertWithTitle:(NSString *)title message:(NSString *)message configuration:(void (^)(emjAlertView * alertView))configuration completion:(void (^)(emjAlertView * alertView, NSInteger buttonIndex))completion cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;
@end
