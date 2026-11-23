package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    u f6930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f6931b = new j(this);

    public h(u uVar) {
        this.f6930a = uVar;
    }

    private u a() {
        return this.f6930a;
    }

    private <T> T b(Class<T> cls) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new i(this.f6930a, cls, this.f6931b));
    }
}
