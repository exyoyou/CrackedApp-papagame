package com.join.kotlin.quark.model.bean;

import com.join.mgps.dto.CommonGameInfoBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u001e\u0010\u0002\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u0005HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J=\u0010\u0011\u001a\u00020\u00002 \b\u0002\u0010\u0002\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u00052\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R)\u0010\u0002\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003j\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/quark/model/bean/SourceTabListBean;", "", "tabs", "Ljava/util/ArrayList;", "Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;", "Lkotlin/collections/ArrayList;", "banner", "", "Lcom/join/mgps/dto/CommonGameInfoBean;", "<init>", "(Ljava/util/ArrayList;Ljava/util/List;)V", "getTabs", "()Ljava/util/ArrayList;", "getBanner", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SourceTabListBean {

    @Nullable
    private final List<CommonGameInfoBean> banner;

    @Nullable
    private final ArrayList<SourceTabItemBean> tabs;

    /* JADX WARN: Multi-variable type inference failed */
    public SourceTabListBean(@Nullable ArrayList<SourceTabItemBean> arrayList, @Nullable List<? extends CommonGameInfoBean> list) {
        this.tabs = arrayList;
        this.banner = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SourceTabListBean copy$default(SourceTabListBean sourceTabListBean, ArrayList arrayList, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            arrayList = sourceTabListBean.tabs;
        }
        if ((i10 & 2) != 0) {
            list = sourceTabListBean.banner;
        }
        return sourceTabListBean.copy(arrayList, list);
    }

    @Nullable
    public final ArrayList<SourceTabItemBean> component1() {
        return this.tabs;
    }

    @Nullable
    public final List<CommonGameInfoBean> component2() {
        return this.banner;
    }

    @NotNull
    public final SourceTabListBean copy(@Nullable ArrayList<SourceTabItemBean> tabs, @Nullable List<? extends CommonGameInfoBean> banner) {
        return new SourceTabListBean(tabs, banner);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SourceTabListBean)) {
            return false;
        }
        SourceTabListBean sourceTabListBean = (SourceTabListBean) other;
        return Intrinsics.areEqual(this.tabs, sourceTabListBean.tabs) && Intrinsics.areEqual(this.banner, sourceTabListBean.banner);
    }

    @Nullable
    public final List<CommonGameInfoBean> getBanner() {
        return this.banner;
    }

    @Nullable
    public final ArrayList<SourceTabItemBean> getTabs() {
        return this.tabs;
    }

    public int hashCode() {
        ArrayList<SourceTabItemBean> arrayList = this.tabs;
        int iHashCode = (arrayList == null ? 0 : arrayList.hashCode()) * 31;
        List<CommonGameInfoBean> list = this.banner;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "SourceTabListBean(tabs=" + this.tabs + ", banner=" + this.banner + ')';
    }
}
