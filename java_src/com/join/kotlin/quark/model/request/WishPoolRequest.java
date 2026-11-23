package com.join.kotlin.quark.model.request;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0010J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jb\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u0005HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0013\u0010\u0010R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0014\u0010\u0010R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0015\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000e¨\u0006%"}, d2 = {"Lcom/join/kotlin/quark/model/request/WishPoolRequest;", "", "keyword", "", "location", "", "page", "sortType", "status", "type", "uid", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V", "getKeyword", "()Ljava/lang/String;", "getLocation", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPage", "getSortType", "getStatus", "getType", "getUid", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/join/kotlin/quark/model/request/WishPoolRequest;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class WishPoolRequest {

    @Nullable
    private final String keyword;

    @Nullable
    private final Integer location;

    @Nullable
    private final Integer page;

    @Nullable
    private final Integer sortType;

    @Nullable
    private final Integer status;

    @Nullable
    private final Integer type;

    @Nullable
    private final String uid;

    public WishPoolRequest(@Nullable String str, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Integer num4, @Nullable Integer num5, @Nullable String str2) {
        this.keyword = str;
        this.location = num;
        this.page = num2;
        this.sortType = num3;
        this.status = num4;
        this.type = num5;
        this.uid = str2;
    }

    public static /* synthetic */ WishPoolRequest copy$default(WishPoolRequest wishPoolRequest, String str, Integer num, Integer num2, Integer num3, Integer num4, Integer num5, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = wishPoolRequest.keyword;
        }
        if ((i10 & 2) != 0) {
            num = wishPoolRequest.location;
        }
        Integer num6 = num;
        if ((i10 & 4) != 0) {
            num2 = wishPoolRequest.page;
        }
        Integer num7 = num2;
        if ((i10 & 8) != 0) {
            num3 = wishPoolRequest.sortType;
        }
        Integer num8 = num3;
        if ((i10 & 16) != 0) {
            num4 = wishPoolRequest.status;
        }
        Integer num9 = num4;
        if ((i10 & 32) != 0) {
            num5 = wishPoolRequest.type;
        }
        Integer num10 = num5;
        if ((i10 & 64) != 0) {
            str2 = wishPoolRequest.uid;
        }
        return wishPoolRequest.copy(str, num6, num7, num8, num9, num10, str2);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKeyword() {
        return this.keyword;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getLocation() {
        return this.location;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getPage() {
        return this.page;
    }

    @Nullable
    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getSortType() {
        return this.sortType;
    }

    @Nullable
    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getStatus() {
        return this.status;
    }

    @Nullable
    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    @NotNull
    public final WishPoolRequest copy(@Nullable String keyword, @Nullable Integer location, @Nullable Integer page, @Nullable Integer sortType, @Nullable Integer status, @Nullable Integer type, @Nullable String uid) {
        return new WishPoolRequest(keyword, location, page, sortType, status, type, uid);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WishPoolRequest)) {
            return false;
        }
        WishPoolRequest wishPoolRequest = (WishPoolRequest) other;
        return Intrinsics.areEqual(this.keyword, wishPoolRequest.keyword) && Intrinsics.areEqual(this.location, wishPoolRequest.location) && Intrinsics.areEqual(this.page, wishPoolRequest.page) && Intrinsics.areEqual(this.sortType, wishPoolRequest.sortType) && Intrinsics.areEqual(this.status, wishPoolRequest.status) && Intrinsics.areEqual(this.type, wishPoolRequest.type) && Intrinsics.areEqual(this.uid, wishPoolRequest.uid);
    }

    @Nullable
    public final String getKeyword() {
        return this.keyword;
    }

    @Nullable
    public final Integer getLocation() {
        return this.location;
    }

    @Nullable
    public final Integer getPage() {
        return this.page;
    }

    @Nullable
    public final Integer getSortType() {
        return this.sortType;
    }

    @Nullable
    public final Integer getStatus() {
        return this.status;
    }

    @Nullable
    public final Integer getType() {
        return this.type;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    public int hashCode() {
        String str = this.keyword;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.location;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.page;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.sortType;
        int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.status;
        int iHashCode5 = (iHashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.type;
        int iHashCode6 = (iHashCode5 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str2 = this.uid;
        return iHashCode6 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "WishPoolRequest(keyword=" + this.keyword + ", location=" + this.location + ", page=" + this.page + ", sortType=" + this.sortType + ", status=" + this.status + ", type=" + this.type + ", uid=" + this.uid + ')';
    }
}
