package com.join.kotlin.ui.legendgame.data;

import com.join.mgps.activity.posting.PostingActivity_;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;", "", PostingActivity_.LABEL_EXTRA, "", "time", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "setLabel", "(Ljava/lang/String;)V", "getTime", "setTime", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendGameServerOpenData {

    @Nullable
    private String label;

    @Nullable
    private String time;

    /* JADX WARN: Multi-variable type inference failed */
    public LegendGameServerOpenData() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ LegendGameServerOpenData copy$default(LegendGameServerOpenData legendGameServerOpenData, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = legendGameServerOpenData.label;
        }
        if ((i10 & 2) != 0) {
            str2 = legendGameServerOpenData.time;
        }
        return legendGameServerOpenData.copy(str, str2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTime() {
        return this.time;
    }

    @NotNull
    public final LegendGameServerOpenData copy(@Nullable String label, @Nullable String time) {
        return new LegendGameServerOpenData(label, time);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendGameServerOpenData)) {
            return false;
        }
        LegendGameServerOpenData legendGameServerOpenData = (LegendGameServerOpenData) other;
        return Intrinsics.areEqual(this.label, legendGameServerOpenData.label) && Intrinsics.areEqual(this.time, legendGameServerOpenData.time);
    }

    @Nullable
    public final String getLabel() {
        return this.label;
    }

    @Nullable
    public final String getTime() {
        return this.time;
    }

    public int hashCode() {
        String str = this.label;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.time;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setLabel(@Nullable String str) {
        this.label = str;
    }

    public final void setTime(@Nullable String str) {
        this.time = str;
    }

    @NotNull
    public String toString() {
        return "LegendGameServerOpenData(label=" + this.label + ", time=" + this.time + ')';
    }

    public LegendGameServerOpenData(@Nullable String str, @Nullable String str2) {
        this.label = str;
        this.time = str2;
    }

    public /* synthetic */ LegendGameServerOpenData(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2);
    }
}
