package com.join.kotlin.autocode.dailyfind.model;

import com.join.mgps.dto.GamedetialModleFourBean;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J'\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;", "", "game", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "isPause", "", "playTag", "", "<init>", "(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;)V", "getGame", "()Lcom/join/mgps/dto/GamedetialModleFourBean;", "()Z", "setPause", "(Z)V", "getPlayTag", "()Ljava/lang/String;", "setPlayTag", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DailyDiscoveryGameBean {

    @NotNull
    private final GamedetialModleFourBean game;
    private boolean isPause;

    @NotNull
    private String playTag;

    public DailyDiscoveryGameBean(@NotNull GamedetialModleFourBean game, boolean z10, @NotNull String playTag) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(playTag, "playTag");
        this.game = game;
        this.isPause = z10;
        this.playTag = playTag;
    }

    public static /* synthetic */ DailyDiscoveryGameBean copy$default(DailyDiscoveryGameBean dailyDiscoveryGameBean, GamedetialModleFourBean gamedetialModleFourBean, boolean z10, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gamedetialModleFourBean = dailyDiscoveryGameBean.game;
        }
        if ((i10 & 2) != 0) {
            z10 = dailyDiscoveryGameBean.isPause;
        }
        if ((i10 & 4) != 0) {
            str = dailyDiscoveryGameBean.playTag;
        }
        return dailyDiscoveryGameBean.copy(gamedetialModleFourBean, z10, str);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final GamedetialModleFourBean getGame() {
        return this.game;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsPause() {
        return this.isPause;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPlayTag() {
        return this.playTag;
    }

    @NotNull
    public final DailyDiscoveryGameBean copy(@NotNull GamedetialModleFourBean game, boolean isPause, @NotNull String playTag) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(playTag, "playTag");
        return new DailyDiscoveryGameBean(game, isPause, playTag);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DailyDiscoveryGameBean)) {
            return false;
        }
        DailyDiscoveryGameBean dailyDiscoveryGameBean = (DailyDiscoveryGameBean) other;
        return Intrinsics.areEqual(this.game, dailyDiscoveryGameBean.game) && this.isPause == dailyDiscoveryGameBean.isPause && Intrinsics.areEqual(this.playTag, dailyDiscoveryGameBean.playTag);
    }

    @NotNull
    public final GamedetialModleFourBean getGame() {
        return this.game;
    }

    @NotNull
    public final String getPlayTag() {
        return this.playTag;
    }

    public int hashCode() {
        return (((this.game.hashCode() * 31) + a.a(this.isPause)) * 31) + this.playTag.hashCode();
    }

    public final boolean isPause() {
        return this.isPause;
    }

    public final void setPause(boolean z10) {
        this.isPause = z10;
    }

    public final void setPlayTag(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.playTag = str;
    }

    @NotNull
    public String toString() {
        return "DailyDiscoveryGameBean(game=" + this.game + ", isPause=" + this.isPause + ", playTag=" + this.playTag + ')';
    }

    public /* synthetic */ DailyDiscoveryGameBean(GamedetialModleFourBean gamedetialModleFourBean, boolean z10, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(gamedetialModleFourBean, (i10 & 2) != 0 ? true : z10, (i10 & 4) != 0 ? "" : str);
    }
}
