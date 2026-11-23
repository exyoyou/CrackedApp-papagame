package com.join.kotlin.ui.search.model;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010#\u001a\u00020\fHÆ\u0003Jg\u0010$\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\fHÖ\u0001J\t\u0010)\u001a\u00020*HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006+"}, d2 = {"Lcom/join/kotlin/ui/search/model/SearchDataBean;", "", "gf_game_list", "Lcom/join/kotlin/ui/search/model/SearchGroupListBean;", "precise_list", "rec_line_ad_list", "rec_grid_ad_list", "recommend_game_list", "tag_game_list", "word_info", "Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;", "search_status", "", "<init>", "(Lcom/join/kotlin/ui/search/model/SearchGroupListBean;Lcom/join/kotlin/ui/search/model/SearchGroupListBean;Lcom/join/kotlin/ui/search/model/SearchGroupListBean;Lcom/join/kotlin/ui/search/model/SearchGroupListBean;Lcom/join/kotlin/ui/search/model/SearchGroupListBean;Lcom/join/kotlin/ui/search/model/SearchGroupListBean;Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;I)V", "getGf_game_list", "()Lcom/join/kotlin/ui/search/model/SearchGroupListBean;", "getPrecise_list", "getRec_line_ad_list", "getRec_grid_ad_list", "getRecommend_game_list", "getTag_game_list", "getWord_info", "()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;", "getSearch_status", "()I", "setSearch_status", "(I)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SearchDataBean {

    @Nullable
    private final SearchGroupListBean gf_game_list;

    @Nullable
    private final SearchGroupListBean precise_list;

    @Nullable
    private final SearchGroupListBean rec_grid_ad_list;

    @Nullable
    private final SearchGroupListBean rec_line_ad_list;

    @Nullable
    private final SearchGroupListBean recommend_game_list;
    private int search_status;

    @Nullable
    private final SearchGroupListBean tag_game_list;

    @Nullable
    private final SearchWordInfoBean word_info;

    public SearchDataBean(@Nullable SearchGroupListBean searchGroupListBean, @Nullable SearchGroupListBean searchGroupListBean2, @Nullable SearchGroupListBean searchGroupListBean3, @Nullable SearchGroupListBean searchGroupListBean4, @Nullable SearchGroupListBean searchGroupListBean5, @Nullable SearchGroupListBean searchGroupListBean6, @Nullable SearchWordInfoBean searchWordInfoBean, int i10) {
        this.gf_game_list = searchGroupListBean;
        this.precise_list = searchGroupListBean2;
        this.rec_line_ad_list = searchGroupListBean3;
        this.rec_grid_ad_list = searchGroupListBean4;
        this.recommend_game_list = searchGroupListBean5;
        this.tag_game_list = searchGroupListBean6;
        this.word_info = searchWordInfoBean;
        this.search_status = i10;
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final SearchGroupListBean getGf_game_list() {
        return this.gf_game_list;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final SearchGroupListBean getPrecise_list() {
        return this.precise_list;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final SearchGroupListBean getRec_line_ad_list() {
        return this.rec_line_ad_list;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final SearchGroupListBean getRec_grid_ad_list() {
        return this.rec_grid_ad_list;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final SearchGroupListBean getRecommend_game_list() {
        return this.recommend_game_list;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final SearchGroupListBean getTag_game_list() {
        return this.tag_game_list;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final SearchWordInfoBean getWord_info() {
        return this.word_info;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getSearch_status() {
        return this.search_status;
    }

    @NotNull
    public final SearchDataBean copy(@Nullable SearchGroupListBean gf_game_list, @Nullable SearchGroupListBean precise_list, @Nullable SearchGroupListBean rec_line_ad_list, @Nullable SearchGroupListBean rec_grid_ad_list, @Nullable SearchGroupListBean recommend_game_list, @Nullable SearchGroupListBean tag_game_list, @Nullable SearchWordInfoBean word_info, int search_status) {
        return new SearchDataBean(gf_game_list, precise_list, rec_line_ad_list, rec_grid_ad_list, recommend_game_list, tag_game_list, word_info, search_status);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchDataBean)) {
            return false;
        }
        SearchDataBean searchDataBean = (SearchDataBean) other;
        return Intrinsics.areEqual(this.gf_game_list, searchDataBean.gf_game_list) && Intrinsics.areEqual(this.precise_list, searchDataBean.precise_list) && Intrinsics.areEqual(this.rec_line_ad_list, searchDataBean.rec_line_ad_list) && Intrinsics.areEqual(this.rec_grid_ad_list, searchDataBean.rec_grid_ad_list) && Intrinsics.areEqual(this.recommend_game_list, searchDataBean.recommend_game_list) && Intrinsics.areEqual(this.tag_game_list, searchDataBean.tag_game_list) && Intrinsics.areEqual(this.word_info, searchDataBean.word_info) && this.search_status == searchDataBean.search_status;
    }

    @Nullable
    public final SearchGroupListBean getGf_game_list() {
        return this.gf_game_list;
    }

    @Nullable
    public final SearchGroupListBean getPrecise_list() {
        return this.precise_list;
    }

    @Nullable
    public final SearchGroupListBean getRec_grid_ad_list() {
        return this.rec_grid_ad_list;
    }

    @Nullable
    public final SearchGroupListBean getRec_line_ad_list() {
        return this.rec_line_ad_list;
    }

    @Nullable
    public final SearchGroupListBean getRecommend_game_list() {
        return this.recommend_game_list;
    }

    public final int getSearch_status() {
        return this.search_status;
    }

    @Nullable
    public final SearchGroupListBean getTag_game_list() {
        return this.tag_game_list;
    }

    @Nullable
    public final SearchWordInfoBean getWord_info() {
        return this.word_info;
    }

    public int hashCode() {
        SearchGroupListBean searchGroupListBean = this.gf_game_list;
        int iHashCode = (searchGroupListBean == null ? 0 : searchGroupListBean.hashCode()) * 31;
        SearchGroupListBean searchGroupListBean2 = this.precise_list;
        int iHashCode2 = (iHashCode + (searchGroupListBean2 == null ? 0 : searchGroupListBean2.hashCode())) * 31;
        SearchGroupListBean searchGroupListBean3 = this.rec_line_ad_list;
        int iHashCode3 = (iHashCode2 + (searchGroupListBean3 == null ? 0 : searchGroupListBean3.hashCode())) * 31;
        SearchGroupListBean searchGroupListBean4 = this.rec_grid_ad_list;
        int iHashCode4 = (iHashCode3 + (searchGroupListBean4 == null ? 0 : searchGroupListBean4.hashCode())) * 31;
        SearchGroupListBean searchGroupListBean5 = this.recommend_game_list;
        int iHashCode5 = (iHashCode4 + (searchGroupListBean5 == null ? 0 : searchGroupListBean5.hashCode())) * 31;
        SearchGroupListBean searchGroupListBean6 = this.tag_game_list;
        int iHashCode6 = (iHashCode5 + (searchGroupListBean6 == null ? 0 : searchGroupListBean6.hashCode())) * 31;
        SearchWordInfoBean searchWordInfoBean = this.word_info;
        return ((iHashCode6 + (searchWordInfoBean != null ? searchWordInfoBean.hashCode() : 0)) * 31) + this.search_status;
    }

    public final void setSearch_status(int i10) {
        this.search_status = i10;
    }

    @NotNull
    public String toString() {
        return "SearchDataBean(gf_game_list=" + this.gf_game_list + ", precise_list=" + this.precise_list + ", rec_line_ad_list=" + this.rec_line_ad_list + ", rec_grid_ad_list=" + this.rec_grid_ad_list + ", recommend_game_list=" + this.recommend_game_list + ", tag_game_list=" + this.tag_game_list + ", word_info=" + this.word_info + ", search_status=" + this.search_status + ')';
    }

    public /* synthetic */ SearchDataBean(SearchGroupListBean searchGroupListBean, SearchGroupListBean searchGroupListBean2, SearchGroupListBean searchGroupListBean3, SearchGroupListBean searchGroupListBean4, SearchGroupListBean searchGroupListBean5, SearchGroupListBean searchGroupListBean6, SearchWordInfoBean searchWordInfoBean, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(searchGroupListBean, searchGroupListBean2, searchGroupListBean3, searchGroupListBean4, searchGroupListBean5, searchGroupListBean6, searchWordInfoBean, (i11 & 128) != 0 ? 0 : i10);
    }
}
