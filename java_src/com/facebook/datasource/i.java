package com.facebook.datasource;

import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class i<T> extends AbstractDataSource<T> {
    private i() {
    }

    public static <T> i<T> u() {
        return new i<>();
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean n(Throwable throwable) {
        return super.n((Throwable) com.facebook.common.internal.i.i(throwable));
    }

    @Override // com.facebook.datasource.AbstractDataSource
    public boolean q(float progress) {
        return super.q(progress);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.datasource.AbstractDataSource
    public boolean setResult(T value, boolean isLast, Map<String, Object> extras) {
        return super.setResult(com.facebook.common.internal.i.i(value), isLast, extras);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean setResult(T value) {
        return super.setResult(com.facebook.common.internal.i.i(value), true, null);
    }
}
