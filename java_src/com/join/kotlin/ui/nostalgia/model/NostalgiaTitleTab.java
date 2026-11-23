package com.join.kotlin.ui.nostalgia.model;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J+\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/model/NostalgiaTitleTab;", "", "title", "", "selected", "", "nostalgia_type", "<init>", "(Ljava/lang/String;ZLjava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "getSelected", "()Z", "getNostalgia_type", "component1", "component2", "component3", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class NostalgiaTitleTab {

    @Nullable
    private final String nostalgia_type;
    private final boolean selected;

    @Nullable
    private final String title;

    public NostalgiaTitleTab(@Nullable String str, boolean z10, @Nullable String str2) {
        this.title = str;
        this.selected = z10;
        this.nostalgia_type = str2;
    }

    public static /* synthetic */ NostalgiaTitleTab copy$default(NostalgiaTitleTab nostalgiaTitleTab, String str, boolean z10, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = nostalgiaTitleTab.title;
        }
        if ((i10 & 2) != 0) {
            z10 = nostalgiaTitleTab.selected;
        }
        if ((i10 & 4) != 0) {
            str2 = nostalgiaTitleTab.nostalgia_type;
        }
        return nostalgiaTitleTab.copy(str, z10, str2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getSelected() {
        return this.selected;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getNostalgia_type() {
        return this.nostalgia_type;
    }

    @NotNull
    public final NostalgiaTitleTab copy(@Nullable String title, boolean selected, @Nullable String nostalgia_type) {
        return new NostalgiaTitleTab(title, selected, nostalgia_type);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NostalgiaTitleTab)) {
            return false;
        }
        NostalgiaTitleTab nostalgiaTitleTab = (NostalgiaTitleTab) other;
        return Intrinsics.areEqual(this.title, nostalgiaTitleTab.title) && this.selected == nostalgiaTitleTab.selected && Intrinsics.areEqual(this.nostalgia_type, nostalgiaTitleTab.nostalgia_type);
    }

    @Nullable
    public final String getNostalgia_type() {
        return this.nostalgia_type;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    @Nullable
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + a.a(this.selected)) * 31;
        String str2 = this.nostalgia_type;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "NostalgiaTitleTab(title=" + this.title + ", selected=" + this.selected + ", nostalgia_type=" + this.nostalgia_type + ')';
    }

    public /* synthetic */ NostalgiaTitleTab(String str, boolean z10, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? false : z10, str2);
    }
}
