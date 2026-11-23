package com.join.kotlin.ui.search.model;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J?\u0010\u0010\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0004HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;", "", "game_word", "", "", "gf_word", "show_word", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getGame_word", "()Ljava/util/List;", "getGf_word", "getShow_word", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SearchWordInfoBean {

    @Nullable
    private final List<String> game_word;

    @Nullable
    private final List<String> gf_word;

    @Nullable
    private final List<String> show_word;

    public SearchWordInfoBean(@Nullable List<String> list, @Nullable List<String> list2, @Nullable List<String> list3) {
        this.game_word = list;
        this.gf_word = list2;
        this.show_word = list3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchWordInfoBean copy$default(SearchWordInfoBean searchWordInfoBean, List list, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = searchWordInfoBean.game_word;
        }
        if ((i10 & 2) != 0) {
            list2 = searchWordInfoBean.gf_word;
        }
        if ((i10 & 4) != 0) {
            list3 = searchWordInfoBean.show_word;
        }
        return searchWordInfoBean.copy(list, list2, list3);
    }

    @Nullable
    public final List<String> component1() {
        return this.game_word;
    }

    @Nullable
    public final List<String> component2() {
        return this.gf_word;
    }

    @Nullable
    public final List<String> component3() {
        return this.show_word;
    }

    @NotNull
    public final SearchWordInfoBean copy(@Nullable List<String> game_word, @Nullable List<String> gf_word, @Nullable List<String> show_word) {
        return new SearchWordInfoBean(game_word, gf_word, show_word);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchWordInfoBean)) {
            return false;
        }
        SearchWordInfoBean searchWordInfoBean = (SearchWordInfoBean) other;
        return Intrinsics.areEqual(this.game_word, searchWordInfoBean.game_word) && Intrinsics.areEqual(this.gf_word, searchWordInfoBean.gf_word) && Intrinsics.areEqual(this.show_word, searchWordInfoBean.show_word);
    }

    @Nullable
    public final List<String> getGame_word() {
        return this.game_word;
    }

    @Nullable
    public final List<String> getGf_word() {
        return this.gf_word;
    }

    @Nullable
    public final List<String> getShow_word() {
        return this.show_word;
    }

    public int hashCode() {
        List<String> list = this.game_word;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<String> list2 = this.gf_word;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.show_word;
        return iHashCode2 + (list3 != null ? list3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "SearchWordInfoBean(game_word=" + this.game_word + ", gf_word=" + this.gf_word + ", show_word=" + this.show_word + ')';
    }
}
