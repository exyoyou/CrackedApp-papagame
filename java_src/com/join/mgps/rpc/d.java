package com.join.mgps.rpc;

import com.join.mgps.dto.ArchiveDataBean;
import com.join.mgps.dto.ArchiveDownDataBean;
import com.join.mgps.dto.ArchiveEvaluteDataBean;
import com.join.mgps.dto.ArchiveNumDataBean;
import com.join.mgps.dto.ArchiveResponseMain;
import com.join.mgps.dto.ArchiveResponseMessage;
import com.join.mgps.dto.ArchiveShopDataBean;
import java.util.Map;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface d {
    @POST("/market/commentArchive")
    ArchiveEvaluteDataBean a(@FieldMap Map<String, String> args);

    @POST("/market/deleteArchive ")
    ArchiveResponseMain<ArchiveResponseMessage> b(@FieldMap Map<String, String> args);

    @POST("/cloud/deleteArchive")
    ArchiveResponseMain<ArchiveResponseMessage> c(@FieldMap Map<String, String> args);

    @POST("/market/deleteMyBuy")
    ArchiveResponseMain<ArchiveResponseMessage> d(@FieldMap Map<String, String> args);

    @POST("/market/downloadArchive")
    ArchiveDownDataBean e(@FieldMap Map<String, String> args);

    @POST("/market/archiveListV2")
    ArchiveShopDataBean f(@Body Map<String, String> args);

    @POST("/cloud/archiveList")
    ArchiveDataBean g(@Body Map<String, String> args);

    @POST("/market/myBuyArchiveV2")
    ArchiveShopDataBean h(@Body Map<String, String> args);

    @POST("/cloud/archiveStat")
    ArchiveNumDataBean i(@Body Map<String, String> args);
}
