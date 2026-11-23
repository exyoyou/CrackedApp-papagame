package com.join.kotlin.ui.gameexpress.model.request;

import com.haima.hmcp.widgets.BaseVideoView;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/model/request/GameExpressRequest;", "", "uid", "", BaseVideoView.USER_TOKEN, "", "<init>", "(JLjava/lang/String;)V", "getUid", "()J", "setUid", "(J)V", "getUserToken", "()Ljava/lang/String;", "setUserToken", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameExpressRequest {
    private long uid;

    @Nullable
    private String userToken;

    public GameExpressRequest() {
        this(0L, null, 3, null);
    }

    public static /* synthetic */ GameExpressRequest copy$default(GameExpressRequest gameExpressRequest, long j10, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = gameExpressRequest.uid;
        }
        if ((i10 & 2) != 0) {
            str = gameExpressRequest.userToken;
        }
        return gameExpressRequest.copy(j10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getUid() {
        return this.uid;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUserToken() {
        return this.userToken;
    }

    @NotNull
    public final GameExpressRequest copy(long uid, @Nullable String userToken) {
        return new GameExpressRequest(uid, userToken);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameExpressRequest)) {
            return false;
        }
        GameExpressRequest gameExpressRequest = (GameExpressRequest) other;
        return this.uid == gameExpressRequest.uid && Intrinsics.areEqual(this.userToken, gameExpressRequest.userToken);
    }

    public final long getUid() {
        return this.uid;
    }

    @Nullable
    public final String getUserToken() {
        return this.userToken;
    }

    public int hashCode() {
        int iA = a.a(this.uid) * 31;
        String str = this.userToken;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final void setUid(long j10) {
        this.uid = j10;
    }

    public final void setUserToken(@Nullable String str) {
        this.userToken = str;
    }

    @NotNull
    public String toString() {
        return "GameExpressRequest(uid=" + this.uid + ", userToken=" + this.userToken + ')';
    }

    public GameExpressRequest(long j10, @Nullable String str) {
        this.uid = j10;
        this.userToken = str;
    }

    public /* synthetic */ GameExpressRequest(long j10, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, (i10 & 2) != 0 ? null : str);
    }
}
