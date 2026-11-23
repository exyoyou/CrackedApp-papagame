package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendLatestServerGroup;", "", "open_time", "", "list", "", "Lcom/join/kotlin/ui/legendgame/data/LegendLatestServerItem;", "<init>", "(JLjava/util/List;)V", "getOpen_time", "()J", "setOpen_time", "(J)V", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendLatestServerGroup {

    @Nullable
    private List<LegendLatestServerItem> list;
    private long open_time;

    public LegendLatestServerGroup() {
        this(0L, null, 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LegendLatestServerGroup copy$default(LegendLatestServerGroup legendLatestServerGroup, long j10, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = legendLatestServerGroup.open_time;
        }
        if ((i10 & 2) != 0) {
            list = legendLatestServerGroup.list;
        }
        return legendLatestServerGroup.copy(j10, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getOpen_time() {
        return this.open_time;
    }

    @Nullable
    public final List<LegendLatestServerItem> component2() {
        return this.list;
    }

    @NotNull
    public final LegendLatestServerGroup copy(long open_time, @Nullable List<LegendLatestServerItem> list) {
        return new LegendLatestServerGroup(open_time, list);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendLatestServerGroup)) {
            return false;
        }
        LegendLatestServerGroup legendLatestServerGroup = (LegendLatestServerGroup) other;
        return this.open_time == legendLatestServerGroup.open_time && Intrinsics.areEqual(this.list, legendLatestServerGroup.list);
    }

    @Nullable
    public final List<LegendLatestServerItem> getList() {
        return this.list;
    }

    public final long getOpen_time() {
        return this.open_time;
    }

    public int hashCode() {
        int iA = a.a(this.open_time) * 31;
        List<LegendLatestServerItem> list = this.list;
        return iA + (list == null ? 0 : list.hashCode());
    }

    public final void setList(@Nullable List<LegendLatestServerItem> list) {
        this.list = list;
    }

    public final void setOpen_time(long j10) {
        this.open_time = j10;
    }

    @NotNull
    public String toString() {
        return "LegendLatestServerGroup(open_time=" + this.open_time + ", list=" + this.list + ')';
    }

    public LegendLatestServerGroup(long j10, @Nullable List<LegendLatestServerItem> list) {
        this.open_time = j10;
        this.list = list;
    }

    public /* synthetic */ LegendLatestServerGroup(long j10, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, (i10 & 2) != 0 ? null : list);
    }
}
