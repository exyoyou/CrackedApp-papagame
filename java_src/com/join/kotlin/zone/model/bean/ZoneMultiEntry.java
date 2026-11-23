package com.join.kotlin.zone.model.bean;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\u000f\u001a\u0004\u0018\u0001H\u0010\"\u0004\b\u0000\u0010\u0010¢\u0006\u0002\u0010\u000eJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÆ\u0003J0\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0001HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;", "", "viewType", "", "componentId", "data", "<init>", "(ILjava/lang/Integer;Ljava/lang/Object;)V", "getViewType", "()I", "getComponentId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getData", "()Ljava/lang/Object;", "dataVal", "T", "component1", "component2", "component3", "copy", "(ILjava/lang/Integer;Ljava/lang/Object;)Lcom/join/kotlin/zone/model/bean/ZoneMultiEntry;", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ZoneMultiEntry {

    @Nullable
    private final Integer componentId;

    @Nullable
    private final Object data;
    private final int viewType;

    public ZoneMultiEntry(int i10, @Nullable Integer num, @Nullable Object obj) {
        this.viewType = i10;
        this.componentId = num;
        this.data = obj;
    }

    public static /* synthetic */ ZoneMultiEntry copy$default(ZoneMultiEntry zoneMultiEntry, int i10, Integer num, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = zoneMultiEntry.viewType;
        }
        if ((i11 & 2) != 0) {
            num = zoneMultiEntry.componentId;
        }
        if ((i11 & 4) != 0) {
            obj = zoneMultiEntry.data;
        }
        return zoneMultiEntry.copy(i10, num, obj);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getViewType() {
        return this.viewType;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getComponentId() {
        return this.componentId;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Object getData() {
        return this.data;
    }

    @NotNull
    public final ZoneMultiEntry copy(int viewType, @Nullable Integer componentId, @Nullable Object data) {
        return new ZoneMultiEntry(viewType, componentId, data);
    }

    @Nullable
    public final <T> T dataVal() {
        T t10 = (T) this.data;
        if (t10 == null) {
            return null;
        }
        return t10;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ZoneMultiEntry)) {
            return false;
        }
        ZoneMultiEntry zoneMultiEntry = (ZoneMultiEntry) other;
        return this.viewType == zoneMultiEntry.viewType && Intrinsics.areEqual(this.componentId, zoneMultiEntry.componentId) && Intrinsics.areEqual(this.data, zoneMultiEntry.data);
    }

    @Nullable
    public final Integer getComponentId() {
        return this.componentId;
    }

    @Nullable
    public final Object getData() {
        return this.data;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int i10 = this.viewType * 31;
        Integer num = this.componentId;
        int iHashCode = (i10 + (num == null ? 0 : num.hashCode())) * 31;
        Object obj = this.data;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "ZoneMultiEntry(viewType=" + this.viewType + ", componentId=" + this.componentId + ", data=" + this.data + ')';
    }

    public /* synthetic */ ZoneMultiEntry(int i10, Integer num, Object obj, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? 0 : num, obj);
    }
}
