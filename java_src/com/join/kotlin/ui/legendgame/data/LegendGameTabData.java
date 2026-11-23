package com.join.kotlin.ui.legendgame.data;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;", "", "id", "", "title", "", "<init>", "(ILjava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LegendGameTabData {
    private int id;

    @Nullable
    private String title;

    /* JADX WARN: Multi-variable type inference failed */
    public LegendGameTabData() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ LegendGameTabData copy$default(LegendGameTabData legendGameTabData, int i10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = legendGameTabData.id;
        }
        if ((i11 & 2) != 0) {
            str = legendGameTabData.title;
        }
        return legendGameTabData.copy(i10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @NotNull
    public final LegendGameTabData copy(int id2, @Nullable String title) {
        return new LegendGameTabData(id2, title);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LegendGameTabData)) {
            return false;
        }
        LegendGameTabData legendGameTabData = (LegendGameTabData) other;
        return this.id == legendGameTabData.id && Intrinsics.areEqual(this.title, legendGameTabData.title);
    }

    public final int getId() {
        return this.id;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int i10 = this.id * 31;
        String str = this.title;
        return i10 + (str == null ? 0 : str.hashCode());
    }

    public final void setId(int i10) {
        this.id = i10;
    }

    public final void setTitle(@Nullable String str) {
        this.title = str;
    }

    @NotNull
    public String toString() {
        return "LegendGameTabData(id=" + this.id + ", title=" + this.title + ')';
    }

    public LegendGameTabData(int i10, @Nullable String str) {
        this.id = i10;
        this.title = str;
    }

    public /* synthetic */ LegendGameTabData(int i10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10, (i11 & 2) != 0 ? null : str);
    }
}
