package com.join.kotlin.discount.model.bean;

import com.join.mgps.adapter.t4;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b$\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010'\u001a\u00020\tHÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001eJ`\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020\t2\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020.HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\n\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010!\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00060"}, d2 = {"Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;", "", "id", "", "serverName", "server_name", "times", "times_suffix", "subscribe", "", t4.f63189e, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getServerName", "setServerName", "getServer_name", "setServer_name", "getTimes", "setTimes", "getTimes_suffix", "setTimes_suffix", "getSubscribe", "()Z", "setSubscribe", "(Z)V", "getExpire", "()Ljava/lang/Boolean;", "setExpire", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;)Lcom/join/kotlin/discount/model/bean/GameServerInfoBean;", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GameServerInfoBean {

    @Nullable
    private Boolean expire;

    @Nullable
    private String id;

    @Nullable
    private String serverName;

    @Nullable
    private String server_name;
    private boolean subscribe;

    @Nullable
    private String times;

    @Nullable
    private String times_suffix;

    public GameServerInfoBean() {
        this(null, null, null, null, null, false, null, 127, null);
    }

    public static /* synthetic */ GameServerInfoBean copy$default(GameServerInfoBean gameServerInfoBean, String str, String str2, String str3, String str4, String str5, boolean z10, Boolean bool, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = gameServerInfoBean.id;
        }
        if ((i10 & 2) != 0) {
            str2 = gameServerInfoBean.serverName;
        }
        String str6 = str2;
        if ((i10 & 4) != 0) {
            str3 = gameServerInfoBean.server_name;
        }
        String str7 = str3;
        if ((i10 & 8) != 0) {
            str4 = gameServerInfoBean.times;
        }
        String str8 = str4;
        if ((i10 & 16) != 0) {
            str5 = gameServerInfoBean.times_suffix;
        }
        String str9 = str5;
        if ((i10 & 32) != 0) {
            z10 = gameServerInfoBean.subscribe;
        }
        boolean z11 = z10;
        if ((i10 & 64) != 0) {
            bool = gameServerInfoBean.expire;
        }
        return gameServerInfoBean.copy(str, str6, str7, str8, str9, z11, bool);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getServerName() {
        return this.serverName;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getServer_name() {
        return this.server_name;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTimes() {
        return this.times;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTimes_suffix() {
        return this.times_suffix;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getSubscribe() {
        return this.subscribe;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getExpire() {
        return this.expire;
    }

    @NotNull
    public final GameServerInfoBean copy(@Nullable String id2, @Nullable String serverName, @Nullable String server_name, @Nullable String times, @Nullable String times_suffix, boolean subscribe, @Nullable Boolean expire) {
        return new GameServerInfoBean(id2, serverName, server_name, times, times_suffix, subscribe, expire);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GameServerInfoBean)) {
            return false;
        }
        GameServerInfoBean gameServerInfoBean = (GameServerInfoBean) other;
        return Intrinsics.areEqual(this.id, gameServerInfoBean.id) && Intrinsics.areEqual(this.serverName, gameServerInfoBean.serverName) && Intrinsics.areEqual(this.server_name, gameServerInfoBean.server_name) && Intrinsics.areEqual(this.times, gameServerInfoBean.times) && Intrinsics.areEqual(this.times_suffix, gameServerInfoBean.times_suffix) && this.subscribe == gameServerInfoBean.subscribe && Intrinsics.areEqual(this.expire, gameServerInfoBean.expire);
    }

    @Nullable
    public final Boolean getExpire() {
        return this.expire;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getServerName() {
        return this.serverName;
    }

    @Nullable
    public final String getServer_name() {
        return this.server_name;
    }

    public final boolean getSubscribe() {
        return this.subscribe;
    }

    @Nullable
    public final String getTimes() {
        return this.times;
    }

    @Nullable
    public final String getTimes_suffix() {
        return this.times_suffix;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.serverName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.server_name;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.times;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.times_suffix;
        int iHashCode5 = (((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + a.a(this.subscribe)) * 31;
        Boolean bool = this.expire;
        return iHashCode5 + (bool != null ? bool.hashCode() : 0);
    }

    public final void setExpire(@Nullable Boolean bool) {
        this.expire = bool;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setServerName(@Nullable String str) {
        this.serverName = str;
    }

    public final void setServer_name(@Nullable String str) {
        this.server_name = str;
    }

    public final void setSubscribe(boolean z10) {
        this.subscribe = z10;
    }

    public final void setTimes(@Nullable String str) {
        this.times = str;
    }

    public final void setTimes_suffix(@Nullable String str) {
        this.times_suffix = str;
    }

    @NotNull
    public String toString() {
        return "GameServerInfoBean(id=" + this.id + ", serverName=" + this.serverName + ", server_name=" + this.server_name + ", times=" + this.times + ", times_suffix=" + this.times_suffix + ", subscribe=" + this.subscribe + ", expire=" + this.expire + ')';
    }

    public GameServerInfoBean(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, boolean z10, @Nullable Boolean bool) {
        this.id = str;
        this.serverName = str2;
        this.server_name = str3;
        this.times = str4;
        this.times_suffix = str5;
        this.subscribe = z10;
        this.expire = bool;
    }

    public /* synthetic */ GameServerInfoBean(String str, String str2, String str3, String str4, String str5, boolean z10, Boolean bool, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? "" : str2, (i10 & 4) != 0 ? "" : str3, (i10 & 8) != 0 ? "" : str4, (i10 & 16) == 0 ? str5 : "", (i10 & 32) != 0 ? false : z10, (i10 & 64) != 0 ? Boolean.FALSE : bool);
    }
}
