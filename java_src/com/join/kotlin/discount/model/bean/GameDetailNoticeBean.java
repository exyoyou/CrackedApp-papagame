package com.join.kotlin.discount.model.bean;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\rJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0013\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003JF\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0012\b\u0002\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0006\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;", "", "hasMore", "", "jumpListUrl", "", "activeNoticeList", "", "Lcom/join/kotlin/discount/model/bean/GameDetailNoticeItemBean;", "activeNoticeCount", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "getHasMore", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getJumpListUrl", "()Ljava/lang/String;", "getActiveNoticeList", "()Ljava/util/List;", "getActiveNoticeCount", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/join/kotlin/discount/model/bean/GameDetailNoticeBean;", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailNoticeBean {

    @Nullable
    private final String activeNoticeCount;

    @Nullable
    private final List<GameDetailNoticeItemBean> activeNoticeList;

    @Nullable
    private final Boolean hasMore;

    @Nullable
    private final String jumpListUrl;

    public GameDetailNoticeBean() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GameDetailNoticeBean copy$default(GameDetailNoticeBean gameDetailNoticeBean, Boolean bool, String str, List list, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            bool = gameDetailNoticeBean.hasMore;
        }
        if ((i10 & 2) != 0) {
            str = gameDetailNoticeBean.jumpListUrl;
        }
        if ((i10 & 4) != 0) {
            list = gameDetailNoticeBean.activeNoticeList;
        }
        if ((i10 & 8) != 0) {
            str2 = gameDetailNoticeBean.activeNoticeCount;
        }
        return gameDetailNoticeBean.copy(bool, str, list, str2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getHasMore() {
        return this.hasMore;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getJumpListUrl() {
        return this.jumpListUrl;
    }

    @Nullable
    public final List<GameDetailNoticeItemBean> component3() {
        return this.activeNoticeList;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getActiveNoticeCount() {
        return this.activeNoticeCount;
    }

    @NotNull
    public final GameDetailNoticeBean copy(@Nullable Boolean hasMore, @Nullable String jumpListUrl, @Nullable List<GameDetailNoticeItemBean> activeNoticeList, @Nullable String activeNoticeCount) {
        return new GameDetailNoticeBean(hasMore, jumpListUrl, activeNoticeList, activeNoticeCount);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailNoticeBean)) {
            return false;
        }
        GameDetailNoticeBean gameDetailNoticeBean = (GameDetailNoticeBean) other;
        return Intrinsics.areEqual(this.hasMore, gameDetailNoticeBean.hasMore) && Intrinsics.areEqual(this.jumpListUrl, gameDetailNoticeBean.jumpListUrl) && Intrinsics.areEqual(this.activeNoticeList, gameDetailNoticeBean.activeNoticeList) && Intrinsics.areEqual(this.activeNoticeCount, gameDetailNoticeBean.activeNoticeCount);
    }

    @Nullable
    public final String getActiveNoticeCount() {
        return this.activeNoticeCount;
    }

    @Nullable
    public final List<GameDetailNoticeItemBean> getActiveNoticeList() {
        return this.activeNoticeList;
    }

    @Nullable
    public final Boolean getHasMore() {
        return this.hasMore;
    }

    @Nullable
    public final String getJumpListUrl() {
        return this.jumpListUrl;
    }

    public int hashCode() {
        Boolean bool = this.hasMore;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.jumpListUrl;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        List<GameDetailNoticeItemBean> list = this.activeNoticeList;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.activeNoticeCount;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "GameDetailNoticeBean(hasMore=" + this.hasMore + ", jumpListUrl=" + this.jumpListUrl + ", activeNoticeList=" + this.activeNoticeList + ", activeNoticeCount=" + this.activeNoticeCount + ')';
    }

    public GameDetailNoticeBean(@Nullable Boolean bool, @Nullable String str, @Nullable List<GameDetailNoticeItemBean> list, @Nullable String str2) {
        this.hasMore = bool;
        this.jumpListUrl = str;
        this.activeNoticeList = list;
        this.activeNoticeCount = str2;
    }

    public /* synthetic */ GameDetailNoticeBean(Boolean bool, String str, List list, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Boolean.FALSE : bool, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? null : list, (i10 & 8) != 0 ? "0" : str2);
    }
}
