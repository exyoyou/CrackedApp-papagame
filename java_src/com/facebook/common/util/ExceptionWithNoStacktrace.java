package com.facebook.common.util;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class ExceptionWithNoStacktrace extends Exception {
    public ExceptionWithNoStacktrace(String detailMessage) {
        super(detailMessage);
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        return this;
    }
}
