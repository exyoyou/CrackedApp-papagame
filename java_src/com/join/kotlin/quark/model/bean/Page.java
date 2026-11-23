package com.join.kotlin.quark.model.bean;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/quark/model/bean/Page;", "", "page", "", "limit", "<init>", "(II)V", "getPage", "()I", "setPage", "(I)V", "getLimit", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Page {
    private final int limit;
    private int page;

    public Page(int i10, int i11) {
        this.page = i10;
        this.limit = i11;
    }

    public static /* synthetic */ Page copy$default(Page page, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = page.page;
        }
        if ((i12 & 2) != 0) {
            i11 = page.limit;
        }
        return page.copy(i10, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getLimit() {
        return this.limit;
    }

    @NotNull
    public final Page copy(int page, int limit) {
        return new Page(page, limit);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Page)) {
            return false;
        }
        Page page = (Page) other;
        return this.page == page.page && this.limit == page.limit;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final int getPage() {
        return this.page;
    }

    public int hashCode() {
        return (this.page * 31) + this.limit;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    @NotNull
    public String toString() {
        return "Page(page=" + this.page + ", limit=" + this.limit + ')';
    }

    public /* synthetic */ Page(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, (i12 & 2) != 0 ? 20 : i11);
    }
}
