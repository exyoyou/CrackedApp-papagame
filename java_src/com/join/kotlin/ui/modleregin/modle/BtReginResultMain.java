package com.join.kotlin.ui.modleregin.modle;

import com.join.mgps.dto.BannerBean;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0003HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003JE\u0010\u0017\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00032\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000e¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;", "", "ad_collection", "", "Lcom/join/mgps/dto/BannerBean;", "head_banner_game", "Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "new_online_game", "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "dynamic_component", "Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;", "<init>", "(Ljava/util/List;Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;Ljava/util/List;Ljava/util/List;)V", "getAd_collection", "()Ljava/util/List;", "getHead_banner_game", "()Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "getNew_online_game", "getDynamic_component", "component1", "component2", "component3", "component4", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BtReginResultMain {

    @NotNull
    private final List<BannerBean> ad_collection;

    @Nullable
    private final List<BTDynamicMain> dynamic_component;

    @NotNull
    private final BtVideodata head_banner_game;

    @NotNull
    private final List<BtOnlineGame> new_online_game;

    /* JADX WARN: Multi-variable type inference failed */
    public BtReginResultMain(@NotNull List<? extends BannerBean> ad_collection, @NotNull BtVideodata head_banner_game, @NotNull List<BtOnlineGame> new_online_game, @Nullable List<BTDynamicMain> list) {
        Intrinsics.checkNotNullParameter(ad_collection, "ad_collection");
        Intrinsics.checkNotNullParameter(head_banner_game, "head_banner_game");
        Intrinsics.checkNotNullParameter(new_online_game, "new_online_game");
        this.ad_collection = ad_collection;
        this.head_banner_game = head_banner_game;
        this.new_online_game = new_online_game;
        this.dynamic_component = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BtReginResultMain copy$default(BtReginResultMain btReginResultMain, List list, BtVideodata btVideodata, List list2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = btReginResultMain.ad_collection;
        }
        if ((i10 & 2) != 0) {
            btVideodata = btReginResultMain.head_banner_game;
        }
        if ((i10 & 4) != 0) {
            list2 = btReginResultMain.new_online_game;
        }
        if ((i10 & 8) != 0) {
            list3 = btReginResultMain.dynamic_component;
        }
        return btReginResultMain.copy(list, btVideodata, list2, list3);
    }

    @NotNull
    public final List<BannerBean> component1() {
        return this.ad_collection;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final BtVideodata getHead_banner_game() {
        return this.head_banner_game;
    }

    @NotNull
    public final List<BtOnlineGame> component3() {
        return this.new_online_game;
    }

    @Nullable
    public final List<BTDynamicMain> component4() {
        return this.dynamic_component;
    }

    @NotNull
    public final BtReginResultMain copy(@NotNull List<? extends BannerBean> ad_collection, @NotNull BtVideodata head_banner_game, @NotNull List<BtOnlineGame> new_online_game, @Nullable List<BTDynamicMain> dynamic_component) {
        Intrinsics.checkNotNullParameter(ad_collection, "ad_collection");
        Intrinsics.checkNotNullParameter(head_banner_game, "head_banner_game");
        Intrinsics.checkNotNullParameter(new_online_game, "new_online_game");
        return new BtReginResultMain(ad_collection, head_banner_game, new_online_game, dynamic_component);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BtReginResultMain)) {
            return false;
        }
        BtReginResultMain btReginResultMain = (BtReginResultMain) other;
        return Intrinsics.areEqual(this.ad_collection, btReginResultMain.ad_collection) && Intrinsics.areEqual(this.head_banner_game, btReginResultMain.head_banner_game) && Intrinsics.areEqual(this.new_online_game, btReginResultMain.new_online_game) && Intrinsics.areEqual(this.dynamic_component, btReginResultMain.dynamic_component);
    }

    @NotNull
    public final List<BannerBean> getAd_collection() {
        return this.ad_collection;
    }

    @Nullable
    public final List<BTDynamicMain> getDynamic_component() {
        return this.dynamic_component;
    }

    @NotNull
    public final BtVideodata getHead_banner_game() {
        return this.head_banner_game;
    }

    @NotNull
    public final List<BtOnlineGame> getNew_online_game() {
        return this.new_online_game;
    }

    public int hashCode() {
        int iHashCode = ((((this.ad_collection.hashCode() * 31) + this.head_banner_game.hashCode()) * 31) + this.new_online_game.hashCode()) * 31;
        List<BTDynamicMain> list = this.dynamic_component;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    @NotNull
    public String toString() {
        return "BtReginResultMain(ad_collection=" + this.ad_collection + ", head_banner_game=" + this.head_banner_game + ", new_online_game=" + this.new_online_game + ", dynamic_component=" + this.dynamic_component + ')';
    }
}
