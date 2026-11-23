.class public interface abstract Lcom/join/mgps/rpc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract A(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/userInfo"
    .end annotation
.end method

.method public abstract B(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$MessageCloudGamingServerListResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/server_list"
    .end annotation
.end method

.method public abstract a(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;
    .param p1    # Lcom/join/mgps/dto/RequestModel;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RequestModel<",
            "Lcom/join/mgps/dto/hmcloud/RequestGameCfgInfoArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/cfg_info"
    .end annotation
.end method

.method public abstract b(Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/checkToken"
    .end annotation
.end method

.method public abstract c(Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/prop_use"
    .end annotation
.end method

.method public abstract d(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/playtime_record"
    .end annotation
.end method

.method public abstract e(Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/verifyToken"
    .end annotation
.end method

.method public abstract f(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/prop_record"
    .end annotation
.end method

.method public abstract g(Lcom/wufan/user/service/protobuf/MessageCloudGamingArchivingCfgRequest$MessageCloudGamingArchivingCfgRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingArchivingCfgResponse$MessageCloudGamingArchivingCfgResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingArchivingCfgRequest$MessageCloudGamingArchivingCfgRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/archiving_cfg"
    .end annotation
.end method

.method public abstract h(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/vip_birthday"
    .end annotation
.end method

.method public abstract i(Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/bind/newUser"
    .end annotation
.end method

.method public abstract j(Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request;)Lcom/wufan/user/service/protobuf/ResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/login/thirdParty"
    .end annotation
.end method

.method public abstract k(Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;)Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smsCodeRequest"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/sms/v2/sendCode"
    .end annotation
.end method

.method public abstract l(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/sign_in"
    .end annotation
.end method

.method public abstract m(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/vip_days"
    .end annotation
.end method

.method public abstract n(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/advert_cfg"
    .end annotation
.end method

.method public abstract o(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/diamond_record"
    .end annotation
.end method

.method public abstract p(Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/mobileRegister"
    .end annotation
.end method

.method public abstract q(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/theThirdPartyLogin"
    .end annotation
.end method

.method public abstract r(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeRequest$MessageCloudGamingFreeTimeRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeResponse$MessageCloudGamingFreeTimeResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeRequest$MessageCloudGamingFreeTimeRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/give_free_time"
    .end annotation
.end method

.method public abstract s(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest;)Lcom/wufan/user/service/protobuf/SetBirthdayResponse;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/set_birthday"
    .end annotation
.end method

.method public abstract t(Lcom/wufan/user/service/protobuf/UserRegStatusRequest$UserRegStatusRequestArgs;)Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;
    .param p1    # Lcom/wufan/user/service/protobuf/UserRegStatusRequest$UserRegStatusRequestArgs;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/userStatus"
    .end annotation
.end method

.method public abstract u(Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$MessageCloudGamingVipStateResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/vip_state"
    .end annotation
.end method

.method public abstract v(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSummaryRequest;)Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSummaryResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSummaryRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/playtime_summary"
    .end annotation
.end method

.method public abstract w(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/coin_record"
    .end annotation
.end method

.method public abstract x(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters;)Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v2/check_free_time_state"
    .end annotation
.end method

.method public abstract y(Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/userLogin"
    .end annotation
.end method

.method public abstract z(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lcom/wufan/user/service/protobuf/ResponseResult;
    .param p1    # Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/ttpRegister"
    .end annotation
.end method
