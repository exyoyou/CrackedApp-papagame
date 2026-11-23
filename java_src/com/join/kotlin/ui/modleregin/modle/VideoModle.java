package com.join.kotlin.ui.modleregin.modle;

import com.join.mgps.Util.IntentDateBean;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J5\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/VideoModle;", "", "position", "", "videoUrl", "", "intentData", "Lcom/join/mgps/Util/IntentDateBean;", "videoCover", "<init>", "(ILjava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/String;)V", "getPosition", "()I", "getVideoUrl", "()Ljava/lang/String;", "getIntentData", "()Lcom/join/mgps/Util/IntentDateBean;", "getVideoCover", "component1", "component2", "component3", "component4", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class VideoModle {

    @Nullable
    private final IntentDateBean intentData;
    private final int position;

    @NotNull
    private final String videoCover;

    @Nullable
    private final String videoUrl;

    public VideoModle(int i10, @Nullable String str, @Nullable IntentDateBean intentDateBean, @NotNull String videoCover) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        this.position = i10;
        this.videoUrl = str;
        this.intentData = intentDateBean;
        this.videoCover = videoCover;
    }

    public static /* synthetic */ VideoModle copy$default(VideoModle videoModle, int i10, String str, IntentDateBean intentDateBean, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = videoModle.position;
        }
        if ((i11 & 2) != 0) {
            str = videoModle.videoUrl;
        }
        if ((i11 & 4) != 0) {
            intentDateBean = videoModle.intentData;
        }
        if ((i11 & 8) != 0) {
            str2 = videoModle.videoCover;
        }
        return videoModle.copy(i10, str, intentDateBean, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getPosition() {
        return this.position;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final IntentDateBean getIntentData() {
        return this.intentData;
    }

    @NotNull
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getVideoCover() {
        return this.videoCover;
    }

    @NotNull
    public final VideoModle copy(int position, @Nullable String videoUrl, @Nullable IntentDateBean intentData, @NotNull String videoCover) {
        Intrinsics.checkNotNullParameter(videoCover, "videoCover");
        return new VideoModle(position, videoUrl, intentData, videoCover);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoModle)) {
            return false;
        }
        VideoModle videoModle = (VideoModle) other;
        return this.position == videoModle.position && Intrinsics.areEqual(this.videoUrl, videoModle.videoUrl) && Intrinsics.areEqual(this.intentData, videoModle.intentData) && Intrinsics.areEqual(this.videoCover, videoModle.videoCover);
    }

    @Nullable
    public final IntentDateBean getIntentData() {
        return this.intentData;
    }

    public final int getPosition() {
        return this.position;
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
        int iHashCode = (i10 + (str == null ? 0 : str.hashCode())) * 31;
        IntentDateBean intentDateBean = this.intentData;
        return ((iHashCode + (intentDateBean != null ? intentDateBean.hashCode() : 0)) * 31) + this.videoCover.hashCode();
    }

    @NotNull
    public String toString() {
        return "VideoModle(position=" + this.position + ", videoUrl=" + this.videoUrl + ", intentData=" + this.intentData + ", videoCover=" + this.videoCover + ')';
    }
}
