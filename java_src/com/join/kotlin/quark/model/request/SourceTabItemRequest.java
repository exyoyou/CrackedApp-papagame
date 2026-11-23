package com.join.kotlin.quark.model.request;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/quark/model/request/SourceTabItemRequest;", "", "uid", "", "<init>", "(Ljava/lang/Integer;)V", "getUid", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "copy", "(Ljava/lang/Integer;)Lcom/join/kotlin/quark/model/request/SourceTabItemRequest;", "equals", "", AdnName.OTHER, "hashCode", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class SourceTabItemRequest {

    @Nullable
    private final Integer uid;

    public SourceTabItemRequest(@Nullable Integer num) {
        this.uid = num;
    }

    public static /* synthetic */ SourceTabItemRequest copy$default(SourceTabItemRequest sourceTabItemRequest, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = sourceTabItemRequest.uid;
        }
        return sourceTabItemRequest.copy(num);
    }

    @Nullable
    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getUid() {
        return this.uid;
    }

    @NotNull
    public final SourceTabItemRequest copy(@Nullable Integer uid) {
        return new SourceTabItemRequest(uid);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof SourceTabItemRequest) && Intrinsics.areEqual(this.uid, ((SourceTabItemRequest) other).uid);
    }

    @Nullable
    public final Integer getUid() {
        return this.uid;
    }

    public int hashCode() {
        Integer num = this.uid;
        if (num == null) {
            return 0;
        }
        return num.hashCode();
    }

    @NotNull
    public String toString() {
        return "SourceTabItemRequest(uid=" + this.uid + ')';
    }
}
