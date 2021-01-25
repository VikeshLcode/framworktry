#import <Foundation/Foundation.h>

@interface LCodeAESTool : NSObject


+(NSString *)encryptData:(NSString*)data withKey:(NSString*)key;
+(NSString *)decryptData:(NSString*)data withKey:(NSString*)key;
+(NSString *)getvalindataencrypt:(NSData *)data key:(NSString *)key;
+(NSString *)getvalindatadecrypt:(NSData *)data key:(NSString *)key;

@end
