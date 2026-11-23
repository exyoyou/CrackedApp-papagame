package com.join.kotlin.base.net;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00060\u0001j\u0002`\u0002B3\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bB\u001b\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/base/net/AppException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errCode", "", "error", "", "errorLog", "throwable", "", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V", "Lcom/join/kotlin/base/net/Error;", "e", "(Lcom/join/kotlin/base/net/Error;Ljava/lang/Throwable;)V", "errorMsg", "getErrorMsg", "()Ljava/lang/String;", "setErrorMsg", "(Ljava/lang/String;)V", "getErrCode", "()I", "setErrCode", "(I)V", "getErrorLog", "setErrorLog", "getThrowable", "()Ljava/lang/Throwable;", "setThrowable", "(Ljava/lang/Throwable;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppException extends Exception {
    private int errCode;

    @Nullable
    private String errorLog;

    @NotNull
    private String errorMsg;

    @Nullable
    private Throwable throwable;

    public AppException(int i10, @Nullable String str, @Nullable String str2, @Nullable Throwable th) {
        super(str);
        str = str == null ? "请求失败，请稍后再试" : str;
        this.errorMsg = str;
        this.errCode = i10;
        this.errorLog = str2 == null ? str : str2;
        this.throwable = th;
    }

    public final int getErrCode() {
        return this.errCode;
    }

    @Nullable
    public final String getErrorLog() {
        return this.errorLog;
    }

    @NotNull
    public final String getErrorMsg() {
        return this.errorMsg;
    }

    @Nullable
    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final void setErrCode(int i10) {
        this.errCode = i10;
    }

    public final void setErrorLog(@Nullable String str) {
        this.errorLog = str;
    }

    public final void setErrorMsg(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.errorMsg = str;
    }

    public final void setThrowable(@Nullable Throwable th) {
        this.throwable = th;
    }

    public /* synthetic */ AppException(int i10, String str, String str2, Throwable th, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, str, (i11 & 4) != 0 ? "" : str2, (i11 & 8) != 0 ? null : th);
    }

    public AppException(@NotNull Error error, @Nullable Throwable th) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.errCode = error.getCode();
        this.errorMsg = error.getErr();
        this.errorLog = th != null ? th.getMessage() : null;
        this.throwable = th;
    }
}
