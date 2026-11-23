package com.join.kotlin.ui.gameexpress.model;

import com.join.mgps.activity.GprsNoticeDialogAlphActivity_;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\u0013\u001a\u0004\u0018\u0001H\u0014\"\u0006\b\u0000\u0010\u0014\u0018\u0001H\u0086\b¢\u0006\u0002\u0010\u000eJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J=\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000fR\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000f\"\u0004\b\u0011\u0010\u0012¨\u0006 "}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;", "", "viewType", "", "data", "isNew", "", GprsNoticeDialogAlphActivity_.IS_UPDATE_EXTRA, "hasExposed", "<init>", "(ILjava/lang/Object;ZZZ)V", "getViewType", "()I", "getData", "()Ljava/lang/Object;", "()Z", "getHasExposed", "setHasExposed", "(Z)V", "dataVal", "T", "component1", "component2", "component3", "component4", "component5", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameExpressMultiItem {

    @Nullable
    private final Object data;
    private boolean hasExposed;
    private final boolean isNew;
    private final boolean isUpdate;
    private final int viewType;

    public GameExpressMultiItem(int i10, @Nullable Object obj, boolean z10, boolean z11, boolean z12) {
        this.viewType = i10;
        this.data = obj;
        this.isNew = z10;
        this.isUpdate = z11;
        this.hasExposed = z12;
    }

    public static /* synthetic */ GameExpressMultiItem copy$default(GameExpressMultiItem gameExpressMultiItem, int i10, Object obj, boolean z10, boolean z11, boolean z12, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = gameExpressMultiItem.viewType;
        }
        if ((i11 & 2) != 0) {
            obj = gameExpressMultiItem.data;
        }
        Object obj3 = obj;
        if ((i11 & 4) != 0) {
            z10 = gameExpressMultiItem.isNew;
        }
        boolean z13 = z10;
        if ((i11 & 8) != 0) {
            z11 = gameExpressMultiItem.isUpdate;
        }
        boolean z14 = z11;
        if ((i11 & 16) != 0) {
            z12 = gameExpressMultiItem.hasExposed;
        }
        return gameExpressMultiItem.copy(i10, obj3, z13, z14, z12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getViewType() {
        return this.viewType;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Object getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsNew() {
        return this.isNew;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsUpdate() {
        return this.isUpdate;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getHasExposed() {
        return this.hasExposed;
    }

    @NotNull
    public final GameExpressMultiItem copy(int viewType, @Nullable Object data, boolean isNew, boolean isUpdate, boolean hasExposed) {
        return new GameExpressMultiItem(viewType, data, isNew, isUpdate, hasExposed);
    }

    public final /* synthetic */ <T> T dataVal() {
        T t10 = (T) getData();
        Intrinsics.reifiedOperationMarker(2, "T");
        return t10;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameExpressMultiItem)) {
            return false;
        }
        GameExpressMultiItem gameExpressMultiItem = (GameExpressMultiItem) other;
        return this.viewType == gameExpressMultiItem.viewType && Intrinsics.areEqual(this.data, gameExpressMultiItem.data) && this.isNew == gameExpressMultiItem.isNew && this.isUpdate == gameExpressMultiItem.isUpdate && this.hasExposed == gameExpressMultiItem.hasExposed;
    }

    @Nullable
    public final Object getData() {
        return this.data;
    }

    public final boolean getHasExposed() {
        return this.hasExposed;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int i10 = this.viewType * 31;
        Object obj = this.data;
        return ((((((i10 + (obj == null ? 0 : obj.hashCode())) * 31) + a.a(this.isNew)) * 31) + a.a(this.isUpdate)) * 31) + a.a(this.hasExposed);
    }

    public final boolean isNew() {
        return this.isNew;
    }

    public final boolean isUpdate() {
        return this.isUpdate;
    }

    public final void setHasExposed(boolean z10) {
        this.hasExposed = z10;
    }

    @NotNull
    public String toString() {
        return "GameExpressMultiItem(viewType=" + this.viewType + ", data=" + this.data + ", isNew=" + this.isNew + ", isUpdate=" + this.isUpdate + ", hasExposed=" + this.hasExposed + ')';
    }

    public /* synthetic */ GameExpressMultiItem(int i10, Object obj, boolean z10, boolean z11, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i11 & 2) != 0 ? null : obj, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? false : z11, (i11 & 16) != 0 ? false : z12);
    }
}
