package com.join.kotlin.ui.modleregin.modle;

import com.join.mgps.dto.CollectionBeanSub;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "", "onlineTime", "", "gameEntityList", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "<init>", "(JLjava/util/List;)V", "getOnlineTime", "()J", "getGameEntityList", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BtOnlineGame {

    @NotNull
    private final List<CollectionBeanSub> gameEntityList;
    private final long onlineTime;

    /* JADX WARN: Multi-variable type inference failed */
    public BtOnlineGame(long j10, @NotNull List<? extends CollectionBeanSub> gameEntityList) {
        Intrinsics.checkNotNullParameter(gameEntityList, "gameEntityList");
        this.onlineTime = j10;
        this.gameEntityList = gameEntityList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BtOnlineGame copy$default(BtOnlineGame btOnlineGame, long j10, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = btOnlineGame.onlineTime;
        }
        if ((i10 & 2) != 0) {
            list = btOnlineGame.gameEntityList;
        }
        return btOnlineGame.copy(j10, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getOnlineTime() {
        return this.onlineTime;
    }

    @NotNull
    public final List<CollectionBeanSub> component2() {
        return this.gameEntityList;
    }

    @NotNull
    public final BtOnlineGame copy(long onlineTime, @NotNull List<? extends CollectionBeanSub> gameEntityList) {
        Intrinsics.checkNotNullParameter(gameEntityList, "gameEntityList");
        return new BtOnlineGame(onlineTime, gameEntityList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BtOnlineGame)) {
            return false;
        }
        BtOnlineGame btOnlineGame = (BtOnlineGame) other;
        return this.onlineTime == btOnlineGame.onlineTime && Intrinsics.areEqual(this.gameEntityList, btOnlineGame.gameEntityList);
    }

    @NotNull
    public final List<CollectionBeanSub> getGameEntityList() {
        return this.gameEntityList;
    }

    public final long getOnlineTime() {
        return this.onlineTime;
    }

    public int hashCode() {
        return (a.a(this.onlineTime) * 31) + this.gameEntityList.hashCode();
    }

    @NotNull
    public String toString() {
        return "BtOnlineGame(onlineTime=" + this.onlineTime + ", gameEntityList=" + this.gameEntityList + ')';
    }
}
