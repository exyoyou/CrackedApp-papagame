package com.join.kotlin.ui.hmcloud.model;

import com.kwad.sdk.api.model.AdnName;
import j6.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0014\u001a\u00020\u0003H\u0016J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J)\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;", "Lcom/join/mgps/base/entity/MultiItemEntity;", "viewType", "", "data", "", "collapse", "", "<init>", "(ILjava/lang/Object;Z)V", "getViewType", "()I", "getData", "()Ljava/lang/Object;", "setData", "(Ljava/lang/Object;)V", "getCollapse", "()Z", "setCollapse", "(Z)V", "getItemType", "component1", "component2", "component3", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class MultiCloudRecordBean implements b {
    private boolean collapse;

    @Nullable
    private Object data;
    private final int viewType;

    public MultiCloudRecordBean(int i10, @Nullable Object obj, boolean z10) {
        this.viewType = i10;
        this.data = obj;
        this.collapse = z10;
    }

    public static /* synthetic */ MultiCloudRecordBean copy$default(MultiCloudRecordBean multiCloudRecordBean, int i10, Object obj, boolean z10, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = multiCloudRecordBean.viewType;
        }
        if ((i11 & 2) != 0) {
            obj = multiCloudRecordBean.data;
        }
        if ((i11 & 4) != 0) {
            z10 = multiCloudRecordBean.collapse;
        }
        return multiCloudRecordBean.copy(i10, obj, z10);
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
    public final boolean getCollapse() {
        return this.collapse;
    }

    @NotNull
    public final MultiCloudRecordBean copy(int viewType, @Nullable Object data, boolean collapse) {
        return new MultiCloudRecordBean(viewType, data, collapse);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MultiCloudRecordBean)) {
            return false;
        }
        MultiCloudRecordBean multiCloudRecordBean = (MultiCloudRecordBean) other;
        return this.viewType == multiCloudRecordBean.viewType && Intrinsics.areEqual(this.data, multiCloudRecordBean.data) && this.collapse == multiCloudRecordBean.collapse;
    }

    public final boolean getCollapse() {
        return this.collapse;
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
        return ((i10 + (obj == null ? 0 : obj.hashCode())) * 31) + a.a(this.collapse);
    }

    public final void setCollapse(boolean z10) {
        this.collapse = z10;
    }

    public final void setData(@Nullable Object obj) {
        this.data = obj;
    }

    @NotNull
    public String toString() {
        return "MultiCloudRecordBean(viewType=" + this.viewType + ", data=" + this.data + ", collapse=" + this.collapse + ')';
    }

    public /* synthetic */ MultiCloudRecordBean(int i10, Object obj, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, obj, (i11 & 4) != 0 ? false : z10);
    }
}
