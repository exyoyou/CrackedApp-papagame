package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\nHÆ\u0003JK\u0010\u001d\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\nHÖ\u0001R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendZoneResultData;", "", "recommend_list", "", "Lcom/join/kotlin/ui/legendgame/data/LegendRecommendItem;", "latest_server_list", "Lcom/join/kotlin/ui/legendgame/data/LegendLatestServerGroup;", "brand_server_list", "Lcom/join/kotlin/ui/legendgame/data/LegendBrandServerItem;", "mp_subscribe_url", "", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getRecommend_list", "()Ljava/util/List;", "setRecommend_list", "(Ljava/util/List;)V", "getLatest_server_list", "setLatest_server_list", "getBrand_server_list", "setBrand_server_list", "getMp_subscribe_url", "()Ljava/lang/String;", "setMp_subscribe_url", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendZoneResultData {

    @Nullable
    private List<LegendBrandServerItem> brand_server_list;

    @Nullable
    private List<LegendLatestServerGroup> latest_server_list;

    @Nullable
    private String mp_subscribe_url;

    @Nullable
    private List<LegendRecommendItem> recommend_list;

    public LegendZoneResultData() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LegendZoneResultData copy$default(LegendZoneResultData legendZoneResultData, List list, List list2, List list3, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = legendZoneResultData.recommend_list;
        }
        if ((i10 & 2) != 0) {
            list2 = legendZoneResultData.latest_server_list;
        }
        if ((i10 & 4) != 0) {
            list3 = legendZoneResultData.brand_server_list;
        }
        if ((i10 & 8) != 0) {
            str = legendZoneResultData.mp_subscribe_url;
        }
        return legendZoneResultData.copy(list, list2, list3, str);
    }

    @Nullable
    public final List<LegendRecommendItem> component1() {
        return this.recommend_list;
    }

    @Nullable
    public final List<LegendLatestServerGroup> component2() {
        return this.latest_server_list;
    }

    @Nullable
    public final List<LegendBrandServerItem> component3() {
        return this.brand_server_list;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMp_subscribe_url() {
        return this.mp_subscribe_url;
    }

    @NotNull
    public final LegendZoneResultData copy(@Nullable List<LegendRecommendItem> recommend_list, @Nullable List<LegendLatestServerGroup> latest_server_list, @Nullable List<LegendBrandServerItem> brand_server_list, @Nullable String mp_subscribe_url) {
        return new LegendZoneResultData(recommend_list, latest_server_list, brand_server_list, mp_subscribe_url);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendZoneResultData)) {
            return false;
        }
        LegendZoneResultData legendZoneResultData = (LegendZoneResultData) other;
        return Intrinsics.areEqual(this.recommend_list, legendZoneResultData.recommend_list) && Intrinsics.areEqual(this.latest_server_list, legendZoneResultData.latest_server_list) && Intrinsics.areEqual(this.brand_server_list, legendZoneResultData.brand_server_list) && Intrinsics.areEqual(this.mp_subscribe_url, legendZoneResultData.mp_subscribe_url);
    }

    @Nullable
    public final List<LegendBrandServerItem> getBrand_server_list() {
        return this.brand_server_list;
    }

    @Nullable
    public final List<LegendLatestServerGroup> getLatest_server_list() {
        return this.latest_server_list;
    }

    @Nullable
    public final String getMp_subscribe_url() {
        return this.mp_subscribe_url;
    }

    @Nullable
    public final List<LegendRecommendItem> getRecommend_list() {
        return this.recommend_list;
    }

    public int hashCode() {
        List<LegendRecommendItem> list = this.recommend_list;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<LegendLatestServerGroup> list2 = this.latest_server_list;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<LegendBrandServerItem> list3 = this.brand_server_list;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        String str = this.mp_subscribe_url;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final void setBrand_server_list(@Nullable List<LegendBrandServerItem> list) {
        this.brand_server_list = list;
    }

    public final void setLatest_server_list(@Nullable List<LegendLatestServerGroup> list) {
        this.latest_server_list = list;
    }

    public final void setMp_subscribe_url(@Nullable String str) {
        this.mp_subscribe_url = str;
    }

    public final void setRecommend_list(@Nullable List<LegendRecommendItem> list) {
        this.recommend_list = list;
    }

    @NotNull
    public String toString() {
        return "LegendZoneResultData(recommend_list=" + this.recommend_list + ", latest_server_list=" + this.latest_server_list + ", brand_server_list=" + this.brand_server_list + ", mp_subscribe_url=" + this.mp_subscribe_url + ')';
    }

    public LegendZoneResultData(@Nullable List<LegendRecommendItem> list, @Nullable List<LegendLatestServerGroup> list2, @Nullable List<LegendBrandServerItem> list3, @Nullable String str) {
        this.recommend_list = list;
        this.latest_server_list = list2;
        this.brand_server_list = list3;
        this.mp_subscribe_url = str;
    }

    public /* synthetic */ LegendZoneResultData(List list, List list2, List list3, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : list, (i10 & 2) != 0 ? null : list2, (i10 & 4) != 0 ? null : list3, (i10 & 8) != 0 ? null : str);
    }
}
