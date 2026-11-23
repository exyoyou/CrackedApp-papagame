package b7;

import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface c {
    @FormUrlEncoded
    @POST("/market/commentArchive")
    Call<ArchiveEvaluteDataBean> a(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/market/deleteArchive ")
    Call<ArchiveResponseMain<ArchiveResponseMessage>> b(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/cloud/deleteArchive")
    Call<ArchiveResponseMain<ArchiveResponseMessage>> c(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/market/deleteMyBuy")
    Call<ArchiveResponseMain<ArchiveResponseMessage>> d(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/market/downloadArchive")
    Call<ArchiveDownDataBean> e(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/cloud/archiveList")
    Call<ArchiveDataBean> f(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/market/myBuyArchiveV2")
    Call<ArchiveShopDataBean> g(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/market/archiveListV2")
    Call<ArchiveShopDataBean> h(@FieldMap Map<String, String> args);

    @FormUrlEncoded
    @POST("/cloud/archiveStat")
    Call<ArchiveNumDataBean> i(@FieldMap Map<String, String> args);
}
