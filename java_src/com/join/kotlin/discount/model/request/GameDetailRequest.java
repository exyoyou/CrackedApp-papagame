package com.join.kotlin.discount.model.request;

import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0012\b\u0002\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006HÆ\u0003J5\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR$\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/discount/model/request/GameDetailRequest;", "", "gameId", "", "uid", "downloadedGameIdList", "", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "getUid", "setUid", "getDownloadedGameIdList", "()Ljava/util/List;", "setDownloadedGameIdList", "(Ljava/util/List;)V", "component1", "component2", "component3", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameDetailRequest {

    @Nullable
    private List<Long> downloadedGameIdList;

    @Nullable
    private String gameId;

    @Nullable
    private String uid;

    public GameDetailRequest(@Nullable String str, @Nullable String str2, @Nullable List<Long> list) {
        this.gameId = str;
        this.uid = str2;
        this.downloadedGameIdList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GameDetailRequest copy$default(GameDetailRequest gameDetailRequest, String str, String str2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gameDetailRequest.gameId;
        }
        if ((i10 & 2) != 0) {
            str2 = gameDetailRequest.uid;
        }
        if ((i10 & 4) != 0) {
            list = gameDetailRequest.downloadedGameIdList;
        }
        return gameDetailRequest.copy(str, str2, list);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    public final List<Long> component3() {
        return this.downloadedGameIdList;
    }

    @NotNull
    public final GameDetailRequest copy(@Nullable String gameId, @Nullable String uid, @Nullable List<Long> downloadedGameIdList) {
        return new GameDetailRequest(gameId, uid, downloadedGameIdList);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameDetailRequest)) {
            return false;
        }
        GameDetailRequest gameDetailRequest = (GameDetailRequest) other;
        return Intrinsics.areEqual(this.gameId, gameDetailRequest.gameId) && Intrinsics.areEqual(this.uid, gameDetailRequest.uid) && Intrinsics.areEqual(this.downloadedGameIdList, gameDetailRequest.downloadedGameIdList);
    }

    @Nullable
    public final List<Long> getDownloadedGameIdList() {
        return this.downloadedGameIdList;
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    public int hashCode() {
        String str = this.gameId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.uid;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<Long> list = this.downloadedGameIdList;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final void setDownloadedGameIdList(@Nullable List<Long> list) {
        this.downloadedGameIdList = list;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }

    public final void setUid(@Nullable String str) {
        this.uid = str;
    }

    @NotNull
    public String toString() {
        return "GameDetailRequest(gameId=" + this.gameId + ", uid=" + this.uid + ", downloadedGameIdList=" + this.downloadedGameIdList + ')';
    }

    public /* synthetic */ GameDetailRequest(String str, String str2, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? null : list);
    }
}
