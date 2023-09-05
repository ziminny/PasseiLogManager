//
//  log_manager.m
//  
//
//  Created by Vagner Oliveira on 01/06/23.
//

#import <Foundation/Foundation.h>

#import "log_manager.h"

// Private methods
@interface LogManager()

@end

@implementation LogManager

- (instancetype)init {
    self = [super init];
    
    return self;
}

+(void)dispachLog:(NSString *)message {
    
    NSString *productName = [LogManager getProductName];
    
    
    #if DEBUG
    NSError *error = nil;
    
     NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:PATH_LOG_DEBUG];
    
    if (fileHandle == nil) {
        [[NSFileManager defaultManager] createFileAtPath:PATH_LOG_DEBUG contents:nil attributes:nil];
        fileHandle = [NSFileHandle fileHandleForWritingAtPath:PATH_LOG_DEBUG];
    }
    
    // Move o cursor para o final do arquivo
    [fileHandle seekToEndOfFile];
    
    NSString *fromatMessage = [NSString stringWithFormat:@"%@\n",message];
    
    NSData *data = [fromatMessage dataUsingEncoding:NSUTF8StringEncoding];
    
    [fileHandle writeData:data];
        
    [fileHandle closeFile];
        
    #else
        os_log_t logger = nil;
        NSString *bundleIdentifier = [LogManager getBundleIdentifier];
        const char *identifier = [bundleIdentifier UTF8String];
     
        const char *productNameChar = [productName UTF8String];
      
        logger = os_log_create(identifier,productNameChar);
        os_log(logger, "%{public}s", [message UTF8String]);
    #endif
}

 

+(NSString * _Nonnull)getBundleIdentifier {
    NSString *bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];
    return bundleIdentifier;
}

+(NSString * _Nonnull)getProductName {
    NSBundle *bundle = [NSBundle mainBundle];
    NSDictionary *info = [bundle infoDictionary];
    NSString *prodName = [info objectForKey:@"CFBundleName"];
    return prodName;
}

@end
