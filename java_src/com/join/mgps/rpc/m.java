package com.join.mgps.rpc;

import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemResponse;
import retrofit2.http.GET;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
public interface m {
    @GET("/forum/gift/get_gift?uid={uid}&token={token}&oid={oid}")
    OemResponse<OemData.GiftGetCdkData> a(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("oid") String oid);

    @GET("/forum/gift/gift_detail?uid={uid}&oid={oid}")
    OemResponse<OemData.GiftDetailData> b(@Path("uid") int uid, @Path("oid") String oid);
}
