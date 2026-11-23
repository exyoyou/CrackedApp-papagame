package com.join.kotlin.base.net;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H&J\r\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&¨\u0006\r"}, d2 = {"Lcom/join/kotlin/base/net/BaseResponse;", "T", "", "<init>", "()V", "isSuccess", "", "getResponseData", "()Ljava/lang/Object;", "getResponseCode", "", "getResponseMsg", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseResponse<T> {
    public abstract int getResponseCode();

    public abstract T getResponseData();

    @NotNull
    public abstract String getResponseMsg();

    public abstract boolean isSuccess();
}
