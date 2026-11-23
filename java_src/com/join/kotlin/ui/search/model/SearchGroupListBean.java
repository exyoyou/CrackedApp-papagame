package com.join.kotlin.ui.search.model;

import com.join.mgps.dto.CommonGameInfoBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J7\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/ui/search/model/SearchGroupListBean;", "", "title", "", "ad_position", "", "more", "", "list", "", "Lcom/join/mgps/dto/CommonGameInfoBean;", "<init>", "(Ljava/lang/String;IZLjava/util/List;)V", "getTitle", "()Ljava/lang/String;", "getAd_position", "()I", "getMore", "()Z", "getList", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SearchGroupListBean {
    private final int ad_position;

    @NotNull
    private final List<CommonGameInfoBean> list;
    private final boolean more;

    @NotNull
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public SearchGroupListBean(@NotNull String title, int i10, boolean z10, @NotNull List<? extends CommonGameInfoBean> list) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(list, "list");
        this.title = title;
        this.ad_position = i10;
        this.more = z10;
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchGroupListBean copy$default(SearchGroupListBean searchGroupListBean, String str, int i10, boolean z10, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = searchGroupListBean.title;
        }
        if ((i11 & 2) != 0) {
            i10 = searchGroupListBean.ad_position;
        }
        if ((i11 & 4) != 0) {
            z10 = searchGroupListBean.more;
        }
        if ((i11 & 8) != 0) {
            list = searchGroupListBean.list;
        }
        return searchGroupListBean.copy(str, i10, z10, list);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getAd_position() {
        return this.ad_position;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getMore() {
        return this.more;
    }

    @NotNull
    public final List<CommonGameInfoBean> component4() {
        return this.list;
    }

    @NotNull
    public final SearchGroupListBean copy(@NotNull String title, int ad_position, boolean more, @NotNull List<? extends CommonGameInfoBean> list) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(list, "list");
        return new SearchGroupListBean(title, ad_position, more, list);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchGroupListBean)) {
            return false;
        }
        SearchGroupListBean searchGroupListBean = (SearchGroupListBean) other;
        return Intrinsics.areEqual(this.title, searchGroupListBean.title) && this.ad_position == searchGroupListBean.ad_position && this.more == searchGroupListBean.more && Intrinsics.areEqual(this.list, searchGroupListBean.list);
    }

    public final int getAd_position() {
        return this.ad_position;
    }

    @NotNull
    public final List<CommonGameInfoBean> getList() {
        return this.list;
    }

    public final boolean getMore() {
        return this.more;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return (((((this.title.hashCode() * 31) + this.ad_position) * 31) + a.a(this.more)) * 31) + this.list.hashCode();
    }

    @NotNull
    public String toString() {
        return "SearchGroupListBean(title=" + this.title + ", ad_position=" + this.ad_position + ", more=" + this.more + ", list=" + this.list + ')';
    }

    public /* synthetic */ SearchGroupListBean(String str, int i10, boolean z10, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? 0 : i10, (i11 & 4) != 0 ? false : z10, list);
    }
}
