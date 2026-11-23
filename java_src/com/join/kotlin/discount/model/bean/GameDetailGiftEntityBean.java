package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import j6.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailGiftEntityBean;", "Lcom/join/mgps/base/entity/MultiItemEntity;", "viewType", "", "data", "", "<init>", "(ILjava/lang/Object;)V", "getViewType", "()I", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "getItemType", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailGiftEntityBean implements b {

    @Nullable
    private Object data;
    private final int viewType;

    public GameDetailGiftEntityBean(int i10, @Nullable Object obj) {
        this.viewType = i10;
        this.data = obj;
    }

    public static /* synthetic */ GameDetailGiftEntityBean copy$default(GameDetailGiftEntityBean gameDetailGiftEntityBean, int i10, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = gameDetailGiftEntityBean.viewType;
        }
        if ((i11 & 2) != 0) {
            obj = gameDetailGiftEntityBean.data;
        }
        return gameDetailGiftEntityBean.copy(i10, obj);
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

    @NotNull
    public final GameDetailGiftEntityBean copy(int viewType, @Nullable Object data) {
        return new GameDetailGiftEntityBean(viewType, data);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailGiftEntityBean)) {
            return false;
        }
        GameDetailGiftEntityBean gameDetailGiftEntityBean = (GameDetailGiftEntityBean) other;
        return this.viewType == gameDetailGiftEntityBean.viewType && Intrinsics.areEqual(this.data, gameDetailGiftEntityBean.data);
    }

    @Nullable
    public final Object getData() {
        return this.data;
    }

    @Override // j6.b
    public int getItemType() {
        return this.viewType;
    }

    public final int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        int i10 = this.viewType * 31;
        Object obj = this.data;
        return i10 + (obj == null ? 0 : obj.hashCode());
    }

    public final void setData(@Nullable Object obj) {
        this.data = obj;
    }

    @NotNull
    public String toString() {
        return "GameDetailGiftEntityBean(viewType=" + this.viewType + ", data=" + this.data + ')';
    }
}
