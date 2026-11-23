package com.join.mgps.dto.hmcloud;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/join/mgps/dto/hmcloud/HMGameConfig;", "", "<init>", "()V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "opConfig", "Lcom/join/mgps/dto/hmcloud/HMOpConfig;", "getOpConfig", "()Lcom/join/mgps/dto/hmcloud/HMOpConfig;", "setOpConfig", "(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V", "commonConfig", "Lcom/join/mgps/dto/hmcloud/HMCommonConfig;", "getCommonConfig", "()Lcom/join/mgps/dto/hmcloud/HMCommonConfig;", "setCommonConfig", "(Lcom/join/mgps/dto/hmcloud/HMCommonConfig;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMGameConfig {

    @Nullable
    private HMCommonConfig commonConfig;

    @Nullable
    private String gameId;

    @Nullable
    private HMOpConfig opConfig;

    @Nullable
    public final HMCommonConfig getCommonConfig() {
        return this.commonConfig;
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    public final HMOpConfig getOpConfig() {
        return this.opConfig;
    }

    public final void setCommonConfig(@Nullable HMCommonConfig hMCommonConfig) {
        this.commonConfig = hMCommonConfig;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }

    public final void setOpConfig(@Nullable HMOpConfig hMOpConfig) {
        this.opConfig = hMOpConfig;
    }
}
