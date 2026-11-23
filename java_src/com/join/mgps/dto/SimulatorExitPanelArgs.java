package com.join.mgps.dto;

import com.haima.hmcp.widgets.BaseVideoView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/join/mgps/dto/SimulatorExitPanelArgs;", "", "<init>", "()V", "gameId", "", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "uid", "getUid", "setUid", BaseVideoView.USER_TOKEN, "getUserToken", "setUserToken", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SimulatorExitPanelArgs {

    @NotNull
    private String gameId = "";

    @NotNull
    private String uid = "0";

    @NotNull
    private String userToken = "";

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final String getUid() {
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

    public final void setUid(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.uid = str;
    }

    public final void setUserToken(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userToken = str;
    }
}
