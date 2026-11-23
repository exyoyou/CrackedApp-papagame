package b7;

import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface f {
    @FormUrlEncoded
    @POST("/user/purchased")
    Call<ResultMainBean<List<AppBean>>> a(@FieldMap Map<String, String> params);
}
