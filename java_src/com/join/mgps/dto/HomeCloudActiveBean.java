package com.join.mgps.dto;

import com.kwad.sdk.api.model.AdnName;
import com.wufan.user.service.protobuf.MessageCloudGamingAdCfgResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0011J\u0006\u0010A\u001a\u00020BJ\u0006\u0010C\u001a\u00020BJ\u0006\u0010D\u001a\u00020,J\u0006\u0010E\u001a\u00020,J\u0006\u0010F\u001a\u00020\u0011J\u0006\u0010G\u001a\u00020BJ\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010K\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010L\u001a\u00020,2\b\u0010M\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010N\u001a\u00020\u0011HÖ\u0001J\t\u0010O\u001a\u00020?HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0013\"\u0004\b\u001b\u0010\u0015R\u001a\u0010\u001c\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0013\"\u0004\b\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0013\"\u0004\b!\u0010\u0015R\u001a\u0010\"\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0013\"\u0004\b$\u0010\u0015R\u001a\u0010%\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010\u0015R\u001a\u0010(\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0013\"\u0004\b*\u0010\u0015R\u001a\u0010+\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010.\"\u0004\b3\u00100R\u001a\u00104\u001a\u00020,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010.\"\u0004\b6\u00100R\u001a\u00107\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\n\"\u0004\b9\u0010:R\u001a\u0010;\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\n\"\u0004\b=\u0010:¨\u0006P"}, d2 = {"Lcom/join/mgps/dto/HomeCloudActiveBean;", "", "firstPlayExpireTime", "", "newGiftExpireTime", "adCfgInfo", "Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;", "<init>", "(JJLcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V", "getFirstPlayExpireTime", "()J", "getNewGiftExpireTime", "getAdCfgInfo", "()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;", "setAdCfgInfo", "(Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V", "ngH", "", "getNgH", "()I", "setNgH", "(I)V", "ngM", "getNgM", "setNgM", "ngS", "getNgS", "setNgS", "fpH", "getFpH", "setFpH", "fpM", "getFpM", "setFpM", "fpS", "getFpS", "setFpS", "uiState", "getUiState", "setUiState", "curUiState", "getCurUiState", "setCurUiState", "giftEnd", "", "getGiftEnd", "()Z", "setGiftEnd", "(Z)V", "firstEnd", "getFirstEnd", "setFirstEnd", "explore", "getExplore", "setExplore", "fTime", "getFTime", "setFTime", "(J)V", "nTime", "getNTime", "setNTime", "format", "", "time", "reset", "", "start", "needShow", "endAll", "currentUIState", "calcTime", "component1", "component2", "component3", "copy", "equals", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class HomeCloudActiveBean {

    @Nullable
    private MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo;
    private int curUiState;
    private boolean explore;
    private long fTime;
    private boolean firstEnd;
    private final long firstPlayExpireTime;
    private int fpH;
    private int fpM;
    private int fpS;
    private boolean giftEnd;
    private long nTime;
    private final long newGiftExpireTime;
    private int ngH;
    private int ngM;
    private int ngS;
    private int uiState;

    public HomeCloudActiveBean(long j10, long j11, @Nullable MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        this.firstPlayExpireTime = j10;
        this.newGiftExpireTime = j11;
        this.adCfgInfo = adCfgInfo;
        this.fTime = j10;
        this.nTime = j11;
    }

    public static /* synthetic */ HomeCloudActiveBean copy$default(HomeCloudActiveBean homeCloudActiveBean, long j10, long j11, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = homeCloudActiveBean.firstPlayExpireTime;
        }
        long j12 = j10;
        if ((i10 & 2) != 0) {
            j11 = homeCloudActiveBean.newGiftExpireTime;
        }
        long j13 = j11;
        if ((i10 & 4) != 0) {
            adCfgInfo = homeCloudActiveBean.adCfgInfo;
        }
        return homeCloudActiveBean.copy(j12, j13, adCfgInfo);
    }

    public final void calcTime() {
        if (!this.giftEnd) {
            long j10 = this.nTime;
            int i10 = (int) (j10 / ((long) 3600));
            this.ngH = i10;
            long j11 = 60;
            this.ngM = (int) ((j10 - ((long) (i10 * 3600))) / j11);
            this.ngS = (int) (j10 % j11);
            if (j10 < 0) {
                this.giftEnd = true;
            }
            this.nTime = j10 - 1;
        }
        if (this.firstEnd) {
            return;
        }
        long j12 = this.fTime;
        int i11 = (int) (j12 / ((long) 3600));
        this.fpH = i11;
        long j13 = 60;
        this.fpM = (int) ((j12 - ((long) (i11 * 3600))) / j13);
        this.fpS = (int) (j12 % j13);
        if (j12 < 0) {
            this.firstEnd = true;
        }
        this.fTime = j12 - 1;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getFirstPlayExpireTime() {
        return this.firstPlayExpireTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getNewGiftExpireTime() {
        return this.newGiftExpireTime;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final MessageCloudGamingAdCfgResponse.AdCfgInfo getAdCfgInfo() {
        return this.adCfgInfo;
    }

    @NotNull
    public final HomeCloudActiveBean copy(long firstPlayExpireTime, long newGiftExpireTime, @Nullable MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        return new HomeCloudActiveBean(firstPlayExpireTime, newGiftExpireTime, adCfgInfo);
    }

    public final int currentUIState() {
        boolean z10 = this.giftEnd;
        if (!z10 && !this.firstEnd) {
            this.curUiState = 3;
        } else if (!z10) {
            this.curUiState = 2;
        } else if (this.firstEnd) {
            this.curUiState = 0;
        } else {
            this.curUiState = 1;
        }
        return this.curUiState;
    }

    public final boolean endAll() {
        return this.giftEnd && this.firstEnd;
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HomeCloudActiveBean)) {
            return false;
        }
        HomeCloudActiveBean homeCloudActiveBean = (HomeCloudActiveBean) other;
        return this.firstPlayExpireTime == homeCloudActiveBean.firstPlayExpireTime && this.newGiftExpireTime == homeCloudActiveBean.newGiftExpireTime && Intrinsics.areEqual(this.adCfgInfo, homeCloudActiveBean.adCfgInfo);
    }

    @NotNull
    public final String format(int time) {
        if (time > 9) {
            return String.valueOf(time);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('0');
        sb2.append(time);
        return sb2.toString();
    }

    @Nullable
    public final MessageCloudGamingAdCfgResponse.AdCfgInfo getAdCfgInfo() {
        return this.adCfgInfo;
    }

    public final int getCurUiState() {
        return this.curUiState;
    }

    public final boolean getExplore() {
        return this.explore;
    }

    public final long getFTime() {
        return this.fTime;
    }

    public final boolean getFirstEnd() {
        return this.firstEnd;
    }

    public final long getFirstPlayExpireTime() {
        return this.firstPlayExpireTime;
    }

    public final int getFpH() {
        return this.fpH;
    }

    public final int getFpM() {
        return this.fpM;
    }

    public final int getFpS() {
        return this.fpS;
    }

    public final boolean getGiftEnd() {
        return this.giftEnd;
    }

    public final long getNTime() {
        return this.nTime;
    }

    public final long getNewGiftExpireTime() {
        return this.newGiftExpireTime;
    }

    public final int getNgH() {
        return this.ngH;
    }

    public final int getNgM() {
        return this.ngM;
    }

    public final int getNgS() {
        return this.ngS;
    }

    public final int getUiState() {
        return this.uiState;
    }

    public int hashCode() {
        int iA = ((a.a(this.firstPlayExpireTime) * 31) + a.a(this.newGiftExpireTime)) * 31;
        MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo = this.adCfgInfo;
        return iA + (adCfgInfo == null ? 0 : adCfgInfo.hashCode());
    }

    public final boolean needShow() {
        return this.newGiftExpireTime > 0 || this.firstPlayExpireTime > 0;
    }

    public final void reset() {
        this.giftEnd = false;
        this.firstEnd = false;
        this.uiState = 0;
        this.curUiState = 0;
    }

    public final void setAdCfgInfo(@Nullable MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo) {
        this.adCfgInfo = adCfgInfo;
    }

    public final void setCurUiState(int i10) {
        this.curUiState = i10;
    }

    public final void setExplore(boolean z10) {
        this.explore = z10;
    }

    public final void setFTime(long j10) {
        this.fTime = j10;
    }

    public final void setFirstEnd(boolean z10) {
        this.firstEnd = z10;
    }

    public final void setFpH(int i10) {
        this.fpH = i10;
    }

    public final void setFpM(int i10) {
        this.fpM = i10;
    }

    public final void setFpS(int i10) {
        this.fpS = i10;
    }

    public final void setGiftEnd(boolean z10) {
        this.giftEnd = z10;
    }

    public final void setNTime(long j10) {
        this.nTime = j10;
    }

    public final void setNgH(int i10) {
        this.ngH = i10;
    }

    public final void setNgM(int i10) {
        this.ngM = i10;
    }

    public final void setNgS(int i10) {
        this.ngS = i10;
    }

    public final void setUiState(int i10) {
        this.uiState = i10;
    }

    public final void start() {
        this.giftEnd = this.newGiftExpireTime <= 0;
        this.firstEnd = this.firstPlayExpireTime <= 0;
    }

    @NotNull
    public String toString() {
        return "HomeCloudActiveBean(firstPlayExpireTime=" + this.firstPlayExpireTime + ", newGiftExpireTime=" + this.newGiftExpireTime + ", adCfgInfo=" + this.adCfgInfo + ')';
    }

    public /* synthetic */ HomeCloudActiveBean(long j10, long j11, MessageCloudGamingAdCfgResponse.AdCfgInfo adCfgInfo, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, (i10 & 2) != 0 ? 0L : j11, adCfgInfo);
    }
}
