package com.join.kotlin.ui.modleregin.modle;

import com.join.mgps.dto.CollectionBeanSub;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u000bHÆ\u0003JY\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006'"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;", "", "gameId", "", "gameImg", "gameName", "gameTags", "gameTitle", "mainTitle", "gameVideo", "gameInfo", "Lcom/join/mgps/dto/CollectionBeanSub;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;)V", "getGameId", "()Ljava/lang/String;", "getGameImg", "getGameName", "getGameTags", "getGameTitle", "getMainTitle", "getGameVideo", "getGameInfo", "()Lcom/join/mgps/dto/CollectionBeanSub;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class MustplayItemNetBean {

    @NotNull
    private final String gameId;

    @NotNull
    private final String gameImg;

    @NotNull
    private final CollectionBeanSub gameInfo;

    @NotNull
    private final String gameName;

    @NotNull
    private final String gameTags;

    @NotNull
    private final String gameTitle;

    @NotNull
    private final String gameVideo;

    @NotNull
    private final String mainTitle;

    public MustplayItemNetBean(@NotNull String gameId, @NotNull String gameImg, @NotNull String gameName, @NotNull String gameTags, @NotNull String gameTitle, @NotNull String mainTitle, @NotNull String gameVideo, @NotNull CollectionBeanSub gameInfo) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(gameImg, "gameImg");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(gameTags, "gameTags");
        Intrinsics.checkNotNullParameter(gameTitle, "gameTitle");
        Intrinsics.checkNotNullParameter(mainTitle, "mainTitle");
        Intrinsics.checkNotNullParameter(gameVideo, "gameVideo");
        Intrinsics.checkNotNullParameter(gameInfo, "gameInfo");
        this.gameId = gameId;
        this.gameImg = gameImg;
        this.gameName = gameName;
        this.gameTags = gameTags;
        this.gameTitle = gameTitle;
        this.mainTitle = mainTitle;
        this.gameVideo = gameVideo;
        this.gameInfo = gameInfo;
    }

    @NotNull
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getGameImg() {
        return this.gameImg;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGameName() {
        return this.gameName;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGameTags() {
        return this.gameTags;
    }

    @NotNull
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getGameTitle() {
        return this.gameTitle;
    }

    @NotNull
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getMainTitle() {
        return this.mainTitle;
    }

    @NotNull
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getGameVideo() {
        return this.gameVideo;
    }

    @NotNull
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final CollectionBeanSub getGameInfo() {
        return this.gameInfo;
    }

    @NotNull
    public final MustplayItemNetBean copy(@NotNull String gameId, @NotNull String gameImg, @NotNull String gameName, @NotNull String gameTags, @NotNull String gameTitle, @NotNull String mainTitle, @NotNull String gameVideo, @NotNull CollectionBeanSub gameInfo) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(gameImg, "gameImg");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(gameTags, "gameTags");
        Intrinsics.checkNotNullParameter(gameTitle, "gameTitle");
        Intrinsics.checkNotNullParameter(mainTitle, "mainTitle");
        Intrinsics.checkNotNullParameter(gameVideo, "gameVideo");
        Intrinsics.checkNotNullParameter(gameInfo, "gameInfo");
        return new MustplayItemNetBean(gameId, gameImg, gameName, gameTags, gameTitle, mainTitle, gameVideo, gameInfo);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MustplayItemNetBean)) {
            return false;
        }
        MustplayItemNetBean mustplayItemNetBean = (MustplayItemNetBean) other;
        return Intrinsics.areEqual(this.gameId, mustplayItemNetBean.gameId) && Intrinsics.areEqual(this.gameImg, mustplayItemNetBean.gameImg) && Intrinsics.areEqual(this.gameName, mustplayItemNetBean.gameName) && Intrinsics.areEqual(this.gameTags, mustplayItemNetBean.gameTags) && Intrinsics.areEqual(this.gameTitle, mustplayItemNetBean.gameTitle) && Intrinsics.areEqual(this.mainTitle, mustplayItemNetBean.mainTitle) && Intrinsics.areEqual(this.gameVideo, mustplayItemNetBean.gameVideo) && Intrinsics.areEqual(this.gameInfo, mustplayItemNetBean.gameInfo);
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final String getGameImg() {
        return this.gameImg;
    }

    @NotNull
    public final CollectionBeanSub getGameInfo() {
        return this.gameInfo;
    }

    @NotNull
    public final String getGameName() {
        return this.gameName;
    }

    @NotNull
    public final String getGameTags() {
        return this.gameTags;
    }

    @NotNull
    public final String getGameTitle() {
        return this.gameTitle;
    }

    @NotNull
    public final String getGameVideo() {
        return this.gameVideo;
    }

    @NotNull
    public final String getMainTitle() {
        return this.mainTitle;
    }

    public int hashCode() {
        return (((((((((((((this.gameId.hashCode() * 31) + this.gameImg.hashCode()) * 31) + this.gameName.hashCode()) * 31) + this.gameTags.hashCode()) * 31) + this.gameTitle.hashCode()) * 31) + this.mainTitle.hashCode()) * 31) + this.gameVideo.hashCode()) * 31) + this.gameInfo.hashCode();
    }

    @NotNull
    public String toString() {
        return "MustplayItemNetBean(gameId=" + this.gameId + ", gameImg=" + this.gameImg + ", gameName=" + this.gameName + ", gameTags=" + this.gameTags + ", gameTitle=" + this.gameTitle + ", mainTitle=" + this.mainTitle + ", gameVideo=" + this.gameVideo + ", gameInfo=" + this.gameInfo + ')';
    }
}
