package com.join.kotlin.base.net;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import org.jetbrains.annotations.NotNull;
import t7.a;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000f"}, d2 = {"Lcom/join/kotlin/base/net/Error;", "", "code", "", NotificationCompat.CATEGORY_ERROR, "", "<init>", "(Ljava/lang/String;IILjava/lang/String;)V", a.f97139c, "PARSE_ERROR", "NETWORK_ERROR", "SSL_ERROR", "TIMEOUT_ERROR", "getValue", "getKey", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum Error {
    UNKNOWN(1000, "请求失败，请稍后再试"),
    PARSE_ERROR(1001, "解析错误，请稍后再试"),
    NETWORK_ERROR(1002, "网络连接错误，请稍后重试"),
    SSL_ERROR(1004, "证书出错，请稍后再试"),
    TIMEOUT_ERROR(1006, "网络连接超时，请稍后重试");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final int code;

    @NotNull
    private final String err;

    Error(int i10, String str) {
        this.code = i10;
        this.err = str;
    }

    @NotNull
    public static EnumEntries<Error> getEntries() {
        return $ENTRIES;
    }

    /* JADX INFO: renamed from: getKey, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    @NotNull
    /* JADX INFO: renamed from: getValue, reason: from getter */
    public final String getErr() {
        return this.err;
    }
}
