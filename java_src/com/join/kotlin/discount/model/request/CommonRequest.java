package com.join.kotlin.discount.model.request;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/discount/model/request/CommonRequest;", "", "gameId", "", "page", "", "<init>", "(Ljava/lang/String;I)V", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "getPage", "()I", "setPage", "(I)V", "component1", "component2", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class CommonRequest {

    @Nullable
    private String gameId;
    private int page;

    public CommonRequest(@Nullable String str, int i10) {
        this.gameId = str;
        this.page = i10;
    }

    public static /* synthetic */ CommonRequest copy$default(CommonRequest commonRequest, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = commonRequest.gameId;
        }
        if ((i11 & 2) != 0) {
            i10 = commonRequest.page;
        }
        return commonRequest.copy(str, i10);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGameId() {
        return this.gameId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final CommonRequest copy(@Nullable String gameId, int page) {
        return new CommonRequest(gameId, page);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CommonRequest)) {
            return false;
        }
        CommonRequest commonRequest = (CommonRequest) other;
        return Intrinsics.areEqual(this.gameId, commonRequest.gameId) && this.page == commonRequest.page;
    }

    @Nullable
    public final String getGameId() {
        return this.gameId;
    }

    public final int getPage() {
        return this.page;
    }

    public int hashCode() {
        String str = this.gameId;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.page;
    }

    public final void setGameId(@Nullable String str) {
        this.gameId = str;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    @NotNull
    public String toString() {
        return "CommonRequest(gameId=" + this.gameId + ", page=" + this.page + ')';
    }
}
