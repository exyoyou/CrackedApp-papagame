package com.join.kotlin.quark.model.bean;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/quark/model/bean/SortTypeBean;", "", "type", "", "typeName", "", "<init>", "(ILjava/lang/String;)V", "getType", "()I", "getTypeName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SortTypeBean {
    private final int type;

    @NotNull
    private final String typeName;

    public SortTypeBean(int i10, @NotNull String typeName) {
        Intrinsics.checkNotNullParameter(typeName, "typeName");
        this.type = i10;
        this.typeName = typeName;
    }

    public static /* synthetic */ SortTypeBean copy$default(SortTypeBean sortTypeBean, int i10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = sortTypeBean.type;
        }
        if ((i11 & 2) != 0) {
            str = sortTypeBean.typeName;
        }
        return sortTypeBean.copy(i10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTypeName() {
        return this.typeName;
    }

    @NotNull
    public final SortTypeBean copy(int type, @NotNull String typeName) {
        Intrinsics.checkNotNullParameter(typeName, "typeName");
        return new SortTypeBean(type, typeName);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SortTypeBean)) {
            return false;
        }
        SortTypeBean sortTypeBean = (SortTypeBean) other;
        return this.type == sortTypeBean.type && Intrinsics.areEqual(this.typeName, sortTypeBean.typeName);
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final String getTypeName() {
        return this.typeName;
    }

    public int hashCode() {
        return (this.type * 31) + this.typeName.hashCode();
    }

    @NotNull
    public String toString() {
        return "SortTypeBean(type=" + this.type + ", typeName=" + this.typeName + ')';
    }
}
