package b7;

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
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface a {
    @FormUrlEncoded
    @POST("/user/v2/game_favorites/addto/index")
    Call<GameFromBooleanBean> A(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/v1/verifyToken")
    Call<AccountResultMainBean<AccountTokenSuccess>> B(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/jpush/joinDevice")
    Call<AccountResultMainBean<JPushJoinDeviceResult>> C(@FieldMap Map<String, String> params);

    @GET("/v16/backup/record_listparams")
    Call<AccountResultMainBean<CloudBackupsListBean>> D(@Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/user/v2/register/mobile_register")
    Call<AccountResultMainBean<AccountLoginresultData<AccountBean>>> E(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/configure/bluetooth_handle_black_list")
    Call<AccountResultMainBean<BluetoothHandleBlackListData>> F(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/modify/first_third_way_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> G(@FieldMap Map<String, String> params);

    @GET("/config/global_setting/index")
    Call<ForumResponse<ConfigMain>> H();

    @FormUrlEncoded
    @POST("/user/tourist/login")
    Call<AccountResultMainBean<AccountTokenSuccess>> I(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/info/get_user_head_portrait")
    Call<AccountResultMainBean<UserHeadPortrait>> J(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/modify/modify_set_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> K(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/gen_vip_order/create")
    Call<AccountResultMainBean<CreateVipData>> L(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/bind_open_id/third_way_id")
    Call<AccountResultMainBean<AccountLoginresultData>> M(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/send/send_mobile_code")
    Call<AccountResultMainBean<AccountLoginresultData>> N(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/upfile/upload_user_head_portrait")
    Call<AccountResultMainBean<AccountTokenSuccess>> O(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/dissubscribe/index")
    Call<GameFromBooleanBean> P(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/check_bind_mobile")
    Call<AccountResultMainBean<AccountTokenSuccess>> Q(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/modify/first_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> R(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/anonymous/first_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> S(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/jpush/getPushStatus")
    Call<AccountResultMainBean<JPushJoinDeviceResult>> T(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/asclist/indexv2")
    Call<GameFromPopoWinBeanV2> U(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/v2/register/third_way_register")
    Call<AccountResultMainBean<AccountLoginresultData<AccountBean>>> V(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/statelist/index")
    Call<GameFromPopoWinBean> W(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/send/send_mobile_codev2")
    Call<AccountResultMainBean<AccountTokenSuccess>> X(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/del/index")
    Call<GameFromBooleanBean> Y(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/usercenter/index")
    Call<ForumResponse<FavoritesCenterData>> Z(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/register")
    Call<AccountResultBean<AccountLoginresultData<AccountBean>>> a(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/modify/find_mobile_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> a0(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/login/third_way_login")
    Call<AccountResultBean<AccountLoginresultData<AccountBean>>> b(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/modifyto/index")
    Call<GameFromBooleanBean> b0(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/wallet/coupon_game_info")
    Call<ResultMainBean<List<AccountVoucherGame>>> c(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/send/chk_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> d(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/send/send_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> e(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/coupon_info")
    Call<ResultMainBean<List<AccountVoucher>>> f(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/logout")
    Call<AccountResultMainBean<AccountTokenSuccess>> g(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/modify/modify_user_infov3")
    Call<AccountResultMainBean<AccountTokenSuccess>> h(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/info/user_info")
    Call<AccountResultMainBean<AccountBean>> i(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/token/check_token")
    Call<AccountResultMainBean<AccountTokenSuccess>> j(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/login/chk_token_expired")
    Call<GameWorldResponse<AccountResultMainBean>> k(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/login/mobile_login")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> l(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/jpush/setPushStatus")
    Call<AccountResultMainBean<JPushJoinDeviceResult>> m(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/anonymous/first_thrid_way_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> n(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/create/index")
    Call<GameFromBooleanBean> o(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/rebind_mobile")
    Call<UploadResultMainBean<AccountTokenSuccess>> p(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/selflists/index")
    Call<GameFromPopoWinBean> q(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/modify/modify_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> r(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/rebind_mobile/chkcode")
    Call<AccountResultMainBean<AccountTokenSuccess>> s(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/cancel/index")
    Call<GameFromBooleanBean> t(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/details/indexv2")
    Call<ForumResponseGame> u(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/user/v2/Check/regCodeState")
    Call<AccountResultMainBean<AccountLoginresultData>> v(@FieldMap Map<String, String> params);

    @GET("/v16/backup/recover_recordparams")
    Call<AccountResultMainBean<CloudBackupsRecoverListBean>> w(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("rid") String rid);

    @FormUrlEncoded
    @POST("/user/tourist/prefect_info/indexv2")
    Call<AccountResultMainBean<AccountTokenSuccess>> x(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/bind_mobile")
    Call<AccountResultMainBean<AccountTokenSuccess>> y(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/subscribe/index")
    Call<GameFromBooleanBean> z(@FieldMap Map<String, Object> params);
}
