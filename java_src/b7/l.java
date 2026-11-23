package b7;

import com.join.mgps.dto.OemData;
import com.join.mgps.dto.OemResponse;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface l {
    @GET("/forum/gift/get_gift")
    Call<OemResponse<OemData.GiftGetCdkData>> a(@Query("uid") int uid, @Query("uid") String token, @Query("uid") String oid);

    @GET("/forum/gift/gift_detail")
    Call<OemResponse<OemData.GiftDetailData>> b(@Query("uid") int uid, @Query("uid") String oid);
}
