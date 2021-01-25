#import <Foundation/Foundation.h>

@interface NSData (LCodeAES2)
//Call this to Enrypt with ECB Cipher Transformation mode. Note a fact that iv is not required for ECB
- (NSData *) encryptECB:(NSString *)key;

//Call this to Decrypt with ECB Cipher Transformation mode. Note a fact that iv is not required for ECB
- (NSData *) decryptECB:(NSString *)key;

//Call this to Enrypt with CBC Cipher Transformation mode.
- (NSData *) encryptCBC:(NSString *)key iv:(NSString *)iv;

//Call this to Decrypt with CBC Cipher Transformation mode.
- (NSData *) decryptCBC:(NSString *)key iv:(NSString *)iv;

@end
