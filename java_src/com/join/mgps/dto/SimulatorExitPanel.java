package com.join.mgps.dto;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ&\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/join/mgps/dto/SimulatorExitPanel;", "", "dailyReward", "Lcom/join/mgps/dto/DailyReward;", "showDailyReward", "", "<init>", "(Lcom/join/mgps/dto/DailyReward;Ljava/lang/Boolean;)V", "getDailyReward", "()Lcom/join/mgps/dto/DailyReward;", "setDailyReward", "(Lcom/join/mgps/dto/DailyReward;)V", "getShowDailyReward", "()Ljava/lang/Boolean;", "setShowDailyReward", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Lcom/join/mgps/dto/DailyReward;Ljava/lang/Boolean;)Lcom/join/mgps/dto/SimulatorExitPanel;", "equals", AdnName.OTHER, "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SimulatorExitPanel {

    @Nullable
    private DailyReward dailyReward;

    @Nullable
    private Boolean showDailyReward;

    /* JADX WARN: Multi-variable type inference failed */
    public SimulatorExitPanel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ SimulatorExitPanel copy$default(SimulatorExitPanel simulatorExitPanel, DailyReward dailyReward, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            dailyReward = simulatorExitPanel.dailyReward;
        }
        if ((i10 & 2) != 0) {
            bool = simulatorExitPanel.showDailyReward;
        }
        return simulatorExitPanel.copy(dailyReward, bool);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final DailyReward getDailyReward() {
        return this.dailyReward;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Boolean getShowDailyReward() {
        return this.showDailyReward;
    }

    @NotNull
    public final SimulatorExitPanel copy(@Nullable DailyReward dailyReward, @Nullable Boolean showDailyReward) {
        return new SimulatorExitPanel(dailyReward, showDailyReward);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SimulatorExitPanel)) {
            return false;
        }
        SimulatorExitPanel simulatorExitPanel = (SimulatorExitPanel) other;
        return Intrinsics.areEqual(this.dailyReward, simulatorExitPanel.dailyReward) && Intrinsics.areEqual(this.showDailyReward, simulatorExitPanel.showDailyReward);
    }

    @Nullable
    public final DailyReward getDailyReward() {
        return this.dailyReward;
    }

    @Nullable
    public final Boolean getShowDailyReward() {
        return this.showDailyReward;
    }

    public int hashCode() {
        DailyReward dailyReward = this.dailyReward;
        int iHashCode = (dailyReward == null ? 0 : dailyReward.hashCode()) * 31;
        Boolean bool = this.showDailyReward;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final void setDailyReward(@Nullable DailyReward dailyReward) {
        this.dailyReward = dailyReward;
    }

    public final void setShowDailyReward(@Nullable Boolean bool) {
        this.showDailyReward = bool;
    }

    @NotNull
    public String toString() {
        return "SimulatorExitPanel(dailyReward=" + this.dailyReward + ", showDailyReward=" + this.showDailyReward + ')';
    }

    public SimulatorExitPanel(@Nullable DailyReward dailyReward, @Nullable Boolean bool) {
        this.dailyReward = dailyReward;
        this.showDailyReward = bool;
    }

    public /* synthetic */ SimulatorExitPanel(DailyReward dailyReward, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : dailyReward, (i10 & 2) != 0 ? null : bool);
    }
}
