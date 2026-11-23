package com.join.mgps.dto.hmcloud;

import com.haima.hmcp.widgets.BaseVideoView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/join/mgps/dto/hmcloud/RequestGameCfgInfoArgs;", "", "<init>", "()V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "uid", "", "getUid", "()J", "setUid", "(J)V", BaseVideoView.USER_TOKEN, "getUserToken", "setUserToken", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RequestGameCfgInfoArgs {
    private long uid;

    @NotNull
    private String gameId = "";

    @NotNull
    private String userToken = "";

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    public final long getUid() {
        return this.uid;
    }

    @NotNull
    public final String getUserToken() {
        return this.userToken;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setUid(long j10) {
        this.uid = j10;
    }

    public final void setUserToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userToken = str;
    }
}
