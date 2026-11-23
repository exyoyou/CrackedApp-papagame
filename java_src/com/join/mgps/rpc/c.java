package com.join.mgps.rpc;

import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.hmcloud.CloudGamingCfgInfo;
import com.join.mgps.dto.hmcloud.RequestGameCfgInfoArgs;
import com.wufan.user.service.protobuf.MessageCheckTokenRequest;
import com.wufan.user.service.protobuf.MessageCheckTokenResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingArchivingCfgResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingCoinResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingCommonRecordRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeStateRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingFreeTimeStateResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingPropRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingPropResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingServerListResponse;
import com.wufan.user.service.protobuf.MessageCloudGamingVipStateRequest;
import com.wufan.user.service.protobuf.MessageCloudGamingVipStateResponse;
import com.wufan.user.service.protobuf.MessageMobileRegisterRequest;
import com.wufan.user.service.protobuf.MessageNewUserBindMobileRequest;
import com.wufan.user.service.protobuf.MessageResponseStatus;
import com.wufan.user.service.protobuf.MessageSmsCodeRequest;
import com.wufan.user.service.protobuf.MessageTheThirdPartyLoginRequest;
import com.wufan.user.service.protobuf.MessageTheThirdPartyRegisterRequest;
import com.wufan.user.service.protobuf.MessageUserInfoRequest;
import com.wufan.user.service.protobuf.ResponseResult;
import com.wufan.user.service.protobuf.SetBirthdayResponse;
import com.wufan.user.service.protobuf.ThirdPartyLoginProto;
import com.wufan.user.service.protobuf.UserLoginRequestParameters;
import com.wufan.user.service.protobuf.UserRegStatusRequest;
import com.wufan.user.service.protobuf.UserRegStatusResponse;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface c {
    @POST("/user/v1/userInfo")
    ResponseResult A(@Body MessageUserInfoRequest.RequestParameters params);

    @POST("/cloud_gaming/v1/server_list")
    MessageCloudGamingServerListResponse.MessageCloudGamingServerListResponseResult B(@Body MessageCloudGamingServerListRequest.MessageCloudGamingServerListRequestParameters params);

    @POST("/cloud_gaming/v1/cfg_info")
    ResponseModel<CloudGamingCfgInfo> a(@Body RequestModel<RequestGameCfgInfoArgs> request);

    @POST("/user/v1/checkToken")
    MessageCheckTokenResponse.MessageCheckTokenResponseResult b(@Body MessageCheckTokenRequest.MessageCheckTokenRequestParameters params);

    @POST("/cloud_gaming/v1/prop_use")
    MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse c(@Body MessageCloudGamingPropRequest.MessageCloudGamingPropUseRequestParameters params);

    @POST("/cloud_gaming/v1/playtime_record")
    MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeLogResponseResult d(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/user/v1/verifyToken")
    MessageCheckTokenResponse.MessageCheckTokenResponseResult e(@Body MessageCheckTokenRequest.MessageCheckTokenRequestParameters params);

    @POST("/cloud_gaming/v1/prop_record")
    MessageCloudGamingPropResponse.MessageCloudGamingPropLogResponseResult f(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/cloud_gaming/v1/archiving_cfg")
    MessageCloudGamingArchivingCfgResponse.MessageCloudGamingArchivingCfgResponseResult g(@Body MessageCloudGamingArchivingCfgRequest.MessageCloudGamingArchivingCfgRequestParameters request);

    @POST("/cloud_gaming/v1/vip_birthday")
    MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipBirthdayResponseResult h(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest params);

    @POST("/user/v1/bind/newUser")
    ResponseResult i(@Body MessageNewUserBindMobileRequest.NewUserBindMobileRequestParameters parameters);

    @POST("/login/thirdParty")
    ResponseResult j(@Body ThirdPartyLoginProto.Request params);

    @POST("/sms/v2/sendCode")
    MessageResponseStatus.ResponseStatusResult k(@Body MessageSmsCodeRequest.SmsCodeRequestParameters smsCodeRequest);

    @POST("/cloud_gaming/v1/sign_in")
    MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult l(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest params);

    @POST("/cloud_gaming/v1/vip_days")
    MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipDaysResponseResult m(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest params);

    @POST("/cloud_gaming/v1/advert_cfg")
    MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult n(@Body MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters params);

    @POST("/cloud_gaming/v1/diamond_record")
    MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult o(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/user/v1/mobileRegister")
    ResponseResult p(@Body MessageMobileRegisterRequest.MobileRegisterRequestParameters params);

    @POST("/user/v1/theThirdPartyLogin")
    ResponseResult q(@Body MessageTheThirdPartyLoginRequest.TheThirdPartyLoginRequestParameters params);

    @POST("/cloud_gaming/v1/give_free_time")
    MessageCloudGamingFreeTimeResponse.MessageCloudGamingFreeTimeResponseResult r(@Body MessageCloudGamingFreeTimeRequest.MessageCloudGamingFreeTimeRequestParameters params);

    @POST("/user/v1/set_birthday")
    SetBirthdayResponse s(@Body MessageUserInfoRequest.SetBirthdayRequest params);

    @POST("/user/v1/userStatus")
    UserRegStatusResponse.UserRegStatusResponseField t(@Body UserRegStatusRequest.UserRegStatusRequestArgs request);

    @POST("/cloud_gaming/v1/vip_state")
    MessageCloudGamingVipStateResponse.MessageCloudGamingVipStateResponseResult u(@Body MessageCloudGamingVipStateRequest.MessageCloudGamingVipStateRequestParameters params);

    @POST("/cloud_gaming/v1/playtime_summary")
    MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSummaryResponseResult v(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSummaryRequest params);

    @POST("/cloud_gaming/v1/coin_record")
    MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult w(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/cloud_gaming/v2/check_free_time_state")
    MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult x(@Body MessageCloudGamingFreeTimeStateRequest.MessageCloudGamingFreeTimeStateRequestParameters params);

    @POST("/user/v1/userLogin")
    ResponseResult y(@Body UserLoginRequestParameters params);

    @POST("/user/v1/ttpRegister")
    ResponseResult z(@Body MessageTheThirdPartyRegisterRequest.TheThirdPartyRegisterRequestParameters params);
}
