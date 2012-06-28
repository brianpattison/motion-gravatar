//
//  GravatarHelper.m
//  Gravatar
//
//  Created by Mugunth Kumar on 11-Sep-10.
//  Copyright 2010 Steinlogic. All rights reserved.
//
//  Modified by Brian Pattison

#import "GravatarHelper.h"
#import <CommonCrypto/CommonDigest.h>

@implementation GravatarHelper

+ (NSURL*) getGravatarURL:(NSString*)emailAddress size:(int)size defaultURL:(NSString*)defaultURL
{
  NSString *curatedEmail = [[emailAddress stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] lowercaseString];
	
  const char *cStr = [curatedEmail UTF8String];
  unsigned char result[16];
  CC_MD5(cStr, strlen(cStr), result); // compute MD5
	
  NSString *md5email = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
    result[0], result[1], result[2], result[3], 
    result[4], result[5], result[6], result[7],
    result[8], result[9], result[10], result[11],
    result[12], result[13], result[14], result[15]
  ];
  
  NSString *gravatarEndPoint;

	if (defaultURL != nil) {
	  NSString *escapedDefaultURL = (NSString *)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)defaultURL, NULL, (CFStringRef)@"!’\"();:@&=+$,/?%#[]% ", kCFStringEncodingISOLatin1);
    gravatarEndPoint = [NSString stringWithFormat:@"http://www.gravatar.com/avatar/%@?s=%d&d=%@", md5email, size, escapedDefaultURL];
	} else {
    gravatarEndPoint = [NSString stringWithFormat:@"http://www.gravatar.com/avatar/%@?s=%d", md5email, size];
	}
	
	return [NSURL URLWithString:gravatarEndPoint];
}
@end