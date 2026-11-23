package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendZoneRequest;", "", "uid", "", "<init>", "(J)V", "getUid", "()J", "setUid", "component1", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendZoneRequest {
    private long uid;

    public LegendZoneRequest() {
        this(0L, 1, null);
    }

    public static /* synthetic */ LegendZoneRequest copy$default(LegendZoneRequest legendZoneRequest, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = legendZoneRequest.uid;
        }
        return legendZoneRequest.copy(j10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getUid() {
        return this.uid;
    }

    @NotNull
    public final LegendZoneRequest copy(long uid) {
        return new LegendZoneRequest(uid);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof LegendZoneRequest) && this.uid == ((LegendZoneRequest) other).uid;
    }

    public final long getUid() {
        return this.uid;
    }

    public int hashCode() {
        return a.a(this.uid);
    }

    public final void setUid(long j10) {
        this.uid = j10;
    }

    @NotNull
    public String toString() {
        return "LegendZoneRequest(uid=" + this.uid + ')';
    }

    public LegendZoneRequest(long j10) {
        this.uid = j10;
    }

    public /* synthetic */ LegendZoneRequest(long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10);
    }
}
