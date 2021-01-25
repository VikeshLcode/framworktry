#import "LCodeAESTool.h"
#import "LCodeGTMBase64.h"
#import "LCodeAES2.h"

@implementation LCodeAESTool


+(NSString*)encryptData:(NSString *)data withKey:(NSString *)key
{
    return [self getvalindataencrypt:[data dataUsingEncoding:NSUTF8StringEncoding] key:key];
}

+(NSString *)getvalindataencrypt:(NSData *)data key:(NSString *)key
{
    NSString* ivCBC = @"LCodETeCh@MoBApP";               //16 bytes
    NSData* cipherData = [data encryptCBC:key iv:ivCBC];
    NSString* encData = [LCodeGTMBase64 stringByEncodingData:cipherData];
    return encData;
}

+(NSString*)decryptData:(NSString *)data withKey:(NSString *)key
{
    return [self getvalindatadecrypt:[LCodeGTMBase64 decodeString:data] key:key];;
    
}

+(NSString *)getvalindatadecrypt:(NSData *)data key:(NSString *)key
{
    NSString* ivCBC = @"LCodETeCh@MoBApP";               //16 bytes
    NSData* cipherData = data;
    NSString* decData = [[NSString alloc] initWithData:[cipherData decryptCBC:key iv:ivCBC] encoding:NSUTF8StringEncoding];
    return decData;
}


@end
