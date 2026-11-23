package com.join.mgps.dto.hmcloud;

import com.sigmob.sdk.base.common.a;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\tR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMCommonConfig;", "", "<init>", "()V", "currentResolutionInfo", "", "getCurrentResolutionInfo", "()Ljava/lang/String;", "setCurrentResolutionInfo", "(Ljava/lang/String;)V", "brightness", "", "getBrightness", "()Ljava/lang/Integer;", "setBrightness", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "viewRatio", "getViewRatio", "setViewRatio", a.f78892z, "", "getMute", "()Ljava/lang/Boolean;", "setMute", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "isLatencyOn", "setLatencyOn", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMCommonConfig {

    @Nullable
    private Integer brightness;

    @Nullable
    private String currentResolutionInfo;

    @Nullable
    private Boolean isLatencyOn;

    @Nullable
    private Boolean mute;

    @Nullable
    private String viewRatio;

    @Nullable
    public final Integer getBrightness() {
        return this.brightness;
    }

    @Nullable
    public final String getCurrentResolutionInfo() {
        return this.currentResolutionInfo;
    }

    @Nullable
    public final Boolean getMute() {
        return this.mute;
    }

    @Nullable
    public final String getViewRatio() {
        return this.viewRatio;
    }

    @Nullable
    /* JADX INFO: renamed from: isLatencyOn, reason: from getter */
    public final Boolean getIsLatencyOn() {
        return this.isLatencyOn;
    }

    public final void setBrightness(@Nullable Integer num) {
        this.brightness = num;
    }

    public final void setCurrentResolutionInfo(@Nullable String str) {
        this.currentResolutionInfo = str;
    }

    public final void setLatencyOn(@Nullable Boolean bool) {
        this.isLatencyOn = bool;
    }

    public final void setMute(@Nullable Boolean bool) {
        this.mute = bool;
    }

    public final void setViewRatio(@Nullable String str) {
        this.viewRatio = str;
    }
}
