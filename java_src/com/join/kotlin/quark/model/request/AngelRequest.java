package com.join.kotlin.quark.model.request;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\rJ2\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/quark/model/request/AngelRequest;", "", "diskUrl", "", "uid", "wishPoolId", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getDiskUrl", "()Ljava/lang/String;", "getUid", "getWishPoolId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/join/kotlin/quark/model/request/AngelRequest;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AngelRequest {

    @Nullable
    private final String diskUrl;

    @Nullable
    private final String uid;

    @Nullable
    private final Integer wishPoolId;

    public AngelRequest(@Nullable String str, @Nullable String str2, @Nullable Integer num) {
        this.diskUrl = str;
        this.uid = str2;
        this.wishPoolId = num;
    }

    public static /* synthetic */ AngelRequest copy$default(AngelRequest angelRequest, String str, String str2, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = angelRequest.diskUrl;
        }
        if ((i10 & 2) != 0) {
            str2 = angelRequest.uid;
        }
        if ((i10 & 4) != 0) {
            num = angelRequest.wishPoolId;
        }
        return angelRequest.copy(str, str2, num);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDiskUrl() {
        return this.diskUrl;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getWishPoolId() {
        return this.wishPoolId;
    }

    @NotNull
    public final AngelRequest copy(@Nullable String diskUrl, @Nullable String uid, @Nullable Integer wishPoolId) {
        return new AngelRequest(diskUrl, uid, wishPoolId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AngelRequest)) {
            return false;
        }
        AngelRequest angelRequest = (AngelRequest) other;
        return Intrinsics.areEqual(this.diskUrl, angelRequest.diskUrl) && Intrinsics.areEqual(this.uid, angelRequest.uid) && Intrinsics.areEqual(this.wishPoolId, angelRequest.wishPoolId);
    }

    @Nullable
    public final String getDiskUrl() {
        return this.diskUrl;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    public final Integer getWishPoolId() {
        return this.wishPoolId;
    }

    public int hashCode() {
        String str = this.diskUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.uid;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.wishPoolId;
        return iHashCode2 + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "AngelRequest(diskUrl=" + this.diskUrl + ", uid=" + this.uid + ", wishPoolId=" + this.wishPoolId + ')';
    }
}
