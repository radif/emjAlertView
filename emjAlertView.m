//
//  emjAlertView.m
//  
//
//  Created by Radif Sharafullin on 7/5/12.
//  Copyright (c) 2012 Radif Sharafullin. All rights reserved.
//

#import "emjAlertView.h"

#import "emjAssertArc.h"

@interface emjAlertView ()
@property (copy, nonatomic) void (^completion)(emjAlertView * alertView, NSInteger buttonIndex);
@end
@implementation emjAlertView
- (id)initWithTitle:(NSString *)title message:(NSString *)message completion:(void (^)(emjAlertView * alertView, NSInteger buttonIndex))completion cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    
    self.completion = completion;
    return [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
}
+(void)showAlertWithTitle:(NSString *)title message:(NSString *)message configuration:(void (^)(emjAlertView * alertView))configuration completion:(void (^)(emjAlertView * alertView, NSInteger buttonIndex))completion cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    
    emjAlertView *alert=[[emjAlertView alloc] initWithTitle:title message:message completion:completion cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
    if(configuration)
        configuration(alert);
    [alert show];
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (self.completion)
        self.completion(self, buttonIndex);
}
@end
