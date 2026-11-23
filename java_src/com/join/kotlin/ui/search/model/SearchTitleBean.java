package com.join.kotlin.ui.search.model;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J)\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/search/model/SearchTitleBean;", "", "title", "", "search_type", "more", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getTitle", "()Ljava/lang/String;", "getSearch_type", "getMore", "()Z", "component1", "component2", "component3", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SearchTitleBean {
    private final boolean more;

    @Nullable
    private final String search_type;

    @NotNull
    private final String title;

    public SearchTitleBean(@NotNull String title, @Nullable String str, boolean z10) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.search_type = str;
        this.more = z10;
    }

    public static /* synthetic */ SearchTitleBean copy$default(SearchTitleBean searchTitleBean, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = searchTitleBean.title;
        }
        if ((i10 & 2) != 0) {
            str2 = searchTitleBean.search_type;
        }
        if ((i10 & 4) != 0) {
            z10 = searchTitleBean.more;
        }
        return searchTitleBean.copy(str, str2, z10);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSearch_type() {
        return this.search_type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getMore() {
        return this.more;
    }

    @NotNull
    public final SearchTitleBean copy(@NotNull String title, @Nullable String search_type, boolean more) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new SearchTitleBean(title, search_type, more);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchTitleBean)) {
            return false;
        }
        SearchTitleBean searchTitleBean = (SearchTitleBean) other;
        return Intrinsics.areEqual(this.title, searchTitleBean.title) && Intrinsics.areEqual(this.search_type, searchTitleBean.search_type) && this.more == searchTitleBean.more;
    }

    public final boolean getMore() {
        return this.more;
    }

    @Nullable
    public final String getSearch_type() {
        return this.search_type;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iHashCode = this.title.hashCode() * 31;
        String str = this.search_type;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + a.a(this.more);
    }

    @NotNull
    public String toString() {
        return "SearchTitleBean(title=" + this.title + ", search_type=" + this.search_type + ", more=" + this.more + ')';
    }

    public /* synthetic */ SearchTitleBean(String str, String str2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? false : z10);
    }
}
