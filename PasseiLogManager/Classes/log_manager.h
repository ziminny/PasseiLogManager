//
//  Header.h
//  
//
//  Created by Vagner Oliveira on 01/06/23.
//

#ifndef log_manager_h
#define log_manager_h

#import <Foundation/Foundation.h>
#import "constants.h"
#import <os/log.h>

@interface LogManager : NSObject
    +(void)dispachLog:(NSString * _Nonnull)message;
    +(NSString* _Nonnull)getBundleIdentifier;
    +(NSString* _Nonnull)getProductName;
@end


#endif /* log_manager_h */
