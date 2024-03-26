//
//  BYTRTCManager.h
//  BYTRTCSDK
//
//  Created by quanjg on 2024/3/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BYTRTCManager : NSObject

+ (BYTRTCManager *)shared;

@property BOOL isCalling;//是否视频中

@property (nonatomic,strong) NSString *TxRoomId;



/**调起视频页面**/
+(void)loginWithParam:(NSDictionary*)dic;


/**用户账号**/
@property (nonatomic,strong) NSString *accoutsdk;


/**唯一标识**/
@property (nonatomic,strong) NSString *sig;

/**IM账号**/
+(NSString *)getsdkAppId;


/**登录账号**/
-(void)loginWithUserId:(NSString*)userId sig:(NSString*)sig;


- (void)dealC2CCallInvitation:(NSArray *)noti;


#pragma mark 发送自定义消息
- (void)sendCallMsgWithDic:(NSDictionary *)dic reciver:(NSString *)reciver;


@end

NS_ASSUME_NONNULL_END
