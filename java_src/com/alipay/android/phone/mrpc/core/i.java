package com.alipay.android.phone.mrpc.core;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements InvocationHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected u f6932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Class<?> f6933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected j f6934d;

    public i(u uVar, Class<?> cls, j jVar) {
        this.f6932b = uVar;
        this.f6933c = cls;
        this.f6934d = jVar;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        return this.f6934d.a(method, objArr);
    }
}
