package com.join.kotlin.ui.modleregin.modle;

import com.baidu.mobads.sdk.internal.bn;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.dto.CollectionBeanSub;
import com.kwad.sdk.api.model.AdnName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b#\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J\t\u0010(\u001a\u00020\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u0005HÆ\u0003J\t\u0010*\u001a\u00020\rHÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010!J\u0080\u0001\u0010-\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010.J\u0013\u0010/\u001a\u00020\u00102\b\u00100\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00101\u001a\u00020\u0003HÖ\u0001J\t\u00102\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0016R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\n\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0016R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0016R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!¨\u00063"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "", "position", "", "videoUrl", "", "videoCover", "game_info_top_video_url", bn.f7600l, "", "gameName", PapayPayDetialActivity_.INFO_EXTRA, "gameinfo", "Lcom/join/mgps/dto/CollectionBeanSub;", "tip", "showWhiteBack", "", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;Ljava/lang/String;Ljava/lang/Boolean;)V", "getPosition", "()I", "getVideoUrl", "()Ljava/lang/String;", "getVideoCover", "getGame_info_top_video_url", "getTags", "()Ljava/util/List;", "getGameName", "getInfo", "getGameinfo", "()Lcom/join/mgps/dto/CollectionBeanSub;", "getTip", "getShowWhiteBack", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class MustplayItemBean {

    @NotNull
    private final String gameName;

    @Nullable
    private final String game_info_top_video_url;

    @NotNull
    private final CollectionBeanSub gameinfo;

    @NotNull
    private final String info;
    private final int position;

    @Nullable
    private final Boolean showWhiteBack;

    @NotNull
    private final List<String> tags;

    @Nullable
    private final String tip;

    @NotNull
    private final String videoCover;

    @Nullable
    private final String videoUrl;

    public MustplayItemBean(int i10, @Nullable String str, @NotNull String videoCover, @Nullable String str2, @NotNull List<String> tags, @NotNull String gameName, @NotNull String info, @NotNull CollectionBeanSub gameinfo, @Nullable String str3, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameinfo, "gameinfo");
        this.position = i10;
        this.videoUrl = str;
        this.videoCover = videoCover;
        this.game_info_top_video_url = str2;
        this.tags = tags;
        this.gameName = gameName;
        this.info = info;
        this.gameinfo = gameinfo;
        this.tip = str3;
        this.showWhiteBack = bool;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getPosition() {
        return this.position;
    }

    @Nullable
    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Boolean getShowWhiteBack() {
        return this.showWhiteBack;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    @NotNull
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getVideoCover() {
        return this.videoCover;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGame_info_top_video_url() {
        return this.game_info_top_video_url;
    }

    @NotNull
    public final List<String> component5() {
        return this.tags;
    }

    @NotNull
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getGameName() {
        return this.gameName;
    }

    @NotNull
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getInfo() {
        return this.info;
    }

    @NotNull
    /* JADX INFO: renamed from: component8, reason: from getter */
    public final CollectionBeanSub getGameinfo() {
        return this.gameinfo;
    }

    @Nullable
    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getTip() {
        return this.tip;
    }

    @NotNull
    public final MustplayItemBean copy(int position, @Nullable String videoUrl, @NotNull String videoCover, @Nullable String game_info_top_video_url, @NotNull List<String> tags, @NotNull String gameName, @NotNull String info, @NotNull CollectionBeanSub gameinfo, @Nullable String tip, @Nullable Boolean showWhiteBack) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameinfo, "gameinfo");
        return new MustplayItemBean(position, videoUrl, videoCover, game_info_top_video_url, tags, gameName, info, gameinfo, tip, showWhiteBack);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MustplayItemBean)) {
            return false;
        }
        MustplayItemBean mustplayItemBean = (MustplayItemBean) other;
        return this.position == mustplayItemBean.position && Intrinsics.areEqual(this.videoUrl, mustplayItemBean.videoUrl) && Intrinsics.areEqual(this.videoCover, mustplayItemBean.videoCover) && Intrinsics.areEqual(this.game_info_top_video_url, mustplayItemBean.game_info_top_video_url) && Intrinsics.areEqual(this.tags, mustplayItemBean.tags) && Intrinsics.areEqual(this.gameName, mustplayItemBean.gameName) && Intrinsics.areEqual(this.info, mustplayItemBean.info) && Intrinsics.areEqual(this.gameinfo, mustplayItemBean.gameinfo) && Intrinsics.areEqual(this.tip, mustplayItemBean.tip) && Intrinsics.areEqual(this.showWhiteBack, mustplayItemBean.showWhiteBack);
    }

    @NotNull
    public final String getGameName() {
        return this.gameName;
    }

    @Nullable
    public final String getGame_info_top_video_url() {
        return this.game_info_top_video_url;
    }

    @NotNull
    public final CollectionBeanSub getGameinfo() {
        return this.gameinfo;
    }

    @NotNull
    public final String getInfo() {
        return this.info;
    }

    public final int getPosition() {
        return this.position;
    }

    @Nullable
    public final Boolean getShowWhiteBack() {
        return this.showWhiteBack;
    }

    @NotNull
    public final List<String> getTags() {
        return this.tags;
    }

    @Nullable
    public final String getTip() {
        return this.tip;
    }

    @NotNull
    public final String getVideoCover() {
        return this.videoCover;
    }

    @Nullable
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        int i10 = this.position * 31;
        String str = this.videoUrl;
        int iHashCode = (((i10 + (str == null ? 0 : str.hashCode())) * 31) + this.videoCover.hashCode()) * 31;
        String str2 = this.game_info_top_video_url;
        int iHashCode2 = (((((((((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.tags.hashCode()) * 31) + this.gameName.hashCode()) * 31) + this.info.hashCode()) * 31) + this.gameinfo.hashCode()) * 31;
        String str3 = this.tip;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.showWhiteBack;
        return iHashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "MustplayItemBean(position=" + this.position + ", videoUrl=" + this.videoUrl + ", videoCover=" + this.videoCover + ", game_info_top_video_url=" + this.game_info_top_video_url + ", tags=" + this.tags + ", gameName=" + this.gameName + ", info=" + this.info + ", gameinfo=" + this.gameinfo + ", tip=" + this.tip + ", showWhiteBack=" + this.showWhiteBack + ')';
    }

    public /* synthetic */ MustplayItemBean(int i10, String str, String str2, String str3, List list, String str4, String str5, CollectionBeanSub collectionBeanSub, String str6, Boolean bool, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, str2, str3, list, str4, str5, collectionBeanSub, (i11 & 256) != 0 ? "" : str6, (i11 & 512) != 0 ? Boolean.FALSE : bool);
    }
}
