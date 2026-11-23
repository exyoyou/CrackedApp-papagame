.class public interface abstract Lb7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract A(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$RequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/ResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/userInfo"
    .end annotation
.end method

.method public abstract B(Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListRequest$MessageCloudGamingServerListRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingServerListResponse$MessageCloudGamingServerListResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/server_list"
    .end annotation
.end method

.method public abstract a(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/cfg_info"
    .end annotation
.end method

.method public abstract b(Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/checkToken"
    .end annotation
.end method

.method public abstract c(Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropRequest$MessageCloudGamingPropUseRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/prop_use"
    .end annotation
.end method

.method public abstract d(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeLogResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/playtime_record"
    .end annotation
.end method

.method public abstract e(Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCheckTokenRequest$MessageCheckTokenRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCheckTokenResponse$MessageCheckTokenResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/verifyToken"
    .end annotation
.end method

.method public abstract f(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropLogResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/prop_record"
    .end annotation
.end method

.method public abstract g(Lcom/wufan/user/service/protobuf/MessageCloudGamingArchivingCfgRequest$MessageCloudGamingArchivingCfgRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingArchivingCfgRequest$MessageCloudGamingArchivingCfgRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingArchivingCfgResponse$MessageCloudGamingArchivingCfgResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/archiving_cfg"
    .end annotation
.end method

.method public abstract h(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipBirthdayResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/vip_birthday"
    .end annotation
.end method

.method public abstract i(Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageNewUserBindMobileRequest$NewUserBindMobileRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/ResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/bind/newUser"
    .end annotation
.end method

.method public abstract j(Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/ThirdPartyLoginProto$Request;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/ResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/login/thirdParty"
    .end annotation
.end method

.method public abstract k(Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageSmsCodeRequest$SmsCodeRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageResponseStatus$ResponseStatusResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/sms/v2/sendCode"
    .end annotation
.end method

.method public abstract l(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSignInRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSignInResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/sign_in"
    .end annotation
.end method

.method public abstract m(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeVipRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/vip_days"
    .end annotation
.end method

.method public abstract n(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgRequest$MessageCloudGamingAdCfgRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$MessageCloudGamingAdCfgResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/advert_cfg"
    .end annotation
.end method

.method public abstract o(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/diamond_record"
    .end annotation
.end method

.method public abstract p(Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageMobileRegisterRequest$MobileRegisterRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/ResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/mobileRegister"
    .end annotation
.end method

.method public abstract q(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageTheThirdPartyLoginRequest$TheThirdPartyLoginRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/ResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/theThirdPartyLogin"
    .end annotation
.end method

.method public abstract r(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeRequest$MessageCloudGamingFreeTimeRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeRequest$MessageCloudGamingFreeTimeRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeResponse$MessageCloudGamingFreeTimeResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/give_free_time"
    .end annotation
.end method

.method public abstract s(Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageUserInfoRequest$SetBirthdayRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/SetBirthdayResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/set_birthday"
    .end annotation
.end method

.method public abstract t(Lcom/wufan/user/service/protobuf/UserRegStatusRequest$UserRegStatusRequestArgs;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/UserRegStatusRequest$UserRegStatusRequestArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/UserRegStatusResponse$UserRegStatusResponseField;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/userStatus"
    .end annotation
.end method

.method public abstract u(Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateRequest$MessageCloudGamingVipStateRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingVipStateResponse$MessageCloudGamingVipStateResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/vip_state"
    .end annotation
.end method

.method public abstract v(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSummaryRequest;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeRequest$MessageCloudGamingPlaytimeSummaryRequest;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeSummaryResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/playtime_summary"
    .end annotation
.end method

.method public abstract w(Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCommonRecordRequest$MessageCloudGamingCommonRecordRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v1/coin_record"
    .end annotation
.end method

.method public abstract x(Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateRequest$MessageCloudGamingFreeTimeStateRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/MessageCloudGamingFreeTimeStateResponse$MessageCloudGamingFreeTimeStateResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cloud_gaming/v2/check_free_time_state"
    .end annotation
.end method

.method public abstract y(Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/UserLoginRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/ResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/userLogin"
    .end annotation
.end method

.method public abstract z(Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;)Lretrofit2/Call;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/user/service/protobuf/MessageTheThirdPartyRegisterRequest$TheThirdPartyRegisterRequestParameters;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/wufan/user/service/protobuf/ResponseResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/v1/ttpRegister"
    .end annotation
.end method
