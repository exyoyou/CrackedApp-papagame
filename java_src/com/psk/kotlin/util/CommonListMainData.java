package com.psk.kotlin.util;

import com.join.kotlin.base.impl.BaseDownloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.mgps.Util.IntentDateBean;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u001b\u001a\u00020\u0016H\u0016J\n\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u0016H\u0016J\b\u0010\u001f\u001a\u00020\u0016H\u0016J\b\u0010 \u001a\u00020\u0016H\u0016J\b\u0010!\u001a\u00020\u0016H\u0016J\b\u0010\"\u001a\u00020\u0016H\u0016J\b\u0010#\u001a\u00020\u0016H\u0016J\b\u0010$\u001a\u00020\u0016H\u0016J\b\u0010%\u001a\u00020\u0016H\u0016J\b\u0010&\u001a\u00020\u0016H\u0016J\b\u0010'\u001a\u00020\u0016H\u0016J\b\u0010(\u001a\u00020\u0016H\u0016J\b\u0010)\u001a\u00020\u0016H\u0016J\b\u0010*\u001a\u00020\u0016H\u0016J\b\u0010+\u001a\u00020\u0016H\u0016J\n\u0010,\u001a\u0004\u0018\u00010-H\u0016J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0007HÆ\u0003J\t\u00101\u001a\u00020\u0007HÆ\u0003J1\u00102\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u00103\u001a\u00020\u00162\b\u00104\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u00105\u001a\u00020\u0003HÖ\u0001J\t\u00106\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u00067"}, d2 = {"Lcom/psk/kotlin/util/CommonListMainData;", "Lcom/join/kotlin/base/impl/BaseDownloadable;", "type", "", "any", "", "reMarks", "", "id", "<init>", "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V", "getType", "()I", "getAny", "()Ljava/lang/Object;", "getReMarks", "()Ljava/lang/String;", "setReMarks", "(Ljava/lang/String;)V", "getId", "setId", "hasExposured", "", "getHasExposured", "()Z", "setHasExposured", "(Z)V", "hasGInfo", "getGInfo", "Lcom/join/kotlin/base/impl/GInfo;", "isGame", "is64Bit", "isAndroidGame", "isBtGame", "isCpsGame", "isGameVm", "isH5Game", "isHmCloud", "isMiniGame", "isModGameVm", "isNetGameVm", "isNetGame", "isSingleGameVm", "isH5VmGame", "getIntentDataBean", "Lcom/join/mgps/Util/IntentDateBean;", "component1", "component2", "component3", "component4", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CommonListMainData extends BaseDownloadable {

    @NotNull
    private final Object any;
    private boolean hasExposured;

    @NotNull
    private String id;

    @NotNull
    private String reMarks;
    private final int type;

    public /* synthetic */ CommonListMainData(int i10, Object obj, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, obj, (i11 & 4) != 0 ? "" : str, (i11 & 8) != 0 ? "" : str2);
    }

    public static /* synthetic */ CommonListMainData copy$default(CommonListMainData commonListMainData, int i10, Object obj, String str, String str2, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = commonListMainData.type;
        }
        if ((i11 & 2) != 0) {
            obj = commonListMainData.any;
        }
        if ((i11 & 4) != 0) {
            str = commonListMainData.reMarks;
        }
        if ((i11 & 8) != 0) {
            str2 = commonListMainData.id;
        }
        return commonListMainData.copy(i10, obj, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Object getAny() {
        return this.any;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getReMarks() {
        return this.reMarks;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final CommonListMainData copy(int type, @NotNull Object any, @NotNull String reMarks, @NotNull String id2) {
        Intrinsics.checkNotNullParameter(any, "any");
        Intrinsics.checkNotNullParameter(reMarks, "reMarks");
        Intrinsics.checkNotNullParameter(id2, "id");
        return new CommonListMainData(type, any, reMarks, id2);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommonListMainData)) {
            return false;
        }
        CommonListMainData commonListMainData = (CommonListMainData) other;
        return this.type == commonListMainData.type && Intrinsics.areEqual(this.any, commonListMainData.any) && Intrinsics.areEqual(this.reMarks, commonListMainData.reMarks) && Intrinsics.areEqual(this.id, commonListMainData.id);
    }

    @NotNull
    public final Object getAny() {
        return this.any;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    @Nullable
    public GInfo getGInfo() {
        if (!hasGInfo()) {
            return null;
        }
        Object obj = this.any;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.join.kotlin.base.impl.GInfo");
        return (GInfo) obj;
    }

    public final boolean getHasExposured() {
        return this.hasExposured;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    @Nullable
    public IntentDateBean getIntentDataBean() {
        GInfo gInfo = getGInfo();
        if (gInfo != null) {
            return gInfo.getIntentDataBean();
        }
        return null;
    }

    @NotNull
    public final String getReMarks() {
        return this.reMarks;
    }

    public final int getType() {
        return this.type;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.Downloadable
    public boolean hasGInfo() {
        return this.any instanceof GInfo;
    }

    public int hashCode() {
        return (((((this.type * 31) + this.any.hashCode()) * 31) + this.reMarks.hashCode()) * 31) + this.id.hashCode();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean is64Bit() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.is64Bit();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isAndroidGame() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isAndroidGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isBtGame() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isBtGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isCpsGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGame() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isGameVm() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isGameVm();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5Game() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isH5Game();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isH5VmGame() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isH5VmGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isHmCloud() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isHmCloud();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isMiniGame() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isMiniGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isModGameVm();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType, com.join.kotlin.base.impl.GInfo
    public boolean isNetGame() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isNetGame();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isNetGameVm() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isNetGameVm();
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        GInfo gInfo = getGInfo();
        return gInfo != null && gInfo.isSingleGameVm();
    }

    public final void setHasExposured(boolean z10) {
        this.hasExposured = z10;
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setReMarks(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.reMarks = str;
    }

    @NotNull
    public String toString() {
        return "CommonListMainData(type=" + this.type + ", any=" + this.any + ", reMarks=" + this.reMarks + ", id=" + this.id + ')';
    }

    public CommonListMainData(int i10, @NotNull Object any, @NotNull String reMarks, @NotNull String id2) {
        Intrinsics.checkNotNullParameter(any, "any");
        Intrinsics.checkNotNullParameter(reMarks, "reMarks");
        Intrinsics.checkNotNullParameter(id2, "id");
        this.type = i10;
        this.any = any;
        this.reMarks = reMarks;
        this.id = id2;
    }
}
