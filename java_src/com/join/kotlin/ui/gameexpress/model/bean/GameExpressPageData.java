package com.join.kotlin.ui.gameexpress.model.bean;

import com.join.kotlin.ui.gameexpress.model.GameExpressMultiItem;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J9\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressPageData;", "", "hotTopics", "", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotTopicBean;", "qualityComments", "Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;", "listItems", "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getHotTopics", "()Ljava/util/List;", "getQualityComments", "getListItems", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameExpressPageData {

    @NotNull
    private final List<GameExpressHotTopicBean> hotTopics;

    @NotNull
    private final List<GameExpressMultiItem> listItems;

    @NotNull
    private final List<GameExpressHotCommentBean> qualityComments;

    public GameExpressPageData(@NotNull List<GameExpressHotTopicBean> hotTopics, @NotNull List<GameExpressHotCommentBean> qualityComments, @NotNull List<GameExpressMultiItem> listItems) {
        Intrinsics.checkNotNullParameter(hotTopics, "hotTopics");
        Intrinsics.checkNotNullParameter(qualityComments, "qualityComments");
        Intrinsics.checkNotNullParameter(listItems, "listItems");
        this.hotTopics = hotTopics;
        this.qualityComments = qualityComments;
        this.listItems = listItems;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GameExpressPageData copy$default(GameExpressPageData gameExpressPageData, List list, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = gameExpressPageData.hotTopics;
        }
        if ((i10 & 2) != 0) {
            list2 = gameExpressPageData.qualityComments;
        }
        if ((i10 & 4) != 0) {
            list3 = gameExpressPageData.listItems;
        }
        return gameExpressPageData.copy(list, list2, list3);
    }

    @NotNull
    public final List<GameExpressHotTopicBean> component1() {
        return this.hotTopics;
    }

    @NotNull
    public final List<GameExpressHotCommentBean> component2() {
        return this.qualityComments;
    }

    @NotNull
    public final List<GameExpressMultiItem> component3() {
        return this.listItems;
    }

    @NotNull
    public final GameExpressPageData copy(@NotNull List<GameExpressHotTopicBean> hotTopics, @NotNull List<GameExpressHotCommentBean> qualityComments, @NotNull List<GameExpressMultiItem> listItems) {
        Intrinsics.checkNotNullParameter(hotTopics, "hotTopics");
        Intrinsics.checkNotNullParameter(qualityComments, "qualityComments");
        Intrinsics.checkNotNullParameter(listItems, "listItems");
        return new GameExpressPageData(hotTopics, qualityComments, listItems);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameExpressPageData)) {
            return false;
        }
        GameExpressPageData gameExpressPageData = (GameExpressPageData) other;
        return Intrinsics.areEqual(this.hotTopics, gameExpressPageData.hotTopics) && Intrinsics.areEqual(this.qualityComments, gameExpressPageData.qualityComments) && Intrinsics.areEqual(this.listItems, gameExpressPageData.listItems);
    }

    @NotNull
    public final List<GameExpressHotTopicBean> getHotTopics() {
        return this.hotTopics;
    }

    @NotNull
    public final List<GameExpressMultiItem> getListItems() {
        return this.listItems;
    }

    @NotNull
    public final List<GameExpressHotCommentBean> getQualityComments() {
        return this.qualityComments;
    }

    public int hashCode() {
        return (((this.hotTopics.hashCode() * 31) + this.qualityComments.hashCode()) * 31) + this.listItems.hashCode();
    }

    @NotNull
    public String toString() {
        return "GameExpressPageData(hotTopics=" + this.hotTopics + ", qualityComments=" + this.qualityComments + ", listItems=" + this.listItems + ')';
    }
}
