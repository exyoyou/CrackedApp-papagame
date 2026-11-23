package com.join.mgps.rpc;

import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.BluetoothHandleBlackListData;
import com.join.mgps.dto.CloudBackupsListBean;
import com.join.mgps.dto.CloudBackupsRecoverListBean;
import com.join.mgps.dto.ConfigMain;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.UploadResultMainBean;
import com.join.mgps.dto.UserHeadPortrait;
import java.util.List;
import java.util.Map;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
public interface b {
    @POST("/user/v2/game_favorites/addto/index")
    GameFromBooleanBean A(@Body Map<String, Object> params);

    @POST("/user/v1/verifyToken")
    AccountResultMainBean<AccountTokenSuccess> B(@Body Map<String, String> params);

    @POST("/user/jpush/joinDevice")
    AccountResultMainBean<JPushJoinDeviceResult> C(@Body Map<String, String> params);

    @GET("/v16/backup/record_list?uid={uid}&token={token}")
    AccountResultMainBean<CloudBackupsListBean> D(@Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @POST("/user/v2/register/mobile_register")
    AccountResultMainBean<AccountLoginresultData<AccountBean>> E(@Body Map<String, String> params);

    @POST("/user/configure/bluetooth_handle_black_list")
    AccountResultMainBean<BluetoothHandleBlackListData> F(@Body Map<String, String> params);

    @POST("/user/v2/modify/first_third_way_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> G(@Body Map<String, String> params);

    @GET("/config/global_setting/index")
    ForumResponse<ConfigMain> H();

    @POST("/user/tourist/login")
    AccountResultMainBean<AccountTokenSuccess> I(@Body Map<String, String> params);

    @POST("/user/info/get_user_head_portrait")
    AccountResultMainBean<UserHeadPortrait> J(@Body Map<String, String> params);

    @POST("/user/modify/modify_set_pass")
    AccountResultMainBean<AccountTokenSuccess> K(@Body Map<String, String> params);

    @POST("/user/gen_vip_order/create")
    AccountResultMainBean<CreateVipData> L(@Body Map<String, String> params);

    @POST("/user/v2/bind_open_id/third_way_id")
    AccountResultMainBean<AccountLoginresultData> M(@Body Map<String, String> params);

    @POST("/user/v2/send/send_mobile_code")
    AccountResultMainBean<AccountLoginresultData> N(@Body Map<String, String> params);

    @POST("/user/upfile/upload_user_head_portrait")
    AccountResultMainBean<AccountTokenSuccess> O(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/dissubscribe/index")
    GameFromBooleanBean P(@Body Map<String, Object> params);

    @POST("/user/check_bind_mobile")
    AccountResultMainBean<AccountTokenSuccess> Q(@Body Map<String, String> params);

    @POST("/user/v2/modify/first_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> R(@Body Map<String, String> params);

    @POST("/user/v2/anonymous/first_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> S(@Body Map<String, String> params);

    @POST("/user/jpush/getPushStatus")
    AccountResultMainBean<JPushJoinDeviceResult> T(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/asclist/indexv2")
    GameFromPopoWinBeanV2 U(@Body Map<String, Object> params);

    @POST("/user/v2/register/third_way_register")
    AccountResultMainBean<AccountLoginresultData<AccountBean>> V(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/statelist/index")
    GameFromPopoWinBean W(@Body Map<String, Object> params);

    @POST("/user/send/send_mobile_codev2")
    AccountResultMainBean<AccountTokenSuccess> X(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/del/index")
    GameFromBooleanBean Y(@Body Map<String, Object> params);

    @POST("/user/v2/game_favorites/usercenter/index")
    ForumResponse<FavoritesCenterData> Z(@Body Map<String, Object> params);

    @POST("/user/register")
    AccountResultBean<AccountLoginresultData<AccountBean>> a(@Body Map<String, String> params);

    @POST("/user/modify/find_mobile_pass")
    AccountResultMainBean<AccountTokenSuccess> a0(@Body Map<String, String> params);

    @POST("/user/v2/login/third_way_login")
    AccountResultBean<AccountLoginresultData<AccountBean>> b(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/modifyto/index")
    GameFromBooleanBean b0(@Body Map<String, Object> params);

    @POST("/wallet/coupon_game_info")
    ResultMainBean<List<AccountVoucherGame>> c(@Body Map<String, String> params);

    @POST("/user/send/chk_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> d(@Body Map<String, String> params);

    @POST("/user/send/send_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> e(@Body Map<String, String> params);

    @POST("/wallet/coupon_info")
    ResultMainBean<List<AccountVoucher>> f(@Body Map<String, String> params);

    @POST("/user/logout")
    AccountResultMainBean<AccountTokenSuccess> g(@Body Map<String, String> params);

    @POST("/user/modify/modify_user_infov3")
    AccountResultMainBean<AccountTokenSuccess> h(@Body Map<String, String> params);

    @POST("/user/v2/info/user_info")
    AccountResultMainBean<AccountBean> i(@Body Map<String, String> params);

    @POST("/user/token/check_token")
    AccountResultMainBean<AccountTokenSuccess> j(@Body Map<String, String> params);

    @POST("/user/login/chk_token_expired")
    GameWorldResponse<AccountResultMainBean> k(@Body Map<String, String> params);

    @POST("/user/v2/login/mobile_login")
    AccountResultMainBean<AccountresultData<AccountBean>> l(@Body Map<String, String> params);

    @POST("/user/jpush/setPushStatus")
    AccountResultMainBean<JPushJoinDeviceResult> m(@Body Map<String, String> params);

    @POST("/user/v2/anonymous/first_thrid_way_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> n(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/create/index")
    GameFromBooleanBean o(@Body Map<String, Object> params);

    @POST("/user/rebind_mobile")
    UploadResultMainBean<AccountTokenSuccess> p(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/selflists/index")
    GameFromPopoWinBean q(@Body Map<String, Object> params);

    @POST("/user/modify/modify_pass")
    AccountResultMainBean<AccountTokenSuccess> r(@Body Map<String, String> params);

    @POST("/user/rebind_mobile/chkcode")
    AccountResultMainBean<AccountTokenSuccess> s(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/cancel/index")
    GameFromBooleanBean t(@Body Map<String, Object> params);

    @POST("/user/v2/game_favorites/details/indexv2")
    ForumResponseGame u(@Body Map<String, Object> params);

    @POST("/user/v2/Check/regCodeState")
    AccountResultMainBean<AccountLoginresultData> v(@Body Map<String, String> params);

    @GET("/v16/backup/recover_record?uid={uid}&token={token}&rid={rid}")
    AccountResultMainBean<CloudBackupsRecoverListBean> w(@Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path("rid") String rid);

    @POST("/user/tourist/prefect_info/indexv2")
    AccountResultMainBean<AccountTokenSuccess> x(@Body Map<String, String> params);

    @POST("/user/bind_mobile")
    AccountResultMainBean<AccountTokenSuccess> y(@Body Map<String, String> params);

    @POST("/user/v2/game_favorites/subscribe/index")
    GameFromBooleanBean z(@Body Map<String, Object> params);
}
