package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface j {
    @POST("/playersRecommend/get/v2")
    ResponseModel<List<FriendBean>> a(@Body FriendRecommendRequest request);

    @GET("/user/get")
    ResponseModel<FriendAccountInfo> b(@Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/visitingCard/get")
    ResponseModel<FriendCardBean> c(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("ruid") String ruid);

    @GET("/friendInfo/get")
    ResponseModel<FriendAccountInfo> d(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("ruid") String ruid);

    @FormUrlEncoded
    @POST("/user/rejectBattleInvite/v2")
    ResponseModel e(@FieldMap Map<String, Object> map);

    @GET("/like/list")
    ResponseModel<List<FriendBean>> f(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("limit") int limit, @Query("page") int page);

    @FormUrlEncoded
    @POST("/friendRequest/status")
    ResponseModel g(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/like/add")
    ResponseModel h(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    ResponseModel i(@Body FriendReqBean request);

    @GET("/friendRequest/multiSearch")
    ResponseModel<List<FriendBean>> j(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query(GrantCredentialsPermissionActivity.f89265g) String account);

    @GET("/friendRequest/list")
    ResponseModel<List<FriendBean>> k(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("limit") int limit, @Query("page") int page);

    @FormUrlEncoded
    @POST("/like/watch")
    ResponseModel l(@FieldMap Map<String, Object> map);

    @POST("/friendRequest/add")
    ResponseModel<FriendBackGameRspBean> m(@Body FriendBackGameReqBean request);

    @FormUrlEncoded
    @POST("/friendRelation/delete")
    ResponseModel n(@FieldMap Map<String, Object> map);
}
