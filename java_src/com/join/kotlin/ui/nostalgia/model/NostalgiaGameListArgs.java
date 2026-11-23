package com.join.kotlin.ui.nostalgia.model;

import com.kwad.sdk.api.model.AdnName;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\n\"\u0004\b\u000e\u0010\fR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/ui/nostalgia/model/NostalgiaGameListArgs;", "Ljava/io/Serializable;", "uid", "", "page", "nostalgia_type", "", "<init>", "(IILjava/lang/String;)V", "getUid", "()I", "setUid", "(I)V", "getPage", "setPage", "getNostalgia_type", "()Ljava/lang/String;", "setNostalgia_type", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "", "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class NostalgiaGameListArgs implements Serializable {

    @NotNull
    private String nostalgia_type;
    private int page;
    private int uid;

    public NostalgiaGameListArgs() {
        this(0, 0, null, 7, null);
    }

    public static /* synthetic */ NostalgiaGameListArgs copy$default(NostalgiaGameListArgs nostalgiaGameListArgs, int i10, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = nostalgiaGameListArgs.uid;
        }
        if ((i12 & 2) != 0) {
            i11 = nostalgiaGameListArgs.page;
        }
        if ((i12 & 4) != 0) {
            str = nostalgiaGameListArgs.nostalgia_type;
        }
        return nostalgiaGameListArgs.copy(i10, i11, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getUid() {
        return this.uid;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getNostalgia_type() {
        return this.nostalgia_type;
    }

    @NotNull
    public final NostalgiaGameListArgs copy(int uid, int page, @NotNull String nostalgia_type) {
        Intrinsics.checkNotNullParameter(nostalgia_type, "nostalgia_type");
        return new NostalgiaGameListArgs(uid, page, nostalgia_type);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NostalgiaGameListArgs)) {
            return false;
        }
        NostalgiaGameListArgs nostalgiaGameListArgs = (NostalgiaGameListArgs) other;
        return this.uid == nostalgiaGameListArgs.uid && this.page == nostalgiaGameListArgs.page && Intrinsics.areEqual(this.nostalgia_type, nostalgiaGameListArgs.nostalgia_type);
    }

    @NotNull
    public final String getNostalgia_type() {
        return this.nostalgia_type;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getUid() {
        return this.uid;
    }

    public int hashCode() {
        return (((this.uid * 31) + this.page) * 31) + this.nostalgia_type.hashCode();
    }

    public final void setNostalgia_type(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.nostalgia_type = str;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setUid(int i10) {
        this.uid = i10;
    }

    @NotNull
    public String toString() {
        return "NostalgiaGameListArgs(uid=" + this.uid + ", page=" + this.page + ", nostalgia_type=" + this.nostalgia_type + ')';
    }

    public NostalgiaGameListArgs(int i10, int i11, @NotNull String nostalgia_type) {
        Intrinsics.checkNotNullParameter(nostalgia_type, "nostalgia_type");
        this.uid = i10;
        this.page = i11;
        this.nostalgia_type = nostalgia_type;
    }

    public /* synthetic */ NostalgiaGameListArgs(int i10, int i11, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 1 : i11, (i12 & 4) != 0 ? "" : str);
    }
}
