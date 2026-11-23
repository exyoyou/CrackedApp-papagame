package com.join.mgps.dto;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/join/mgps/dto/HMPlaytimeSignInInfo;", "", "<init>", "()V", "totalTime", "", "getTotalTime", "()Ljava/lang/String;", "setTotalTime", "(Ljava/lang/String;)V", "vipTime", "getVipTime", "setVipTime", "freeTime", "getFreeTime", "setFreeTime", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMPlaytimeSignInInfo {

    @Nullable
    private String freeTime;

    @Nullable
    private String totalTime;

    @Nullable
    private String vipTime;

    @Nullable
    public final String getFreeTime() {
        return this.freeTime;
    }

    @Nullable
    public final String getTotalTime() {
        return this.totalTime;
    }

    @Nullable
    public final String getVipTime() {
        return this.vipTime;
    }

    public final void setFreeTime(@Nullable String str) {
        this.freeTime = str;
    }

    public final void setTotalTime(@Nullable String str) {
        this.totalTime = str;
    }

    public final void setVipTime(@Nullable String str) {
        this.vipTime = str;
    }
}
