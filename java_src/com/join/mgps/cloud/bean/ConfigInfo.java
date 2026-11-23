package com.join.mgps.cloud.bean;

import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.mgps.activity.HMCloudMainActivity_;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000eHÆ\u0003Jg\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u0005HÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006-"}, d2 = {"Lcom/join/mgps/cloud/bean/ConfigInfo;", "", "gameId", "", "modType", "", "orientation", HMCloudMainActivity_.GOLD_FINGER_SWITCH_EXTRA, HMCloudMainActivity_.BBS_STRATEGY_SWITCH_EXTRA, "archiveCloudSwitch", "accountData", HMCloudMainActivity_.ARCHIVE_DATA_EXTRA, "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", HMCloudMainActivity_.ARCHIVE_PATH_DATA_EXTRA, "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "<init>", "(Ljava/lang/String;IIIIILjava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V", "getGameId", "()Ljava/lang/String;", "getModType", "()I", "getOrientation", "getGoldFingerSwitch", "getBbsStrategySwitch", "getArchiveCloudSwitch", "getAccountData", "getArchiveData", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchivePathData", "()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ConfigInfo {

    @NotNull
    private final String accountData;
    private final int archiveCloudSwitch;

    @Nullable
    private final ArchiveData archiveData;

    @Nullable
    private final ModGameArchivePathData archivePathData;
    private final int bbsStrategySwitch;

    @NotNull
    private final String gameId;
    private final int goldFingerSwitch;
    private final int modType;
    private final int orientation;

    public ConfigInfo() {
        this(null, 0, 0, 0, 0, 0, null, null, null, 511, null);
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGameId() {
        return this.gameId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getModType() {
        return this.modType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getOrientation() {
        return this.orientation;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getGoldFingerSwitch() {
        return this.goldFingerSwitch;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getBbsStrategySwitch() {
        return this.bbsStrategySwitch;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getArchiveCloudSwitch() {
        return this.archiveCloudSwitch;
    }

    @NotNull
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAccountData() {
        return this.accountData;
    }

    @Nullable
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final ArchiveData getArchiveData() {
        return this.archiveData;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final ModGameArchivePathData getArchivePathData() {
        return this.archivePathData;
    }

    @NotNull
    public final ConfigInfo copy(@NotNull String gameId, int modType, int orientation, int goldFingerSwitch, int bbsStrategySwitch, int archiveCloudSwitch, @NotNull String accountData, @Nullable ArchiveData archiveData, @Nullable ModGameArchivePathData archivePathData) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(accountData, "accountData");
        return new ConfigInfo(gameId, modType, orientation, goldFingerSwitch, bbsStrategySwitch, archiveCloudSwitch, accountData, archiveData, archivePathData);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigInfo)) {
            return false;
        }
        ConfigInfo configInfo = (ConfigInfo) other;
        return Intrinsics.areEqual(this.gameId, configInfo.gameId) && this.modType == configInfo.modType && this.orientation == configInfo.orientation && this.goldFingerSwitch == configInfo.goldFingerSwitch && this.bbsStrategySwitch == configInfo.bbsStrategySwitch && this.archiveCloudSwitch == configInfo.archiveCloudSwitch && Intrinsics.areEqual(this.accountData, configInfo.accountData) && Intrinsics.areEqual(this.archiveData, configInfo.archiveData) && Intrinsics.areEqual(this.archivePathData, configInfo.archivePathData);
    }

    @NotNull
    public final String getAccountData() {
        return this.accountData;
    }

    public final int getArchiveCloudSwitch() {
        return this.archiveCloudSwitch;
    }

    @Nullable
    public final ArchiveData getArchiveData() {
        return this.archiveData;
    }

    @Nullable
    public final ModGameArchivePathData getArchivePathData() {
        return this.archivePathData;
    }

    public final int getBbsStrategySwitch() {
        return this.bbsStrategySwitch;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    public final int getGoldFingerSwitch() {
        return this.goldFingerSwitch;
    }

    public final int getModType() {
        return this.modType;
    }

    public final int getOrientation() {
        return this.orientation;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((this.gameId.hashCode() * 31) + this.modType) * 31) + this.orientation) * 31) + this.goldFingerSwitch) * 31) + this.bbsStrategySwitch) * 31) + this.archiveCloudSwitch) * 31) + this.accountData.hashCode()) * 31;
        ArchiveData archiveData = this.archiveData;
        int iHashCode2 = (iHashCode + (archiveData == null ? 0 : archiveData.hashCode())) * 31;
        ModGameArchivePathData modGameArchivePathData = this.archivePathData;
        return iHashCode2 + (modGameArchivePathData != null ? modGameArchivePathData.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "ConfigInfo(gameId=" + this.gameId + ", modType=" + this.modType + ", orientation=" + this.orientation + ", goldFingerSwitch=" + this.goldFingerSwitch + ", bbsStrategySwitch=" + this.bbsStrategySwitch + ", archiveCloudSwitch=" + this.archiveCloudSwitch + ", accountData=" + this.accountData + ", archiveData=" + this.archiveData + ", archivePathData=" + this.archivePathData + ')';
    }

    public ConfigInfo(@NotNull String gameId, int i10, int i11, int i12, int i13, int i14, @NotNull String accountData, @Nullable ArchiveData archiveData, @Nullable ModGameArchivePathData modGameArchivePathData) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(accountData, "accountData");
        this.gameId = gameId;
        this.modType = i10;
        this.orientation = i11;
        this.goldFingerSwitch = i12;
        this.bbsStrategySwitch = i13;
        this.archiveCloudSwitch = i14;
        this.accountData = accountData;
        this.archiveData = archiveData;
        this.archivePathData = modGameArchivePathData;
    }

    public /* synthetic */ ConfigInfo(String str, int i10, int i11, int i12, int i13, int i14, String str2, ArchiveData archiveData, ModGameArchivePathData modGameArchivePathData, int i15, DefaultConstructorMarker defaultConstructorMarker) {
        this((i15 & 1) != 0 ? "" : str, (i15 & 2) != 0 ? 0 : i10, (i15 & 4) != 0 ? 2 : i11, (i15 & 8) != 0 ? 0 : i12, (i15 & 16) != 0 ? 0 : i13, (i15 & 32) == 0 ? i14 : 0, (i15 & 64) == 0 ? str2 : "", (i15 & 128) != 0 ? null : archiveData, (i15 & 256) == 0 ? modGameArchivePathData : null);
    }
}
