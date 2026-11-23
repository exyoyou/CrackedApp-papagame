package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendServerRemindResult;", "", "is_reminded", "", "is_follow", "<init>", "(ZZ)V", "component1", "component2", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendServerRemindResult {

    @JvmField
    public boolean is_follow;

    @JvmField
    public boolean is_reminded;

    /* JADX WARN: Illegal instructions before constructor call */
    public LegendServerRemindResult() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public static /* synthetic */ LegendServerRemindResult copy$default(LegendServerRemindResult legendServerRemindResult, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = legendServerRemindResult.is_reminded;
        }
        if ((i10 & 2) != 0) {
            z11 = legendServerRemindResult.is_follow;
        }
        return legendServerRemindResult.copy(z10, z11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIs_reminded() {
        return this.is_reminded;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIs_follow() {
        return this.is_follow;
    }

    @NotNull
    public final LegendServerRemindResult copy(boolean is_reminded, boolean is_follow) {
        return new LegendServerRemindResult(is_reminded, is_follow);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendServerRemindResult)) {
            return false;
        }
        LegendServerRemindResult legendServerRemindResult = (LegendServerRemindResult) other;
        return this.is_reminded == legendServerRemindResult.is_reminded && this.is_follow == legendServerRemindResult.is_follow;
    }

    public int hashCode() {
        return (a.a(this.is_reminded) * 31) + a.a(this.is_follow);
    }

    @NotNull
    public String toString() {
        return "LegendServerRemindResult(is_reminded=" + this.is_reminded + ", is_follow=" + this.is_follow + ')';
    }

    public LegendServerRemindResult(boolean z10, boolean z11) {
        this.is_reminded = z10;
        this.is_follow = z11;
    }

    public /* synthetic */ LegendServerRemindResult(boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11);
    }
}
