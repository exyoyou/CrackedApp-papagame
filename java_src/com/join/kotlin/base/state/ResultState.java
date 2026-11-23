package com.join.kotlin.base.state;

import com.join.kotlin.base.net.AppException;
import com.kwad.sdk.api.model.AdnName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u0005*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0004\u0005\u0006\u0007\bB\t\b\u0004¢\u0006\u0004\b\u0003\u0010\u0004\u0082\u0001\u0003\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/join/kotlin/base/state/ResultState;", "T", "", "<init>", "()V", "Companion", "Loading", "Success", "Error", "Lcom/join/kotlin/base/state/ResultState$Error;", "Lcom/join/kotlin/base/state/ResultState$Loading;", "Lcom/join/kotlin/base/state/ResultState$Success;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ResultState<T> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\b\u0010\u0007\u001a\u0004\u0018\u0001H\u0006¢\u0006\u0002\u0010\bJ\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u001c\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00060\u0005\"\u0004\b\u0001\u0010\u00062\u0006\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, d2 = {"Lcom/join/kotlin/base/state/ResultState$Companion;", "", "<init>", "()V", "onRequestSuccess", "Lcom/join/kotlin/base/state/ResultState;", "T", "data", "(Ljava/lang/Object;)Lcom/join/kotlin/base/state/ResultState;", "onRequestLoading", "loadingMessage", "", "onRequestError", "error", "Lcom/join/kotlin/base/net/AppException;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final <T> ResultState<T> onRequestError(@NotNull AppException error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error(error);
        }

        @NotNull
        public final <T> ResultState<T> onRequestLoading(@NotNull String loadingMessage) {
            Intrinsics.checkNotNullParameter(loadingMessage, "loadingMessage");
            return new Loading(loadingMessage);
        }

        @NotNull
        public final <T> ResultState<T> onRequestSuccess(@Nullable T data) {
            return new Success(data);
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/base/state/ResultState$Error;", "Lcom/join/kotlin/base/state/ResultState;", "", "error", "Lcom/join/kotlin/base/net/AppException;", "<init>", "(Lcom/join/kotlin/base/net/AppException;)V", "getError", "()Lcom/join/kotlin/base/net/AppException;", "component1", "copy", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Error extends ResultState {

        @NotNull
        private final AppException error;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(@NotNull AppException error) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        public static /* synthetic */ Error copy$default(Error error, AppException appException, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                appException = error.error;
            }
            return error.copy(appException);
        }

        @NotNull
        /* JADX INFO: renamed from: component1, reason: from getter */
        public final AppException getError() {
            return this.error;
        }

        @NotNull
        public final Error copy(@NotNull AppException error) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error(error);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.areEqual(this.error, ((Error) other).error);
        }

        @NotNull
        public final AppException getError() {
            return this.error;
        }

        public int hashCode() {
            return this.error.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(error=" + this.error + ')';
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/base/state/ResultState$Loading;", "Lcom/join/kotlin/base/state/ResultState;", "", "loadingMessage", "", "<init>", "(Ljava/lang/String;)V", "getLoadingMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Loading extends ResultState {

        @NotNull
        private final String loadingMessage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Loading(@NotNull String loadingMessage) {
            super(null);
            Intrinsics.checkNotNullParameter(loadingMessage, "loadingMessage");
            this.loadingMessage = loadingMessage;
        }

        public static /* synthetic */ Loading copy$default(Loading loading, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = loading.loadingMessage;
            }
            return loading.copy(str);
        }

        @NotNull
        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLoadingMessage() {
            return this.loadingMessage;
        }

        @NotNull
        public final Loading copy(@NotNull String loadingMessage) {
            Intrinsics.checkNotNullParameter(loadingMessage, "loadingMessage");
            return new Loading(loadingMessage);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Loading) && Intrinsics.areEqual(this.loadingMessage, ((Loading) other).loadingMessage);
        }

        @NotNull
        public final String getLoadingMessage() {
            return this.loadingMessage;
        }

        public int hashCode() {
            return this.loadingMessage.hashCode();
        }

        @NotNull
        public String toString() {
            return "Loading(loadingMessage=" + this.loadingMessage + ')';
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0002B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00018\u0001HÆ\u0003¢\u0006\u0002\u0010\u0007J \u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0001HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0015\u0010\u0003\u001a\u0004\u0018\u00018\u0001¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/base/state/ResultState$Success;", "T", "Lcom/join/kotlin/base/state/ResultState;", "data", "<init>", "(Ljava/lang/Object;)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/join/kotlin/base/state/ResultState$Success;", "equals", "", AdnName.OTHER, "", "hashCode", "", "toString", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Success<T> extends ResultState<T> {

        @Nullable
        private final T data;

        public Success(@Nullable T t10) {
            super(null);
            this.data = t10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Success copy$default(Success success, Object obj, int i10, Object obj2) {
            if ((i10 & 1) != 0) {
                obj = success.data;
            }
            return success.copy(obj);
        }

        @Nullable
        public final T component1() {
            return this.data;
        }

        @NotNull
        public final Success<T> copy(@Nullable T data) {
            return new Success<>(data);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Success) && Intrinsics.areEqual(this.data, ((Success) other).data);
        }

        @Nullable
        public final T getData() {
            return this.data;
        }

        public int hashCode() {
            T t10 = this.data;
            if (t10 == null) {
                return 0;
            }
            return t10.hashCode();
        }

        @NotNull
        public String toString() {
            return "Success(data=" + this.data + ')';
        }
    }

    public /* synthetic */ ResultState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private ResultState() {
    }
}
