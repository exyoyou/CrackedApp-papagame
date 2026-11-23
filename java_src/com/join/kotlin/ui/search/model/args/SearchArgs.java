package com.join.kotlin.ui.search.model.args;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÆ\u0003JE\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u0007HÆ\u0001J\u0013\u0010 \u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\u0007HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/search/model/args/SearchArgs;", "", "keyword", "", "custom", "", "plugin_num", "", "lang_id", "page", "search_status", "<init>", "(Ljava/lang/String;ZIIII)V", "getKeyword", "()Ljava/lang/String;", "getCustom", "()Z", "getPlugin_num", "()I", "setPlugin_num", "(I)V", "getLang_id", "setLang_id", "getPage", "getSearch_status", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SearchArgs {
    private final boolean custom;

    @NotNull
    private final String keyword;
    private int lang_id;
    private final int page;
    private int plugin_num;
    private final int search_status;

    public SearchArgs(@NotNull String keyword, boolean z10, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        this.keyword = keyword;
        this.custom = z10;
        this.plugin_num = i10;
        this.lang_id = i11;
        this.page = i12;
        this.search_status = i13;
    }

    public static /* synthetic */ SearchArgs copy$default(SearchArgs searchArgs, String str, boolean z10, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            str = searchArgs.keyword;
        }
        if ((i14 & 2) != 0) {
            z10 = searchArgs.custom;
        }
        boolean z11 = z10;
        if ((i14 & 4) != 0) {
            i10 = searchArgs.plugin_num;
        }
        int i15 = i10;
        if ((i14 & 8) != 0) {
            i11 = searchArgs.lang_id;
        }
        int i16 = i11;
        if ((i14 & 16) != 0) {
            i12 = searchArgs.page;
        }
        int i17 = i12;
        if ((i14 & 32) != 0) {
            i13 = searchArgs.search_status;
        }
        return searchArgs.copy(str, z11, i15, i16, i17, i13);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKeyword() {
        return this.keyword;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getCustom() {
        return this.custom;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPlugin_num() {
        return this.plugin_num;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getLang_id() {
        return this.lang_id;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getSearch_status() {
        return this.search_status;
    }

    @NotNull
    public final SearchArgs copy(@NotNull String keyword, boolean custom, int plugin_num, int lang_id, int page, int search_status) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        return new SearchArgs(keyword, custom, plugin_num, lang_id, page, search_status);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchArgs)) {
            return false;
        }
        SearchArgs searchArgs = (SearchArgs) other;
        return Intrinsics.areEqual(this.keyword, searchArgs.keyword) && this.custom == searchArgs.custom && this.plugin_num == searchArgs.plugin_num && this.lang_id == searchArgs.lang_id && this.page == searchArgs.page && this.search_status == searchArgs.search_status;
    }

    public final boolean getCustom() {
        return this.custom;
    }

    @NotNull
    public final String getKeyword() {
        return this.keyword;
    }

    public final int getLang_id() {
        return this.lang_id;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPlugin_num() {
        return this.plugin_num;
    }

    public final int getSearch_status() {
        return this.search_status;
    }

    public int hashCode() {
        return (((((((((this.keyword.hashCode() * 31) + a.a(this.custom)) * 31) + this.plugin_num) * 31) + this.lang_id) * 31) + this.page) * 31) + this.search_status;
    }

    public final void setLang_id(int i10) {
        this.lang_id = i10;
    }

    public final void setPlugin_num(int i10) {
        this.plugin_num = i10;
    }

    @NotNull
    public String toString() {
        return "SearchArgs(keyword=" + this.keyword + ", custom=" + this.custom + ", plugin_num=" + this.plugin_num + ", lang_id=" + this.lang_id + ", page=" + this.page + ", search_status=" + this.search_status + ')';
    }

    public /* synthetic */ SearchArgs(String str, boolean z10, int i10, int i11, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z10, i10, i11, i12, (i14 & 32) != 0 ? 0 : i13);
    }
}
