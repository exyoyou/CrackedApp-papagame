package com.join.kotlin.ui.modleregin.modle;

import com.join.mgps.dto.CollectionBeanSub;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\fJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\bHÆ\u0003J8\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "", "onlineTime", "", "videoUrl", "", "imageUrl", "gameEntity", "Lcom/join/mgps/dto/CollectionBeanSub;", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;)V", "getOnlineTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getVideoUrl", "()Ljava/lang/String;", "getImageUrl", "getGameEntity", "()Lcom/join/mgps/dto/CollectionBeanSub;", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;)Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class BtVideodata {

    @NotNull
    private final CollectionBeanSub gameEntity;

    @NotNull
    private final String imageUrl;

    @Nullable
    private final Long onlineTime;

    @NotNull
    private final String videoUrl;

    public BtVideodata(@Nullable Long l10, @NotNull String videoUrl, @NotNull String imageUrl, @NotNull CollectionBeanSub gameEntity) {
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(gameEntity, "gameEntity");
        this.onlineTime = l10;
        this.videoUrl = videoUrl;
        this.imageUrl = imageUrl;
        this.gameEntity = gameEntity;
    }

    public static /* synthetic */ BtVideodata copy$default(BtVideodata btVideodata, Long l10, String str, String str2, CollectionBeanSub collectionBeanSub, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            l10 = btVideodata.onlineTime;
        }
        if ((i10 & 2) != 0) {
            str = btVideodata.videoUrl;
        }
        if ((i10 & 4) != 0) {
            str2 = btVideodata.imageUrl;
        }
        if ((i10 & 8) != 0) {
            collectionBeanSub = btVideodata.gameEntity;
        }
        return btVideodata.copy(l10, str, str2, collectionBeanSub);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getOnlineTime() {
        return this.onlineTime;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getImageUrl() {
        return this.imageUrl;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final CollectionBeanSub getGameEntity() {
        return this.gameEntity;
    }

    @NotNull
    public final BtVideodata copy(@Nullable Long onlineTime, @NotNull String videoUrl, @NotNull String imageUrl, @NotNull CollectionBeanSub gameEntity) {
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(gameEntity, "gameEntity");
        return new BtVideodata(onlineTime, videoUrl, imageUrl, gameEntity);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BtVideodata)) {
            return false;
        }
        BtVideodata btVideodata = (BtVideodata) other;
        return Intrinsics.areEqual(this.onlineTime, btVideodata.onlineTime) && Intrinsics.areEqual(this.videoUrl, btVideodata.videoUrl) && Intrinsics.areEqual(this.imageUrl, btVideodata.imageUrl) && Intrinsics.areEqual(this.gameEntity, btVideodata.gameEntity);
    }

    @NotNull
    public final CollectionBeanSub getGameEntity() {
        return this.gameEntity;
    }

    @NotNull
    public final String getImageUrl() {
        return this.imageUrl;
    }

    @Nullable
    public final Long getOnlineTime() {
        return this.onlineTime;
    }

    @NotNull
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        Long l10 = this.onlineTime;
        return ((((((l10 == null ? 0 : l10.hashCode()) * 31) + this.videoUrl.hashCode()) * 31) + this.imageUrl.hashCode()) * 31) + this.gameEntity.hashCode();
    }

    @NotNull
    public String toString() {
        return "BtVideodata(onlineTime=" + this.onlineTime + ", videoUrl=" + this.videoUrl + ", imageUrl=" + this.imageUrl + ", gameEntity=" + this.gameEntity + ')';
    }
}
