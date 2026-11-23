package com.join.kotlin.ui.netgame.data;

import com.haima.hmcp.widgets.BaseVideoView;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import s5.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J3\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0007HÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/netgame/data/NetGameZoneRequest;", "", "uid", "", BaseVideoView.USER_TOKEN, "", "page", "", "type", "<init>", "(JLjava/lang/String;II)V", "getUid", "()J", "setUid", "(J)V", "getUserToken", "()Ljava/lang/String;", "setUserToken", "(Ljava/lang/String;)V", "getPage", "()I", "setPage", "(I)V", "getType", "setType", "component1", "component2", "component3", "component4", "copy", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class NetGameZoneRequest {
    private int page;
    private int type;
    private long uid;

    @Nullable
    private String userToken;

    public NetGameZoneRequest() {
        this(0L, null, 0, 0, 15, null);
    }

    public static /* synthetic */ NetGameZoneRequest copy$default(NetGameZoneRequest netGameZoneRequest, long j10, String str, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            j10 = netGameZoneRequest.uid;
        }
        long j11 = j10;
        if ((i12 & 2) != 0) {
            str = netGameZoneRequest.userToken;
        }
        String str2 = str;
        if ((i12 & 4) != 0) {
            i10 = netGameZoneRequest.page;
        }
        int i13 = i10;
        if ((i12 & 8) != 0) {
            i11 = netGameZoneRequest.type;
        }
        return netGameZoneRequest.copy(j11, str2, i13, i11);
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

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getType() {
        return this.type;
    }

    @NotNull
    public final NetGameZoneRequest copy(long uid, @Nullable String userToken, int page, int type) {
        return new NetGameZoneRequest(uid, userToken, page, type);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NetGameZoneRequest)) {
            return false;
        }
        NetGameZoneRequest netGameZoneRequest = (NetGameZoneRequest) other;
        return this.uid == netGameZoneRequest.uid && Intrinsics.areEqual(this.userToken, netGameZoneRequest.userToken) && this.page == netGameZoneRequest.page && this.type == netGameZoneRequest.type;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getType() {
        return this.type;
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
        return ((((iA + (str == null ? 0 : str.hashCode())) * 31) + this.page) * 31) + this.type;
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setType(int i10) {
        this.type = i10;
    }

    public final void setUid(long j10) {
        this.uid = j10;
    }

    public final void setUserToken(@Nullable String str) {
        this.userToken = str;
    }

    @NotNull
    public String toString() {
        return "NetGameZoneRequest(uid=" + this.uid + ", userToken=" + this.userToken + ", page=" + this.page + ", type=" + this.type + ')';
    }

    public NetGameZoneRequest(long j10, @Nullable String str, int i10, int i11) {
        this.uid = j10;
        this.userToken = str;
        this.page = i10;
        this.type = i11;
    }

    public /* synthetic */ NetGameZoneRequest(long j10, String str, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0L : j10, (i12 & 2) != 0 ? null : str, (i12 & 4) != 0 ? 1 : i10, (i12 & 8) != 0 ? 0 : i11);
    }
}
