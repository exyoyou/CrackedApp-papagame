package com.join.mgps.rpc;

import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.List;
import java.util.Map;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface g {
    @FormUrlEncoded
    @POST("/user/purchased")
    ResultMainBean<List<AppBean>> a(@FieldMap Map<String, String> params);
}
