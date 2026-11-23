package com.join.kotlin.ui.search.model.args;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003JI\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0005HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000f\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\rR\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000f¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/search/model/args/SearchMoreArgs;", "", "keyword", "", "page", "", "plugin_num", "lang_id", "searchType", "search_status", "<init>", "(Ljava/lang/String;IIILjava/lang/String;I)V", "getKeyword", "()Ljava/lang/String;", "getPage", "()I", "getPlugin_num", "setPlugin_num", "(I)V", "getLang_id", "setLang_id", "getSearchType", "getSearch_status", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SearchMoreArgs {

    @Nullable
    private final String keyword;
    private int lang_id;
    private final int page;
    private int plugin_num;

    @Nullable
    private final String searchType;
    private final int search_status;

    public SearchMoreArgs(@Nullable String str, int i10, int i11, int i12, @Nullable String str2, int i13) {
        this.keyword = str;
        this.page = i10;
        this.plugin_num = i11;
        this.lang_id = i12;
        this.searchType = str2;
        this.search_status = i13;
    }

    public static /* synthetic */ SearchMoreArgs copy$default(SearchMoreArgs searchMoreArgs, String str, int i10, int i11, int i12, String str2, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            str = searchMoreArgs.keyword;
        }
        if ((i14 & 2) != 0) {
            i10 = searchMoreArgs.page;
        }
        int i15 = i10;
        if ((i14 & 4) != 0) {
            i11 = searchMoreArgs.plugin_num;
        }
        int i16 = i11;
        if ((i14 & 8) != 0) {
            i12 = searchMoreArgs.lang_id;
        }
        int i17 = i12;
        if ((i14 & 16) != 0) {
            str2 = searchMoreArgs.searchType;
        }
        String str3 = str2;
        if ((i14 & 32) != 0) {
            i13 = searchMoreArgs.search_status;
        }
        return searchMoreArgs.copy(str, i15, i16, i17, str3, i13);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKeyword() {
        return this.keyword;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPlugin_num() {
        return this.plugin_num;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getLang_id() {
        return this.lang_id;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSearchType() {
        return this.searchType;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getSearch_status() {
        return this.search_status;
    }

    @NotNull
    public final SearchMoreArgs copy(@Nullable String keyword, int page, int plugin_num, int lang_id, @Nullable String searchType, int search_status) {
        return new SearchMoreArgs(keyword, page, plugin_num, lang_id, searchType, search_status);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchMoreArgs)) {
            return false;
        }
        SearchMoreArgs searchMoreArgs = (SearchMoreArgs) other;
        return Intrinsics.areEqual(this.keyword, searchMoreArgs.keyword) && this.page == searchMoreArgs.page && this.plugin_num == searchMoreArgs.plugin_num && this.lang_id == searchMoreArgs.lang_id && Intrinsics.areEqual(this.searchType, searchMoreArgs.searchType) && this.search_status == searchMoreArgs.search_status;
    }

    @Nullable
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

    @Nullable
    public final String getSearchType() {
        return this.searchType;
    }

    public final int getSearch_status() {
        return this.search_status;
    }

    public int hashCode() {
        String str = this.keyword;
        int iHashCode = (((((((str == null ? 0 : str.hashCode()) * 31) + this.page) * 31) + this.plugin_num) * 31) + this.lang_id) * 31;
        String str2 = this.searchType;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.search_status;
    }

    public final void setLang_id(int i10) {
        this.lang_id = i10;
    }

    public final void setPlugin_num(int i10) {
        this.plugin_num = i10;
    }

    @NotNull
    public String toString() {
        return "SearchMoreArgs(keyword=" + this.keyword + ", page=" + this.page + ", plugin_num=" + this.plugin_num + ", lang_id=" + this.lang_id + ", searchType=" + this.searchType + ", search_status=" + this.search_status + ')';
    }

    public /* synthetic */ SearchMoreArgs(String str, int i10, int i11, int i12, String str2, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i14 & 2) != 0 ? 1 : i10, i11, i12, str2, (i14 & 32) != 0 ? 0 : i13);
    }
}
