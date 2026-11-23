package b7;

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
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface b {
    @POST("/user/v1/userInfo")
    Call<ResponseResult> A(@Body MessageUserInfoRequest.RequestParameters params);

    @POST("/cloud_gaming/v1/server_list")
    Call<MessageCloudGamingServerListResponse.MessageCloudGamingServerListResponseResult> B(@Body MessageCloudGamingServerListRequest.MessageCloudGamingServerListRequestParameters params);

    @POST("/cloud_gaming/v1/cfg_info")
    Call<ResponseModel<CloudGamingCfgInfo>> a(@Body RequestModel<RequestGameCfgInfoArgs> request);

    @POST("/user/v1/checkToken")
    Call<MessageCheckTokenResponse.MessageCheckTokenResponseResult> b(@Body MessageCheckTokenRequest.MessageCheckTokenRequestParameters params);

    @POST("/cloud_gaming/v1/prop_use")
    Call<MessageCloudGamingPropResponse.MessageCloudGamingPropUseResponse> c(@Body MessageCloudGamingPropRequest.MessageCloudGamingPropUseRequestParameters params);

    @POST("/cloud_gaming/v1/playtime_record")
    Call<MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeLogResponseResult> d(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/user/v1/verifyToken")
    Call<MessageCheckTokenResponse.MessageCheckTokenResponseResult> e(@Body MessageCheckTokenRequest.MessageCheckTokenRequestParameters params);

    @POST("/cloud_gaming/v1/prop_record")
    Call<MessageCloudGamingPropResponse.MessageCloudGamingPropLogResponseResult> f(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/cloud_gaming/v1/archiving_cfg")
    Call<MessageCloudGamingArchivingCfgResponse.MessageCloudGamingArchivingCfgResponseResult> g(@Body MessageCloudGamingArchivingCfgRequest.MessageCloudGamingArchivingCfgRequestParameters request);

    @POST("/cloud_gaming/v1/vip_birthday")
    Call<MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipBirthdayResponseResult> h(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest params);

    @POST("/user/v1/bind/newUser")
    Call<ResponseResult> i(@Body MessageNewUserBindMobileRequest.NewUserBindMobileRequestParameters parameters);

    @POST("/login/thirdParty")
    Call<ResponseResult> j(@Body ThirdPartyLoginProto.Request params);

    @POST("/sms/v2/sendCode")
    Call<MessageResponseStatus.ResponseStatusResult> k(@Body MessageSmsCodeRequest.SmsCodeRequestParameters smsCodeRequest);

    @POST("/cloud_gaming/v1/sign_in")
    Call<MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSignInResponseResult> l(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSignInRequest params);

    @POST("/cloud_gaming/v1/vip_days")
    Call<MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeVipDaysResponseResult> m(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeVipRequest params);

    @POST("/cloud_gaming/v1/advert_cfg")
    Call<MessageCloudGamingAdCfgResponse.MessageCloudGamingAdCfgResponseResult> n(@Body MessageCloudGamingAdCfgRequest.MessageCloudGamingAdCfgRequestParameters params);

    @POST("/cloud_gaming/v1/diamond_record")
    Call<MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult> o(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/user/v1/mobileRegister")
    Call<ResponseResult> p(@Body MessageMobileRegisterRequest.MobileRegisterRequestParameters params);

    @POST("/user/v1/theThirdPartyLogin")
    Call<ResponseResult> q(@Body MessageTheThirdPartyLoginRequest.TheThirdPartyLoginRequestParameters params);

    @POST("/cloud_gaming/v1/give_free_time")
    Call<MessageCloudGamingFreeTimeResponse.MessageCloudGamingFreeTimeResponseResult> r(@Body MessageCloudGamingFreeTimeRequest.MessageCloudGamingFreeTimeRequestParameters params);

    @POST("/user/v1/set_birthday")
    Call<SetBirthdayResponse> s(@Body MessageUserInfoRequest.SetBirthdayRequest params);

    @POST("/user/v1/userStatus")
    Call<UserRegStatusResponse.UserRegStatusResponseField> t(@Body UserRegStatusRequest.UserRegStatusRequestArgs request);

    @POST("/cloud_gaming/v1/vip_state")
    Call<MessageCloudGamingVipStateResponse.MessageCloudGamingVipStateResponseResult> u(@Body MessageCloudGamingVipStateRequest.MessageCloudGamingVipStateRequestParameters params);

    @POST("/cloud_gaming/v1/playtime_summary")
    Call<MessageCloudGamingPlaytimeResponse.MessageCloudGamingPlaytimeSummaryResponseResult> v(@Body MessageCloudGamingPlaytimeRequest.MessageCloudGamingPlaytimeSummaryRequest params);

    @POST("/cloud_gaming/v1/coin_record")
    Call<MessageCloudGamingCoinResponse.MessageCloudGamingCoinLogResponseResult> w(@Body MessageCloudGamingCommonRecordRequest.MessageCloudGamingCommonRecordRequestParameters params);

    @POST("/cloud_gaming/v2/check_free_time_state")
    Call<MessageCloudGamingFreeTimeStateResponse.MessageCloudGamingFreeTimeStateResponseResult> x(@Body MessageCloudGamingFreeTimeStateRequest.MessageCloudGamingFreeTimeStateRequestParameters params);

    @POST("/user/v1/userLogin")
    Call<ResponseResult> y(@Body UserLoginRequestParameters params);

    @POST("/user/v1/ttpRegister")
    Call<ResponseResult> z(@Body MessageTheThirdPartyRegisterRequest.TheThirdPartyRegisterRequestParameters params);
}
