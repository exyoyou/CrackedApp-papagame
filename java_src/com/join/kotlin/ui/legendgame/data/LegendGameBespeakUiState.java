package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J1\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u000b\"\u0004\b\u000e\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;", "", "showBespeakBell", "", "is_reminded", "is_follow", "detailId", "", "<init>", "(ZZZJ)V", "getShowBespeakBell", "()Z", "setShowBespeakBell", "(Z)V", "set_reminded", "set_follow", "getDetailId", "()J", "setDetailId", "(J)V", "component1", "component2", "component3", "component4", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendGameBespeakUiState {
    private long detailId;
    private boolean is_follow;
    private boolean is_reminded;
    private boolean showBespeakBell;

    public LegendGameBespeakUiState() {
        this(false, false, false, 0L, 15, null);
    }

    public static /* synthetic */ LegendGameBespeakUiState copy$default(LegendGameBespeakUiState legendGameBespeakUiState, boolean z10, boolean z11, boolean z12, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = legendGameBespeakUiState.showBespeakBell;
        }
        if ((i10 & 2) != 0) {
            z11 = legendGameBespeakUiState.is_reminded;
        }
        boolean z13 = z11;
        if ((i10 & 4) != 0) {
            z12 = legendGameBespeakUiState.is_follow;
        }
        boolean z14 = z12;
        if ((i10 & 8) != 0) {
            j10 = legendGameBespeakUiState.detailId;
        }
        return legendGameBespeakUiState.copy(z10, z13, z14, j10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getShowBespeakBell() {
        return this.showBespeakBell;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIs_reminded() {
        return this.is_reminded;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIs_follow() {
        return this.is_follow;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getDetailId() {
        return this.detailId;
    }

    @NotNull
    public final LegendGameBespeakUiState copy(boolean showBespeakBell, boolean is_reminded, boolean is_follow, long detailId) {
        return new LegendGameBespeakUiState(showBespeakBell, is_reminded, is_follow, detailId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendGameBespeakUiState)) {
            return false;
        }
        LegendGameBespeakUiState legendGameBespeakUiState = (LegendGameBespeakUiState) other;
        return this.showBespeakBell == legendGameBespeakUiState.showBespeakBell && this.is_reminded == legendGameBespeakUiState.is_reminded && this.is_follow == legendGameBespeakUiState.is_follow && this.detailId == legendGameBespeakUiState.detailId;
    }

    public final long getDetailId() {
        return this.detailId;
    }

    public final boolean getShowBespeakBell() {
        return this.showBespeakBell;
    }

    public int hashCode() {
        return (((((a.a(this.showBespeakBell) * 31) + a.a(this.is_reminded)) * 31) + a.a(this.is_follow)) * 31) + s5.a.a(this.detailId);
    }

    public final boolean is_follow() {
        return this.is_follow;
    }

    public final boolean is_reminded() {
        return this.is_reminded;
    }

    public final void setDetailId(long j10) {
        this.detailId = j10;
    }

    public final void setShowBespeakBell(boolean z10) {
        this.showBespeakBell = z10;
    }

    public final void set_follow(boolean z10) {
        this.is_follow = z10;
    }

    public final void set_reminded(boolean z10) {
        this.is_reminded = z10;
    }

    @NotNull
    public String toString() {
        return "LegendGameBespeakUiState(showBespeakBell=" + this.showBespeakBell + ", is_reminded=" + this.is_reminded + ", is_follow=" + this.is_follow + ", detailId=" + this.detailId + ')';
    }

    public LegendGameBespeakUiState(boolean z10, boolean z11, boolean z12, long j10) {
        this.showBespeakBell = z10;
        this.is_reminded = z11;
        this.is_follow = z12;
        this.detailId = j10;
    }

    public /* synthetic */ LegendGameBespeakUiState(boolean z10, boolean z11, boolean z12, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) == 0 ? z12 : false, (i10 & 8) != 0 ? 0L : j10);
    }
}
