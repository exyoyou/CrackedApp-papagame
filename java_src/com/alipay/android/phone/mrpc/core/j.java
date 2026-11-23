package com.alipay.android.phone.mrpc.core;

import android.os.Looper;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public final class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadLocal<Object> f6935d = new ThreadLocal<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ThreadLocal<Map<String, Object>> f6936e = new ThreadLocal<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte f6937a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicInteger f6938b = new AtomicInteger();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f6939c;

    public j(h hVar) {
        this.f6939c = hVar;
    }

    public final Object a(Method method, Object[] objArr) {
        if (Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalThreadStateException("can't in main thread call rpc .");
        }
        com.alipay.mobile.framework.service.annotation.a aVar = (com.alipay.mobile.framework.service.annotation.a) method.getAnnotation(com.alipay.mobile.framework.service.annotation.a.class);
        boolean z10 = method.getAnnotation(com.alipay.mobile.framework.service.annotation.b.class) != null;
        Type genericReturnType = method.getGenericReturnType();
        method.getAnnotations();
        ThreadLocal<Object> threadLocal = f6935d;
        threadLocal.set(null);
        ThreadLocal<Map<String, Object>> threadLocal2 = f6936e;
        threadLocal2.set(null);
        if (aVar == null) {
            throw new IllegalStateException("OperationType must be set.");
        }
        String strA = aVar.a();
        int iIncrementAndGet = this.f6938b.incrementAndGet();
        try {
            if (this.f6937a == 0) {
                com.alipay.android.phone.mrpc.core.a.e eVar = new com.alipay.android.phone.mrpc.core.a.e(iIncrementAndGet, strA, objArr);
                if (threadLocal2.get() != null) {
                    eVar.a(threadLocal2.get());
                }
                byte[] bArr = (byte[]) new x(this.f6939c.f6930a, method, iIncrementAndGet, strA, eVar.a(), z10).a();
                threadLocal2.set(null);
                Object objA = new com.alipay.android.phone.mrpc.core.a.d(genericReturnType, bArr).a();
                if (genericReturnType != Void.TYPE) {
                    threadLocal.set(objA);
                }
            }
            return threadLocal.get();
        } catch (c e10) {
            e10.a(strA);
            throw e10;
        }
    }
}
