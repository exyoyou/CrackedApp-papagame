package com.join.kotlin.quark.model.request;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ&\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/quark/model/request/SourceWantRequest;", "", "uid", "", "wishPoolId", "", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "getUid", "()Ljava/lang/String;", "getWishPoolId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Integer;)Lcom/join/kotlin/quark/model/request/SourceWantRequest;", "equals", "", AdnName.OTHER, "hashCode", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SourceWantRequest {

    @Nullable
    private final String uid;

    @Nullable
    private final Integer wishPoolId;

    public SourceWantRequest(@Nullable String str, @Nullable Integer num) {
        this.uid = str;
        this.wishPoolId = num;
    }

    public static /* synthetic */ SourceWantRequest copy$default(SourceWantRequest sourceWantRequest, String str, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = sourceWantRequest.uid;
        }
        if ((i10 & 2) != 0) {
            num = sourceWantRequest.wishPoolId;
        }
        return sourceWantRequest.copy(str, num);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getWishPoolId() {
        return this.wishPoolId;
    }

    @NotNull
    public final SourceWantRequest copy(@Nullable String uid, @Nullable Integer wishPoolId) {
        return new SourceWantRequest(uid, wishPoolId);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SourceWantRequest)) {
            return false;
        }
        SourceWantRequest sourceWantRequest = (SourceWantRequest) other;
        return Intrinsics.areEqual(this.uid, sourceWantRequest.uid) && Intrinsics.areEqual(this.wishPoolId, sourceWantRequest.wishPoolId);
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
        String str = this.uid;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.wishPoolId;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "SourceWantRequest(uid=" + this.uid + ", wishPoolId=" + this.wishPoolId + ')';
    }
}
