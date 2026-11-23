package com.join.kotlin.autocode.dailyfind.model;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J\u001d\u0010\n\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001b\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverDataBean;", "", "daily_discover_list", "", "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;", "<init>", "(Ljava/util/List;)V", "getDaily_discover_list", "()Ljava/util/List;", "component1", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DailyDiscoverDataBean {

    @Nullable
    private final List<DailyDiscoverListItem> daily_discover_list;

    public DailyDiscoverDataBean(@Nullable List<DailyDiscoverListItem> list) {
        this.daily_discover_list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DailyDiscoverDataBean copy$default(DailyDiscoverDataBean dailyDiscoverDataBean, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = dailyDiscoverDataBean.daily_discover_list;
        }
        return dailyDiscoverDataBean.copy(list);
    }

    @Nullable
    public final List<DailyDiscoverListItem> component1() {
        return this.daily_discover_list;
    }

    @NotNull
    public final DailyDiscoverDataBean copy(@Nullable List<DailyDiscoverListItem> daily_discover_list) {
        return new DailyDiscoverDataBean(daily_discover_list);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof DailyDiscoverDataBean) && Intrinsics.areEqual(this.daily_discover_list, ((DailyDiscoverDataBean) other).daily_discover_list);
    }

    @Nullable
    public final List<DailyDiscoverListItem> getDaily_discover_list() {
        return this.daily_discover_list;
    }

    public int hashCode() {
        List<DailyDiscoverListItem> list = this.daily_discover_list;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        return "DailyDiscoverDataBean(daily_discover_list=" + this.daily_discover_list + ')';
    }
}
