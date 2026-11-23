package com.join.kotlin.base.net.stateCallback;

import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002BM\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0015\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0004HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0004HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\u0013J\\\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0000HÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u00042\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000eR\u0015\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006#"}, d2 = {"Lcom/join/kotlin/base/net/stateCallback/DataUiState;", "T", "", "isSuccess", "", "errMessage", "", "isRefresh", "isEmpty", "hasMore", "isFirstEmpty", "data", "<init>", "(ZLjava/lang/String;ZZZZLjava/lang/Object;)V", "()Z", "getErrMessage", "()Ljava/lang/String;", "getHasMore", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(ZLjava/lang/String;ZZZZLjava/lang/Object;)Lcom/join/kotlin/base/net/stateCallback/DataUiState;", "equals", AdnName.OTHER, "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class DataUiState<T> {

    @Nullable
    private final T data;

    @NotNull
    private final String errMessage;
    private final boolean hasMore;
    private final boolean isEmpty;
    private final boolean isFirstEmpty;
    private final boolean isRefresh;
    private final boolean isSuccess;

    public DataUiState(boolean z10, @NotNull String errMessage, boolean z11, boolean z12, boolean z13, boolean z14, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(errMessage, "errMessage");
        this.isSuccess = z10;
        this.errMessage = errMessage;
        this.isRefresh = z11;
        this.isEmpty = z12;
        this.hasMore = z13;
        this.isFirstEmpty = z14;
        this.data = t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DataUiState copy$default(DataUiState dataUiState, boolean z10, String str, boolean z11, boolean z12, boolean z13, boolean z14, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            z10 = dataUiState.isSuccess;
        }
        if ((i10 & 2) != 0) {
            str = dataUiState.errMessage;
        }
        String str2 = str;
        if ((i10 & 4) != 0) {
            z11 = dataUiState.isRefresh;
        }
        boolean z15 = z11;
        if ((i10 & 8) != 0) {
            z12 = dataUiState.isEmpty;
        }
        boolean z16 = z12;
        if ((i10 & 16) != 0) {
            z13 = dataUiState.hasMore;
        }
        boolean z17 = z13;
        if ((i10 & 32) != 0) {
            z14 = dataUiState.isFirstEmpty;
        }
        boolean z18 = z14;
        if ((i10 & 64) != 0) {
            obj = dataUiState.data;
        }
        return dataUiState.copy(z10, str2, z15, z16, z17, z18, obj);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    @NotNull
    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getErrMessage() {
        return this.errMessage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsEmpty() {
        return this.isEmpty;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final boolean getHasMore() {
        return this.hasMore;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getIsFirstEmpty() {
        return this.isFirstEmpty;
    }

    @Nullable
    public final T component7() {
        return this.data;
    }

    @NotNull
    public final DataUiState<T> copy(boolean isSuccess, @NotNull String errMessage, boolean isRefresh, boolean isEmpty, boolean hasMore, boolean isFirstEmpty, @Nullable T data) {
        Intrinsics.checkNotNullParameter(errMessage, "errMessage");
        return new DataUiState<>(isSuccess, errMessage, isRefresh, isEmpty, hasMore, isFirstEmpty, data);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DataUiState)) {
            return false;
        }
        DataUiState dataUiState = (DataUiState) other;
        return this.isSuccess == dataUiState.isSuccess && Intrinsics.areEqual(this.errMessage, dataUiState.errMessage) && this.isRefresh == dataUiState.isRefresh && this.isEmpty == dataUiState.isEmpty && this.hasMore == dataUiState.hasMore && this.isFirstEmpty == dataUiState.isFirstEmpty && Intrinsics.areEqual(this.data, dataUiState.data);
    }

    @Nullable
    public final T getData() {
        return this.data;
    }

    @NotNull
    public final String getErrMessage() {
        return this.errMessage;
    }

    public final boolean getHasMore() {
        return this.hasMore;
    }

    public int hashCode() {
        int iA = ((((((((((a.a(this.isSuccess) * 31) + this.errMessage.hashCode()) * 31) + a.a(this.isRefresh)) * 31) + a.a(this.isEmpty)) * 31) + a.a(this.hasMore)) * 31) + a.a(this.isFirstEmpty)) * 31;
        T t10 = this.data;
        return iA + (t10 == null ? 0 : t10.hashCode());
    }

    public final boolean isEmpty() {
        return this.isEmpty;
    }

    public final boolean isFirstEmpty() {
        return this.isFirstEmpty;
    }

    public final boolean isRefresh() {
        return this.isRefresh;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    @NotNull
    public String toString() {
        return "DataUiState(isSuccess=" + this.isSuccess + ", errMessage=" + this.errMessage + ", isRefresh=" + this.isRefresh + ", isEmpty=" + this.isEmpty + ", hasMore=" + this.hasMore + ", isFirstEmpty=" + this.isFirstEmpty + ", data=" + this.data + ')';
    }

    public /* synthetic */ DataUiState(boolean z10, String str, boolean z11, boolean z12, boolean z13, boolean z14, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, (i10 & 2) != 0 ? "" : str, (i10 & 4) != 0 ? false : z11, (i10 & 8) != 0 ? false : z12, (i10 & 16) != 0 ? false : z13, (i10 & 32) == 0 ? z14 : false, (i10 & 64) != 0 ? null : obj);
    }
}
