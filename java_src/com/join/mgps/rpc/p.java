package com.join.mgps.rpc;

import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.UserPurchaseResponse;
import retrofit2.http.GET;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
public interface p {
    @GET("/pay/emulator/get_all_permission?uid={uid}&token={token}")
    UserPurchaseResponse a(@Path("uid") String uid, @Path(Constants.TOKEN) String token);
}
