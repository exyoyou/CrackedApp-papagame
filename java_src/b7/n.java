package b7;

import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.UserPurchaseResponse;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface n {
    @GET("/pay/emulator/get_all_permission")
    Call<UserPurchaseResponse> a(@Query("uid") String uid, @Query(Constants.TOKEN) String token);
}
