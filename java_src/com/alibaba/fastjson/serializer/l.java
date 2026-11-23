package com.alibaba.fastjson.serializer;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes7.dex */
public abstract class l implements u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<v0> f6716a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal<Character> f6717b = new ThreadLocal<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Character f6718c = Character.valueOf(StringUtil.COMMA);

    final char d(v0 v0Var, Object obj, char c10) {
        ThreadLocal<v0> threadLocal = f6716a;
        threadLocal.set(v0Var);
        ThreadLocal<Character> threadLocal2 = f6717b;
        threadLocal2.set(Character.valueOf(c10));
        e(obj);
        threadLocal.set(null);
        return threadLocal2.get().charValue();
    }

    public abstract void e(Object obj);

    protected final void f(String str, Object obj) {
        v0 v0Var = f6716a.get();
        ThreadLocal<Character> threadLocal = f6717b;
        char cCharValue = threadLocal.get().charValue();
        v0Var.M(cCharValue, str, obj);
        if (cCharValue != ',') {
            threadLocal.set(f6718c);
        }
    }
}
