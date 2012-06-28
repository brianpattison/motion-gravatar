//
//  GravatarHelper.h
//  Gravatar
//
//  Created by Mugunth Kumar on 11-Sep-10.
//  Copyright 2010 Steinlogic. All rights reserved.
//
//  Modified by Brian Pattison

#import <Foundation/Foundation.h>


@interface GravatarHelper : NSObject {
    
}
+ (NSURL*) getGravatarURL:(NSString*)emailAddress size:(int)size defaultURL:(NSString*)defaultURL;
@end