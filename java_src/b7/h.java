package b7;

import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBackGameReqBean;
import com.join.mgps.dto.FriendBackGameRspBean;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendCardBean;
import com.join.mgps.dto.FriendRecommendRequest;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.ResponseModel;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface h {
    @POST("/playersRecommend/get/v2")
    Call<ResponseModel<List<FriendBean>>> a(@Body FriendRecommendRequest request);

    @GET("/user/get")
    Call<ResponseModel<FriendAccountInfo>> b(@Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/visitingCard/get")
    Call<ResponseModel<FriendCardBean>> c(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("ruid") String ruid);

    @GET("/friendInfo/get")
    Call<ResponseModel<FriendAccountInfo>> d(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("ruid") String ruid);

    @FormUrlEncoded
    @POST("/user/rejectBattleInvite/v2")
    Call<ResponseModel> e(@FieldMap Map<String, Object> map);

    @GET("/like/list")
    Call<ResponseModel<List<FriendBean>>> f(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("limit") int limit, @Query("page") int page);

    @FormUrlEncoded
    @POST("/friendRequest/status")
    Call<ResponseModel> g(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/like/add")
    Call<ResponseModel> h(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    Call<ResponseModel> i(@Body FriendReqBean request);

    @GET("/friendRequest/multiSearch")
    Call<ResponseModel<List<FriendBean>>> j(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query(GrantCredentialsPermissionActivity.f89265g) String account);

    @GET("/friendRequest/list")
    Call<ResponseModel<List<FriendBean>>> k(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("limit") int limit, @Query("page") int page);

    @FormUrlEncoded
    @POST("/like/watch")
    Call<ResponseModel> l(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    Call<ResponseModel<FriendBackGameRspBean>> m(@Body FriendBackGameReqBean request);

    @FormUrlEncoded
    @POST("/friendRelation/delete")
    Call<ResponseModel> n(@FieldMap Map<String, Object> map);
}
