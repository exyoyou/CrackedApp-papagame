package com.join.kotlin.autocode.dailyfind.model;

import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u001a\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\t\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\t¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001d\u0010\u0018\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\tHÆ\u0003J\u001d\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\tHÆ\u0003Jb\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\t2\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\tHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R%\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R%\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u000b\u0018\u0001`\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014¨\u0006#"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;", "", "add_time", "", "game_list", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "recommend_game_list", "Ljava/util/ArrayList;", "Lcom/join/mgps/dto/CollectionBeanSub;", "Lkotlin/collections/ArrayList;", "thenew_game_list", "Lcom/join/mgps/dto/CommonGameInfoBean;", "<init>", "(Ljava/lang/Long;Lcom/join/mgps/dto/GamedetialModleFourBean;Ljava/util/ArrayList;Ljava/util/ArrayList;)V", "getAdd_time", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getGame_list", "()Lcom/join/mgps/dto/GamedetialModleFourBean;", "getRecommend_game_list", "()Ljava/util/ArrayList;", "getThenew_game_list", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Long;Lcom/join/mgps/dto/GamedetialModleFourBean;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoverListItem;", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DailyDiscoverListItem {

    @Nullable
    private final Long add_time;

    @Nullable
    private final GamedetialModleFourBean game_list;

    @Nullable
    private final ArrayList<CollectionBeanSub> recommend_game_list;

    @Nullable
    private final ArrayList<CommonGameInfoBean> thenew_game_list;

    public DailyDiscoverListItem(@Nullable Long l10, @Nullable GamedetialModleFourBean gamedetialModleFourBean, @Nullable ArrayList<CollectionBeanSub> arrayList, @Nullable ArrayList<CommonGameInfoBean> arrayList2) {
        this.add_time = l10;
        this.game_list = gamedetialModleFourBean;
        this.recommend_game_list = arrayList;
        this.thenew_game_list = arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DailyDiscoverListItem copy$default(DailyDiscoverListItem dailyDiscoverListItem, Long l10, GamedetialModleFourBean gamedetialModleFourBean, ArrayList arrayList, ArrayList arrayList2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = dailyDiscoverListItem.add_time;
        }
        if ((i10 & 2) != 0) {
            gamedetialModleFourBean = dailyDiscoverListItem.game_list;
        }
        if ((i10 & 4) != 0) {
            arrayList = dailyDiscoverListItem.recommend_game_list;
        }
        if ((i10 & 8) != 0) {
            arrayList2 = dailyDiscoverListItem.thenew_game_list;
        }
        return dailyDiscoverListItem.copy(l10, gamedetialModleFourBean, arrayList, arrayList2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getAdd_time() {
        return this.add_time;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final GamedetialModleFourBean getGame_list() {
        return this.game_list;
    }

    @Nullable
    public final ArrayList<CollectionBeanSub> component3() {
        return this.recommend_game_list;
    }

    @Nullable
    public final ArrayList<CommonGameInfoBean> component4() {
        return this.thenew_game_list;
    }

    @NotNull
    public final DailyDiscoverListItem copy(@Nullable Long add_time, @Nullable GamedetialModleFourBean game_list, @Nullable ArrayList<CollectionBeanSub> recommend_game_list, @Nullable ArrayList<CommonGameInfoBean> thenew_game_list) {
        return new DailyDiscoverListItem(add_time, game_list, recommend_game_list, thenew_game_list);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DailyDiscoverListItem)) {
            return false;
        }
        DailyDiscoverListItem dailyDiscoverListItem = (DailyDiscoverListItem) other;
        return Intrinsics.areEqual(this.add_time, dailyDiscoverListItem.add_time) && Intrinsics.areEqual(this.game_list, dailyDiscoverListItem.game_list) && Intrinsics.areEqual(this.recommend_game_list, dailyDiscoverListItem.recommend_game_list) && Intrinsics.areEqual(this.thenew_game_list, dailyDiscoverListItem.thenew_game_list);
    }

    @Nullable
    public final Long getAdd_time() {
        return this.add_time;
    }

    @Nullable
    public final GamedetialModleFourBean getGame_list() {
        return this.game_list;
    }

    @Nullable
    public final ArrayList<CollectionBeanSub> getRecommend_game_list() {
        return this.recommend_game_list;
    }

    @Nullable
    public final ArrayList<CommonGameInfoBean> getThenew_game_list() {
        return this.thenew_game_list;
    }

    public int hashCode() {
        Long l10 = this.add_time;
        int iHashCode = (l10 == null ? 0 : l10.hashCode()) * 31;
        GamedetialModleFourBean gamedetialModleFourBean = this.game_list;
        int iHashCode2 = (iHashCode + (gamedetialModleFourBean == null ? 0 : gamedetialModleFourBean.hashCode())) * 31;
        ArrayList<CollectionBeanSub> arrayList = this.recommend_game_list;
        int iHashCode3 = (iHashCode2 + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList<CommonGameInfoBean> arrayList2 = this.thenew_game_list;
        return iHashCode3 + (arrayList2 != null ? arrayList2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "DailyDiscoverListItem(add_time=" + this.add_time + ", game_list=" + this.game_list + ", recommend_game_list=" + this.recommend_game_list + ", thenew_game_list=" + this.thenew_game_list + ')';
    }

    public /* synthetic */ DailyDiscoverListItem(Long l10, GamedetialModleFourBean gamedetialModleFourBean, ArrayList arrayList, ArrayList arrayList2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : l10, gamedetialModleFourBean, arrayList, arrayList2);
    }
}
