package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindRequest;", "", "uid", "", "detailId", "", "<init>", "(IJ)V", "getUid", "()I", "setUid", "(I)V", "getDetailId", "()J", "setDetailId", "(J)V", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendServerRemindRequest {
    private long detailId;
    private int uid;

    public LegendServerRemindRequest() {
        this(0, 0L, 3, null);
    }

    public static /* synthetic */ LegendServerRemindRequest copy$default(LegendServerRemindRequest legendServerRemindRequest, int i10, long j10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = legendServerRemindRequest.uid;
        }
        if ((i11 & 2) != 0) {
            j10 = legendServerRemindRequest.detailId;
        }
        return legendServerRemindRequest.copy(i10, j10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getDetailId() {
        return this.detailId;
    }

    @NotNull
    public final LegendServerRemindRequest copy(int uid, long detailId) {
        return new LegendServerRemindRequest(uid, detailId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendServerRemindRequest)) {
            return false;
        }
        LegendServerRemindRequest legendServerRemindRequest = (LegendServerRemindRequest) other;
        return this.uid == legendServerRemindRequest.uid && this.detailId == legendServerRemindRequest.detailId;
    }

    public final long getDetailId() {
        return this.detailId;
    }

    public final int getUid() {
        return this.uid;
    }

    public int hashCode() {
        return (this.uid * 31) + a.a(this.detailId);
    }

    public final void setDetailId(long j10) {
        this.detailId = j10;
    }

    public final void setUid(int i10) {
        this.uid = i10;
    }

    @NotNull
    public String toString() {
        return "LegendServerRemindRequest(uid=" + this.uid + ", detailId=" + this.detailId + ')';
    }

    public LegendServerRemindRequest(int i10, long j10) {
        this.uid = i10;
        this.detailId = j10;
    }

    public /* synthetic */ LegendServerRemindRequest(int i10, long j10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? 0L : j10);
    }
}
